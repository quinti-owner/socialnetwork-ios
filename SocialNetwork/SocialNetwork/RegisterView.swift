//
//  RegisterView.swift
//  SocialNetwork
//
//  Created by matsumotoyuina on 2022/12/15.
//

import SwiftUI

struct RegisterView: View {
    var body: some View {
        VStack {
            Text("かんたん登録")
                .padding(EdgeInsets(
                                top: 10,        // 上の余白
                                leading: 0,    // 左の余白
                                bottom: 50,     // 下の余白
                                trailing: 100    // 右の余白
                            ))
            Button(action: {
                // action
            }) {
                HStack {
                    Image("Docomo")
                        .resizable()
                        .frame(width: 50.0, alignment: .leading)
                    Text("dアカウントで登録")
                }
            }
            .frame(width: 350, height: 50)
            .foregroundColor(.white)
            .background(.red)
            Text("dアカウント新規作成はこちら\n携帯電話がドコモ以外でも登録可能です")
            
            Button(action: {
                // action
            }) {
                HStack {
                    Image("Facebook")
                        .resizable()
                        .frame(width: 50.0, alignment: .leading)
                    Text("Facebookで登録")
                }
            }
                .frame(width: 350, height: 50)
                .foregroundColor(.white)
                .background(.blue)
            Button(action: {
                // action
            }) {
                HStack {
                    Image("Google")
                        .resizable()
                        .frame(width: 50.0, alignment: .leading)
                    Text("Googleで登録")
                }
            }
                .frame(width: 350, height: 50)
                .foregroundColor(.white)
                .background(.blue)
            Button(action: {
                // action
            }) {
                HStack {
                    Image("Twitter")
                        .resizable()
                        .frame(width: 50.0, alignment: .leading)
                    Text("Twitterで登録")
                }
            }
                .frame(width: 350, height: 50)
                .foregroundColor(.white)
                .background(.blue)
            Button("メールアドレスで会員登録"){}
                .frame(width: 350, height: 50)
                .foregroundColor(.white)
                .background(.green)
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
