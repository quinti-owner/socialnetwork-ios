//
//  ValidationUtil.swift
//  SocialNetwork
//
//  Created by 古堅ニノスカ on 2022/12/29.
//

import Foundation

/// メールアドレスとして入力されたテキストが正しい形式になっているかチェックする機能
/// パスワードとして入力されたテキストが仕様の要件を満たして形になっているかチェックする機能
final class ValidationUtil {
    // 正規表現: メールアドレス
    private static let EMAIL = "^[a-zA-Z0-9_.+-]+@([a-zA-Z0-9][a-zA-Z0-9-]*[a-zA-Z0-9]*\\.)+[a-zA-Z]{2,}$"
    // 使用可能な文字
    private static let AVAILABLE_LETTERS = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[]^_{|}"
    // 英字
    private static let ALPHABET = Array("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ")
    // 数字
    static let DIGIT = Array("0123456789")
    // 記号
    private static let SIMBOL = Array("!\"#$%&'()*+,-./:;<=>?@[]^_{|}")
    // 英字小文字
    private static let ALPHABET_LOWERCASE = Array("abcdefghijklmnopqrstuvwxyz")
    // 英字大文字
    private static let ALPHABET_UPPERCASE = Array("ABCDEFGHIJKLMNOPQRSTUVWXYZ")
    
    // コンストラクタ
    private init() {}
    
    /// メールアドレス形式にマッチするか確認
    /// - Parameters:
    ///   - email: メールアドレス
    /// - Returns:
    ///   - true: マッチする, false: マッチしない
    static func checkMatchesWithEmail(email: String) -> Bool {
        return NSPredicate(format: "SELF MATCHES %@", ValidationUtil.EMAIL).evaluate(with: email)
    }
    
    /// パスワードに使用可能な組み合わせにマッチするか確認
    /// - Parameters:
    ///   - email: メールアドレス
    ///   - password: パスワード
    /// - Returns:
    ///   - true: マッチする, false: マッチしない
    static func checkMatchesWithPassword(email: String, password: String) -> PasswordValidateResult {
        var passwordValidateResult = PasswordValidateResult()
        if checkCorrectNumberOfletters(password: password) {
            if checkUseAvailableLetters(password: password) &&
                checkUseTwoCombinations(password: password) &&
                checkNotUsingSameLetter(password: password) {
                passwordValidateResult.matchesWithPassword = true
            } else {
                passwordValidateResult.usingAvailableLettersError = true
            }
        } else {
            passwordValidateResult.correctNumberOfLettersError = true
        }
        return passwordValidateResult
    }
    
    /// パスワード文字数制限の範囲内か確認
    /// - Parameters:
    ///   - password: パスワード
    /// - Returns:
    ///   - true: 範囲内, false: 範囲外
    private static func checkCorrectNumberOfletters(password: String) -> Bool {
        if password.count >= 8 && password.count <= 64 {
            return true
        } else {
            return false
        }
    }
    
    /// パスワードに使用可能な文字を使用しているか確認
    /// - Parameters:
    ///   - password: パスワード
    /// - Returns:
    ///   - true: 使用可能な文字を使用, false: 使用不可な文字を使用
    private static func checkUseAvailableLetters(password: String) -> Bool {
        let passwordArray = Array(password)
        for i in 0..<password.count {
            if ValidationUtil.AVAILABLE_LETTERS.contains(passwordArray[i]) == false {
                return false
            }
        }
        return true
    }
    
    /// パスワードに「 英, 数字, 記号 」から2つ以上使用しているか確認
    /// - Parameters:
    ///   - password: パスワード
    /// - Returns:
    ///   - true: 2つ以上使用, false: 使用していない
    private static func checkUseTwoCombinations(password: String) -> Bool {
        var usingTwoCombinations = false
        var combinationsCount = 0
        // 英字使用
        for i in 0..<ValidationUtil.ALPHABET.count {
            if password.contains(ValidationUtil.ALPHABET[i]) {
                combinationsCount += 1
                break
            }
        }
        // 数字使用
        for i in 0..<ValidationUtil.DIGIT.count {
            if password.contains(ValidationUtil.DIGIT[i]) {
                combinationsCount += 1
                break
            }
        }
        // 記号使用
        for i in 0..<ValidationUtil.SIMBOL.count {
            if password.contains(ValidationUtil.SIMBOL[i]) {
                combinationsCount += 1
                break
            }
        }
        // 2種類以上使用の場合trueを代入
        if combinationsCount >= 2 {
            usingTwoCombinations = true
        }
        return usingTwoCombinations
    }
    
    /// パスワードに同じ文字を連続で4つ以上使用していないことを確認
    /// - Parameters:
    ///   - password: パスワード
    /// - Returns:
    ///   - true: 連続で使用, false: 使用していない
    private static func checkNotUsingSameLetter(password: String) -> Bool {
        var notUsingSameLetter = true
        // 隣合わせ英字小文字連続使用
        for i in 0..<(ValidationUtil.ALPHABET_LOWERCASE.count - 3) {
            if password.contains(ValidationUtil.ALPHABET_LOWERCASE[i ..< i + 4]) {
                notUsingSameLetter = false
                break
            }
        }
        // 隣合わせ英字大文字連続使用
        for i in 0..<(ValidationUtil.ALPHABET_UPPERCASE.count - 3) {
            if password.contains(ValidationUtil.ALPHABET_UPPERCASE[i ..< i + 4]) {
                notUsingSameLetter = false
                break
            }
        }
        // 隣合わせ数字連続使用
        for i in 0..<(ValidationUtil.DIGIT.count - 3) {
            if password.contains(ValidationUtil.DIGIT[i ..< i + 4]) {
                notUsingSameLetter = false
                break
            }
        }
        //-----------------
        
        // 同じ英字小文字連続使用
        for i in 0..<ValidationUtil.ALPHABET_LOWERCASE.count {
            var tmp = ""
            for _ in 0..<4 {
                tmp += ValidationUtil.ALPHABET_LOWERCASE[i].description
            }
            if password.contains(tmp) {
                notUsingSameLetter = false
            }
        }
        // 同じ英字大文字連続使用
        for i in 0..<ValidationUtil.ALPHABET_UPPERCASE.count {
            var tmp = ""
            for _ in 0..<4 {
                tmp += ValidationUtil.ALPHABET_UPPERCASE[i].description
            }
            if password.contains(tmp) {
                notUsingSameLetter = false
            }
        }
        // 同じ数字連続使用
        for i in 0..<ValidationUtil.DIGIT.count {
            var tmp = ""
            for _ in 0..<4 {
                tmp += ValidationUtil.DIGIT[i].description
            }
            if password.contains(tmp) {
                notUsingSameLetter = false
            }
        }
        // 同じ記号連続使用
        for _ in 0..<ValidationUtil.SIMBOL.count {
            var tmp = ""
            for i in 0..<4 {
                tmp += ValidationUtil.SIMBOL[i].description
            }
            if password.contains(tmp) {
                notUsingSameLetter = false
            }
        }
        //-----------------
  
        return notUsingSameLetter
    }
    
    /// パスワードにメールアドレスのローカルと一致する文字が含まれていないことを確認
    /// - Parameters:
    ///   - email: メールアドレス
    ///   - password: パスワード
    /// - Returns:
    ///   - true: 含まれていない, false: 含まれている
    private static func checkNotContainEmailLocal(email: String, password: String) -> Bool {
        if let index = email.firstIndex(of: "@") {
            // パスワードに"@"が含まれている場合"@"よりも前を抽出してpasswordに含まれているか確認
            let local = email[email.startIndex..<index].description
            if password.contains(local) {
                return false
            } else {
                return true
            }
        } else {
            // パスワードに"@"が含まれていない場合emailのテキストがそのままpasswordに含まれているか確認
            if password.contains(email) {
                return false
            } else {
                return true
            }
        }
    }
}

struct PasswordValidateResult {
    var matchesWithPassword = false
    // 使用可能な文字数の範囲外エラー
    var correctNumberOfLettersError = false
    // 使用可能な文字以外の文字を使用エラー
    var usingAvailableLettersError = false
}
