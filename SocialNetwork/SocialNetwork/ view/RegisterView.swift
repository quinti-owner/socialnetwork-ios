//
//  RegisterView.swift
//  SocialNetwork
//
//  Created by matsumotoyuina on 2022/12/15.
//

import SwiftUI
import Combine

// アカウント作成画面
struct RegisterView: View {
    // メールアドレス
    @State var email = ""
    // パスワード
    @State var password = ""
    // 登録ボタン活性状態
    @State var isRegisterBtnDisable = true
    // メールアドレスエラーメッセージ表示
    @State var isEmailErrorMsgVisible = false
    // パスワードエラーメッセージ表示
    @State var isPasswordErrorMsgVisible = false
    // パスワード文字数制限の範囲内状況
    @State var correctNumberOfLettersError = false
    // パスワードに使用可能な文字を使用状況
    @State var usingAvailableLettersError = false
    // アカウント登録APIから正常レスポンス
    private var registerSuccess = true
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                TextField("メールアドレス", text: $email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .textContentType(.emailAddress)
                    .keyboardType(.emailAddress)
                    .onChange(of: email, perform: { newValue in
                        // メールアドレス、パスワードどちらか未入力であれば非活性とする
                        if !email.trimmingCharacters(in: .whitespaces).isEmpty && !password.trimmingCharacters(in: .whitespaces).isEmpty {
                            isRegisterBtnDisable = false
                        } else {
                            isRegisterBtnDisable = true
                        }
                    })
                if isEmailErrorMsgVisible {
                    Label("メールアドレスが正しくありません", systemImage: "info.circle.fill")
                        .font(.caption)
                        .foregroundColor(.red)
                }
                SecureTextField("パスワード", password: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .textContentType(.password)
                    .keyboardType(.alphabet)
                    .onChange(of: password, perform: { newValue in
                        // メールアドレス、パスワードどちらか未入力であれば非活性とする
                        if !email.trimmingCharacters(in: .whitespaces).isEmpty && !password.trimmingCharacters(in: .whitespaces).isEmpty {
                            isRegisterBtnDisable = false
                        } else {
                            isRegisterBtnDisable = true
                        }
                    })
                if isPasswordErrorMsgVisible {
                    Label("パスワードが正しくありません。入力し直してください。", systemImage: "info.circle.fill")
                        .font(.caption)
                        .foregroundColor(.red)
                }
                if registerSuccess == false {
                    Label("アカウントの作成が失敗しました", systemImage: "info.circle.fill")
                        .font(.caption)
                        .foregroundColor(.red)
                }
                Text("8文字〜64文字で入力してください")
                    .padding(.top, 1.0)
                    .font(.footnote)
                    .foregroundColor(ColorUtil.passwordHintColor(error: correctNumberOfLettersError))
                Text("半角英数、数字、記号を2つ以上組み合わせてください\n※ 記号は下記のものを使用できます。\n\t!\"#$%&'()*+,-./:;<=>?@[]^_{|}")
                    .padding(.top, 1.0)
                    .font(.footnote)
                    .foregroundColor(ColorUtil.passwordHintColor(error: usingAvailableLettersError))
            }
            .padding()
            Button("登録") {
                // メールアドレスとパスワードのどちらのバリデーションチェックがOKな場合ログインAPIをたたく
                let passwordValidateResult = ValidationUtil.checkMatchesWithPassword(email: email, password: password)
                correctNumberOfLettersError = passwordValidateResult.correctNumberOfLettersError
                usingAvailableLettersError = passwordValidateResult.usingAvailableLettersError
                if ValidationUtil.checkMatchesWithEmail(email: email) && passwordValidateResult.matchesWithPassword  {
                    isEmailErrorMsgVisible = false
                    isPasswordErrorMsgVisible = false
                    // ユーザー登録APIをたたく
                } else {
                    if ValidationUtil.checkMatchesWithEmail(email: email) == false {
                        isEmailErrorMsgVisible = true
                    } else {
                        isEmailErrorMsgVisible = false
                    }
                    if passwordValidateResult.matchesWithPassword == false {
                        isPasswordErrorMsgVisible = true
                    } else {
                        isPasswordErrorMsgVisible = false
                    }
                }
            }
            .frame(width: 200, height: 50, alignment: .center)
            .background(.gray)
            .cornerRadius(10.0)
            .disabled(isRegisterBtnDisable)
            .foregroundColor(ColorUtil.btnTextColor(disable: isRegisterBtnDisable))
            Spacer(minLength: 50)
            Button(action: {
                // action
            }) {
                HStack {
                    Image(systemName: "facebook")
                        .resizable()
                        .frame(width: 50.0, alignment: .leading)
                    Text("Facebookで会員登録")
                }
            }
                .frame(width: 350, height: 50)
                .foregroundColor(.white)
                .background(.blue)
            Button(action: {
                // action
            }) {
                HStack {
                    Image(systemName: "google")
                        .resizable()
                        .frame(width: 50.0, alignment: .leading)
                    Text("Googleで会員登録")
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
                    Text("Twitterで会員登録")
                }
            }
                .frame(width: 350, height: 50)
                .foregroundColor(.white)
                .background(.blue)
        }
    }
}

// ワンパスコード確認画面
struct OnePassCodeView: View {
    // TextFieldのラベルの表示状態
    @State var isLabelVisible = false
    // ワンパスコードテキスト
    @State var onePassCode = ""
    // ワンパスコードを入力するTextFieldがフォーカス状態
    @State var isOnPassTextFieldFocuse = false
    // 次へボタン活性状態
    @State var isNextBtnDisable = true
    // ワンパスコード確認APIから正常レスポンス
    private var isOnePassCodeSuccess = true
    
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                if isLabelVisible {
                    Text("確認コード")
                        .foregroundColor(.blue)
                }
                TextField("確認コード (6桁の数字)", text: $onePassCode)
                    .onReceive(Just(onePassCode), perform: { newValue in
                        // 数字しか入力できないように制御
                        let filtered = newValue.filter { Set(ValidationUtil.DIGIT).contains($0) }
                        if filtered != newValue {
                            self.onePassCode = filtered
                        }
                    })
                    .onReceive(Just(onePassCode)) { _ in
                        // 6桁以上の数字を入力できないように制御
                        if onePassCode.count > 6 {
                            onePassCode = String(onePassCode.prefix(6))
                        }
                    }
                    .onChange(of: onePassCode, perform: { newValue in
                        // 数字が入力されたら下線の色を変更
                        if onePassCode.isEmpty {
                            isOnPassTextFieldFocuse = false
                        } else {
                            if onePassCode.count == 6 {
                                isNextBtnDisable = false
                            } else {
                                isNextBtnDisable = true
                            }
                            isOnPassTextFieldFocuse = true
                        }
                    })
                Divider()
                    .frame(height: 1.5)
                    .background(ColorUtil.onePassDividerColor(focused: isOnPassTextFieldFocuse))
                if isOnePassCodeSuccess == false {
                    Label("確認コードが正しくありません。", systemImage: "info.circle.fill")
                        .font(.caption)
                        .foregroundColor(.red)
                }
                Text("ご登録されたメールアドレス宛にメール確認コードを送信しました。メールに記載されている【6桁の数字】を入力してください。")
                    .font(.footnote)
                    .padding(.top)
                HStack {
                    Button("メールを再送信") {
                        // メールを再送信するAPIをたたく
                    }
                    .foregroundColor(.blue)
                    Spacer()
                    Button("次へ") {
                    }
                    .frame(width: 100, height: 50, alignment: .center)
                    .foregroundColor(.white)
                    .background(ColorUtil.btnBackgroundColor(disable: isNextBtnDisable))
                    .cornerRadius(10.0)
                    .disabled(isNextBtnDisable)
                }
            }
            .padding(.top, 100)
            .padding(.horizontal)
            Spacer()
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        OnePassCodeView()
    }
}
