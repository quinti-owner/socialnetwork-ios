//
//  loginView.swift
//  SocialNetwork
//
//  Created by matsumotoyuina on 2022/12/15.
//

import SwiftUI

struct StartView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: RegisterView().navigationTitle("新規登録").navigationBarTitleDisplayMode(.inline)) {
                    Text("新規登録")
                        .frame(width: 350, height: 50)
                        .foregroundColor(Color(.systemPink))
                        .background(Color(.white))
                        .cornerRadius(24)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color(.systemPink), lineWidth: 1.0)
                        )
                }
                Text("※18歳未満（高校生を含む）の方はご利用いただけません")
                    .padding(.vertical, 20.0)
                
                NavigationLink(destination: LoginView().navigationTitle("ログイン").navigationBarTitleDisplayMode(.inline)) {
                    Text("ログイン")
                        .frame(width: 350, height: 50)
                        .foregroundColor(Color(.white))
                        .background(Color(.systemPink))
                        .cornerRadius(24)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color(.systemPink), lineWidth: 1.0)
                        )
                }
                HStack {
                    NavigationLink(destination: LoginView().navigationTitle("利用規約").navigationBarTitleDisplayMode(.inline)) {
                        Text("利用規約")
                            .foregroundColor(Color(.systemPink))
                    }
                    NavigationLink(destination: LoginView().navigationTitle("プライバシーポリシー").navigationBarTitleDisplayMode(.inline)) {
                        Text("プライバシーポリシー")
                            .foregroundColor(Color(.systemPink))
                    }
                    .padding(.leading, 50.0)
                    .foregroundColor(.pink)
                }
                .padding(.top, 20.0)
                
            }
        }
    }
    
}
struct lStartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}
