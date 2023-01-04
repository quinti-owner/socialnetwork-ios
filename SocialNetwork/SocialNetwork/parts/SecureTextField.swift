//
//  SecureTextField.swift
//  SocialNetwork
//
//  Created by 古堅ニノスカ on 2022/12/28.
//

import SwiftUI

// パスワード入力のためのTextField
struct SecureTextField: View {
    
    @Binding private var password: String
    @State private var isSecured: Bool = true
    private var title: String
    
    init(_ title: String, password: Binding<String>) {
        self.title = title
        self._password = password
    }
    
    var body: some View {
        ZStack(alignment: .trailing) {
            Group {
                if isSecured {
                    SecureField(title, text: $password)
                } else {
                    TextField(title, text: $password)
                }
            }.padding(.trailing, 10)

            Button(action: {
                isSecured.toggle()
            }) {
                Image(systemName: self.isSecured ? "eye.slash" : "eye")
                    .accentColor(.gray)
            }.padding(10)
        }
    }
}

struct SecureTextField_Previews: PreviewProvider {
    
    @State static var password = ""
    
    static var previews: some View {
        SecureTextField("パスワード", password: $password)
            .font(.caption)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .keyboardType(.emailAddress)
            .autocapitalization(.none)
            .cornerRadius(5)
    }
}
