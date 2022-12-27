//
//  SecretsRepository.swift
//  SocialNetwork
//
//  Created by 古堅ニノスカ on 2022/12/24.
//

import Foundation

/// シークレットのリポジトリクラス
/// シークレットの保存、取得ができる
///
/// - Author: daniel
///
class SecretsRepository {
    /// インスタンス
    static let shared = SecretsRepository()
    /// プライベートコンストラクタ
    private init() {}
    /// キーチェンに保存するサービスタイプ
    private static let SERVICE_TYPE = "refresh-token"
    /// キーチェンに保存するシークレットの登録アカウントタイプ
    private static let ACCOUNT_TYPE = "account-registration-type-email"
    
    /// シークレットの保存
    /// - Parameters:
    ///   - secret: リフレッシュトークン
    func write(secret: String) -> Bool {
        // シークレットとして保存しようとしているテキストの空チェック
        if secret.isEmpty {
            print("secretとして保存しようとしたテキストが空です。")
            return false;
        }
        // シークレットをBase64でエンコード
        let base64EncodedSecret = secret.data(using: .utf8)?.base64EncodedData()
        guard let base64EncodedSecret = base64EncodedSecret else {
            return false
        }
        // 保存するクエリ
        let query = [
            // kSecValueData: A key that represents the data being saved to the keychain.
            kSecValueData: base64EncodedSecret,
            // kSecClass: A key that represents the type of data being saved. Here we set its value as kSecClassGenericPassword indicating that the data we are saving is a generic password item.
            kSecClass: kSecClassGenericPassword,
            // kSecAttrService and kSecAttrAccount: These 2 keys are mandatory when kSecClass is set to kSecClassGenericPassword. The values for both of these keys will act as the primary key for the data being saved.
            kSecAttrService: SecretsRepository.SERVICE_TYPE,
            kSecAttrAccount: SecretsRepository.ACCOUNT_TYPE,
        ] as CFDictionary
        
        // シークレットが既に保存されているか確認する
        let matchingStatus = SecItemCopyMatching(query, nil)
        // シークレット保存済みチェック後をハンドリング
        switch matchingStatus {
            // データが存在しない場合は保存
        case errSecItemNotFound:
            let status = SecItemAdd(query, nil)
            return status == noErr
            
            // データが存在する場合は更新
        case errSecSuccess:
            SecItemUpdate(query, [kSecValueData as String: base64EncodedSecret] as CFDictionary)
            return true
            
            // デフォルトはキーチェンへの保存が失敗した場合のログを出力
        default:
            print("Failed to save data to keychain")
            return false
        }
    }
    
    /// シークレットを取得
    func read() -> String? {
        // キーチェンの検索に使うクエリ
        let query = [
            kSecAttrService: SecretsRepository.SERVICE_TYPE,
            kSecAttrAccount: SecretsRepository.ACCOUNT_TYPE,
            kSecClass: kSecClassGenericPassword,
            kSecReturnData: true
        ] as CFDictionary
        // キーチェンからのシークレット取得結果
        var result: AnyObject?
        SecItemCopyMatching(query, &result)
        if let data = (result as? Data) {
            // base64形式のシークレットをデコード
            let base64DecodedSecret = Data(base64Encoded: String(data: data, encoding: .utf8)!)!
            // キーチェンからシークレットを取得
            return String(data: base64DecodedSecret, encoding: .utf8)
        } else {
            print("キーチェンからリフレッシュトークンを取得できませんでした。")
            return nil
        }
    }
    
    /// シークレットトークンを削除
    func delete() -> Bool {
        // キーチェンの検索に使うクエリ
        let query = [
            kSecAttrService: SecretsRepository.SERVICE_TYPE,
            kSecAttrAccount: SecretsRepository.ACCOUNT_TYPE,
            kSecClass: kSecClassGenericPassword,
        ] as CFDictionary
        // キーチェンからのシークレット取得結果
        let status = SecItemDelete(query)
        return status == noErr
    }
}
