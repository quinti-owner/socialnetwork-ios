//
//  SwiftUIView.swift
//  SocialNetwork
//
//  Created by matsumotoyuina on 2022/12/15.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        VStack {
            Text("かんたんログイン")
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
                    Text("dアカウントでログイン")
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
                    Text("Facebookでログイン")
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
                    Text("Googleでログイン")
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
                    Text("Twitterでログイン")
                }
            }
                .frame(width: 350, height: 50)
                .foregroundColor(.white)
                .background(.blue)
            Button("メールアドレスでログイン"){}
                .frame(width: 350, height: 50)
                .foregroundColor(.green)
                .background(.white)
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
