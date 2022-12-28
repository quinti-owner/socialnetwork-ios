//
//  Main.swift
//  SocialNetwork
//
//  Created by 古堅ニノスカ on 2022/12/14.
//

import SwiftUI

struct Main: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    NavigationLink(destination: StartView().navigationTitle("Introduction画面").navigationBarTitleDisplayMode(.inline)) {
                        Text("Introduction画面")
                            .frame(width: 200, height: 50)
                            .background(.gray)
                            .foregroundColor(.black)
                            .cornerRadius(10.0)
                    }
                    NavigationLink(destination: ContentView().navigationTitle("アカウント登録画面").navigationBarTitleDisplayMode(.inline)) {
                        Text("アカウント登録画面")
                            .frame(width: 200, height: 50)
                            .background(.gray)
                            .foregroundColor(.black)
                            .cornerRadius(10.0)
                    }
                    NavigationLink(destination: ContentView().navigationTitle("6桁確認コード画面").navigationBarTitleDisplayMode(.inline)) {
                        Text("6桁確認コード画面")
                            .frame(width: 200, height: 50)
                            .background(.gray)
                            .foregroundColor(.black)
                            .cornerRadius(10.0)
                    }
                    NavigationLink(destination: ContentView().navigationTitle("ユーザー情報登録確認画面").navigationBarTitleDisplayMode(.inline)) {
                        Text("ユーザー情報登録確認画面")
                            .frame(width: 200, height: 50)
                            .background(.gray)
                            .foregroundColor(.black)
                            .cornerRadius(10.0)
                    }
                    NavigationLink(destination: ContentView().navigationTitle("ログイン画面").navigationBarTitleDisplayMode(.inline)) {
                        Text("ログイン画面")
                            .frame(width: 200, height: 50)
                            .background(.gray)
                            .foregroundColor(.black)
                            .cornerRadius(10.0)
                    }
                    NavigationLink(destination: ContentView().navigationTitle("パスワード変更画面").navigationBarTitleDisplayMode(.inline)) {
                        Text("パスワード変更画面")
                            .frame(width: 200, height: 50)
                            .background(.gray)
                            .foregroundColor(.black)
                            .cornerRadius(10.0)
                    }
                    NavigationLink(destination: ContentView().navigationTitle("アカウント削除画面").navigationBarTitleDisplayMode(.inline)) {
                        Text("アカウント削除画面")
                            .frame(width: 200, height: 50)
                            .background(.gray)
                            .foregroundColor(.black)
                            .cornerRadius(10.0)
                    }
                }
                VStack {
                    Button(action: {
                        print("\(AccessTokenRepository.shared.write(accessToken: "Mario"))")
                    }, label: {
                        Text("AccesToken保存")
                            .frame(width: 200, height: 50)
                            .background(.gray)
                            .foregroundColor(.black)
                            .cornerRadius(10.0)
                    })
                    Button(action: {
                        print("\(AccessTokenRepository.shared.read()!)")
                    }, label: {
                        Text("AccesToken取得")
                            .frame(width: 200, height: 50)
                            .background(.gray)
                            .foregroundColor(.black)
                            .cornerRadius(10.0)
                    })
                    Button(action: {
                        print("\(RefreshTokenRepository.shared.write(refreshToken: "Luigi"))")
                    }, label: {
                        Text("RefreshToken保存")
                            .frame(width: 200, height: 50)
                            .background(.gray)
                            .foregroundColor(.black)
                            .cornerRadius(10.0)
                    })
                    Button(action: {
                        print("\(RefreshTokenRepository.shared.read()!)")
                    }, label: {
                        Text("RefreshToken取得")
                            .frame(width: 200, height: 50)
                            .background(.gray)
                            .foregroundColor(.black)
                            .cornerRadius(10.0)
                    })
                    Button(action: {
                        print("\(SecretsRepository.shared.write(secret: "Koppa"))")
                    }, label: {
                        Text("Secret保存")
                            .frame(width: 200, height: 50)
                            .background(.gray)
                            .foregroundColor(.black)
                            .cornerRadius(10.0)
                    })
                    Button(action: {
                        print("\(SecretsRepository.shared.read()!)")
                    }, label: {
                        Text("Secret取得")
                            .frame(width: 200, height: 50)
                            .background(.gray)
                            .foregroundColor(.black)
                            .cornerRadius(10.0)
                    })
                    NavigationLink(destination: PrivacyPolicyTermsServiceView(webSite: .termsService)) {
                        Text("利用規約画面")
                            .frame(width: 200, height: 50)
                            .background(.gray)
                            .foregroundColor(.black)
                            .cornerRadius(10.0)
                    }
                    NavigationLink(destination: PrivacyPolicyTermsServiceView(webSite: .privacyPolicy)) {
                        Text("プライバシーポリシー画面")
                            .frame(width: 200, height: 50)
                            .background(.gray)
                            .foregroundColor(.black)
                            .cornerRadius(10.0)
                    }
                }
        }
        .navigationTitle("デバッグ画面")
        .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct Main_Previews: PreviewProvider {
    static var previews: some View {
        Main()
    }
}
