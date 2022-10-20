//
//  RefreshTokenKeyChain.swift
//  SocialNetwork
//
//  Created by matsumotoyuina on 2022/10/10.
//

import Foundation

class RefreshTokenKeyChain {
    
    static let shared = RefreshTokenKeyChain()
    private init() {}
    
    func save(_ data: Data, service: String, account: String) -> Bool {
        let query = [
            // キーチェーンに保存されるデータを表すキー。
            kSecValueData: data,
            // 保存されるデータのタイプを表すキー。kSecClassGenericPasswordは、保存するデータが一般的なパスワード項目であることを示す値を設定します。
            kSecClass: kSecClassGenericPassword,
            //kSecAttrServiceand:がに設定されているkSecAttrAccount場合、これら2つのキーは必須です。これらの両方のキーの値は、保存されるデータの主キーとして機能します。つまり、後でキーチェーンから保存されたデータを取得するためにそれらを使用します。kSecClasskSecClassGenericPassword
            kSecAttrService: service,
            kSecAttrAccount: account,
        ] as CFDictionary
        
        let matchingStatus = SecItemCopyMatching(query, nil)
        switch matchingStatus {
        case errSecItemNotFound:
            // データが存在しない場合は保存
            let status = SecItemAdd(query, nil)
            return status == noErr
        case errSecSuccess:
            // データが存在する場合は更新
            SecItemUpdate(query, [kSecValueData as String: data] as CFDictionary)
            return true
        default:
            print("Failed to save data to keychain")
            return false
        }
    }
    
    func read(service: String, account: String) -> String? {
        let query = [
            kSecAttrService: service,
            kSecAttrAccount: account,
            kSecClass: kSecClassGenericPassword,
            kSecReturnData: true
        ] as CFDictionary
        
        var result: AnyObject?
        SecItemCopyMatching(query, &result)
        
        if let data = (result as? Data) {
            return String(data: data, encoding: .utf8)
        } else {
            return nil
        }
    }
    
    func delete(service: String, account: String) -> Bool {
        let query = [
            kSecAttrService: service,
            kSecAttrAccount: account,
            kSecClass: kSecClassGenericPassword,
        ] as CFDictionary
        
        let status = SecItemDelete(query)
        return status == noErr
    }
}
