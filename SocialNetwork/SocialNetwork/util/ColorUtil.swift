//
//  ColorUtil.swift
//  SocialNetwork
//
//  Created by 古堅ニノスカ on 2023/01/03.
//

import SwiftUI

final class ColorUtil {
    
    // コンストラクタ
    private init() {}
    
    // 活性・非活性になるボタンの文字の色
    static func btnTextColor(disable: Bool) -> Color {
        return disable ? .black.opacity(0.2) : .black
    }
    
    // パスワードに使用できる文字のヒントメッセージの色
    static func passwordHintColor(error: Bool) -> Color {
        return error ? .red: .gray
    }
    
    // ワンパスの下線の色
    static func onePassDividerColor(focused: Bool) -> Color {
        return focused ? .blue: .gray
    }
    
    // 活性・非活性になるボタンの背景の色
    static func btnBackgroundColor(disable: Bool) -> Color {
        return disable ? .gray : .blue
    }
}
