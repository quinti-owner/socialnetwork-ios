//
//  Log.swift
//  SocialNetwork
//
//  Created by daniel on 2022/09/18.
//

import os

/// LoggerのUtilクラス
/// debugのとき全てのログを出力する
/// releaseのときwarning以上のログレベルを出力する
///
/// - Author: daniel
///
class Log {
    
    /// プライベートコンストラクタ
    private init() { }
    
    private static let logger = Logger(subsystem: "jp.iridge.test.logger", category: "main")
    
    /// 一時的な出絵バッグに使用
    /// - Parameters:
    ///   - msg: ログメッセージ
    static func n(msg: String) {
        #if DEBUG
        logger.notice("\(msg)")
        #endif
    }
    
    /// デバッグ用に使用
    /// - Parameters:
    ///   - msg: ログメッセージ
    static func d(msg: String) {
        #if DEBUG
        logger.debug("\(msg)")
        #endif
    }
    
    /// 情報系ログに使用
    /// - Parameters:
    ///   - msg: ログメッセージ
    static func i(msg: String) {
        #if DEBUG
        logger.info("\(msg)")
        #endif
    }
    
    /// 警告系のログに使用
    /// - Parameters:
    ///   - msg: ログメッセージ
    static func w(msg: String) {
        logger.warning("\(msg)")
    }
    
    /// エラーログに使用
    /// - Parameters:
    ///   - msg: ログメッセージ
    static func e(msg: String) {
        logger.error("\(msg)")
    }
    
    /// 重大な問題が起こった場合に使用
    /// - Parameters:
    ///   - msg: ログメッセージ
    static func c(msg: String) {
        logger.critical("\(msg)")
    }
}
