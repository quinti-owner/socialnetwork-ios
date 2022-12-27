//
//  AccessTokenRepository.swift
//  SocialNetwork
//
//  Created by 古堅ニノスカ on 2022/12/24.
//

import Foundation

/// アクセストークンのリポジトリクラス
/// アクセストークンの保存、取得ができる
///
/// - Author: daniel
///
class AccessTokenRepository {
    /// インスタンス
    static let shared = AccessTokenRepository()
    /// プライベートコンストラクタ
    private init() {}
    /// キーチェンに保存するサービスタイプ
    private static let SERVICE_TYPE = "access-token"
    /// キーチェンに保存するアクセストークンの登録アカウントタイプ
    private static let ACCOUNT_TYPE = "account-registration-type-email"

    /// アクセストークンの保存
    /// - Parameters:
    ///   - accessToken: アクセストークン
    func write(accessToken: String) -> Bool {
        // アクセストークンとして保存しようとしているテキストの空チェック
        if accessToken.isEmpty {
            print("accessTokenとして保存しようとしたテキストが空です。")
            return false;
        }
        // 保存するクエリ
        let query = [
            // kSecValueData: A key that represents the data being saved to the keychain.
            kSecValueData: accessToken.data(using: .utf8)!,
            // kSecClass: A key that represents the type of data being saved. Here we set its value as kSecClassGenericPassword indicating that the data we are saving is a generic password item.
            kSecClass: kSecClassGenericPassword,
            // kSecAttrService and kSecAttrAccount: These 2 keys are mandatory when kSecClass is set to kSecClassGenericPassword. The values for both of these keys will act as the primary key for the data being saved.
            kSecAttrService: AccessTokenRepository.SERVICE_TYPE,
            kSecAttrAccount: AccessTokenRepository.ACCOUNT_TYPE,
        ] as CFDictionary

        // アクセストークンが既に保存されているか確認する
        let matchingStatus = SecItemCopyMatching(query, nil)
        // アクセストークン保存済みチェック後をハンドリング
        switch matchingStatus {
            // データが存在しない場合は保存
        case errSecItemNotFound:
            let status = SecItemAdd(query, nil)
            return status == noErr
            
            // データが存在する場合は更新
        case errSecSuccess:
            SecItemUpdate(query, [kSecValueData as String: accessToken] as CFDictionary)
            return true
            
            // デフォルトはキーチェンへの保存が失敗した場合のログを出力
        default:
            print("Failed to save data to keychain")
            return false
        }
    }

    /// アクセストークンを取得
    func read() -> String? {
        // キーチェンの検索に使うクエリ
        let query = [
            kSecAttrService: AccessTokenRepository.SERVICE_TYPE,
            kSecAttrAccount: AccessTokenRepository.ACCOUNT_TYPE,
            kSecClass: kSecClassGenericPassword,
            kSecReturnData: true
        ] as CFDictionary
        // キーチェンからのアクセストークン取得結果
        var accessToken: AnyObject?
        SecItemCopyMatching(query, &accessToken)
        if let data = (accessToken as? Data) {
            // キーチェンからアクセストークンを取得
            return String(data: data, encoding: .utf8)
        } else {
            print("キーチェンからアクセストークンを取得できませんでした。")
            return nil
        }
    }

    /// アクセストークンを削除
    func delete() -> Bool {
        // キーチェンの検索に使うクエリ
        let query = [
            kSecAttrService: AccessTokenRepository.SERVICE_TYPE,
            kSecAttrAccount: AccessTokenRepository.ACCOUNT_TYPE,
            kSecClass: kSecClassGenericPassword,
        ] as CFDictionary
        // キーチェンからのアクセストークン取得結果
        let status = SecItemDelete(query)
        return status == noErr
    }
}
