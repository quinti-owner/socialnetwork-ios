//
//  SwiftUIView.swift
//  SocialNetwork
//
//  Created by matsumotoyuina on 2022/12/15.
//

import SwiftUI

/// ログイン画面
struct LoginView: View {
    // メールアドレス
    @State var email = ""
    // パスワード
    @State var password = ""
    // ログインボタン活性状態
    @State var isLoginBtnDisable = true
    // メールアドレスエラーメッセージ表示
    @State var isEmailErrorMsgVisible = false
    // パスワードエラーメッセージ表示
    @State var isPasswordErrorMsgVisible = false
    // ログインAPIから正常レスポンス
    private var loginSuccess = true
    
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
                            isLoginBtnDisable = false
                        } else {
                            isLoginBtnDisable = true
                        }
                    })
                if isEmailErrorMsgVisible {
                    Label("有効なメールアドレスを入力してください", systemImage: "info.circle.fill")
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
                            isLoginBtnDisable = false
                        } else {
                            isLoginBtnDisable = true
                        }
                    })
                if isPasswordErrorMsgVisible {
                    Label("パスワードが正しくありません。入力し直してください。\n「パスワードをお忘れの場合」から再設定できます。", systemImage: "info.circle.fill")
                        .font(.caption)
                        .foregroundColor(.red)
                }
                if loginSuccess == false {
                    Label("アカウントが見つかりませんでした", systemImage: "info.circle.fill")
                        .font(.caption)
                        .foregroundColor(.red)
                }
            }
            .padding()
            Button("ログイン") {
                // メールアドレスとパスワードのどちらのバリデーションチェックがOKな場合ログインAPIをたたく
                if ValidationUtil.checkMatchesWithEmail(email: email) && ValidationUtil.checkMatchesWithPassword(email: email, password: password).matchesWithPassword  {
                    isEmailErrorMsgVisible = false
                    isPasswordErrorMsgVisible = false
                    // ログインAPIをたたく
                } else {
                    if ValidationUtil.checkMatchesWithEmail(email: email) == false {
                        isEmailErrorMsgVisible = true
                    } else {
                        isEmailErrorMsgVisible = false
                    }
                    if ValidationUtil.checkMatchesWithPassword(email: email, password: password).matchesWithPassword == false {
                        isPasswordErrorMsgVisible = true
                    } else {
                        isPasswordErrorMsgVisible = false
                    }
                }
            }
            .frame(width: 200, height: 50, alignment: .center)
            .background(.gray)
            .cornerRadius(10.0)
            .disabled(isLoginBtnDisable)
            .foregroundColor(ColorUtil.btnTextColor(disable: isLoginBtnDisable))
            Spacer(minLength: 50)
            // メールアドレス再設定画面へ遷移
            NavigationLink(destination: EmailChangeView().navigationTitle("メールアドレス再設定画面").navigationBarTitleDisplayMode(.inline)) {
                Text("メールアドレスを忘れた場合")
                    .foregroundColor(.blue)
                    .padding(.bottom, 5)
            }
            // パスワード再設定画面へ遷移
            NavigationLink(destination: PasswordChangeView()) {
                Text("パスワードを忘れた場合")
                    .foregroundColor(.blue)
            }
            Spacer(minLength: 50)
            Button(action: {
                // action
            }) {
                HStack {
                    Image(systemName: "facebook")
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
                    Image(systemName: "google")
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
            // アカウント作成画面へ遷移
            NavigationLink(destination: RegisterView()) {
                Text("アカウント作成")
                    .foregroundColor(.blue)
                    .padding(.top, 30)
            }
        }
    }
}

// メールアドレス再設定画面
struct EmailChangeView: View {
    // メールアドレス
    @State var email = ""
    // 変更ボタン活性状態
    @State var isChangeEmailBtnDisable = true
    // メールアドレスエラーメッセージ表示
    @State var isEmailErrorMsgVisible = false
    // APIからメールアドレスの変更の正常レスポンス
    private var changeEmailSuccess = true
    
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                Text("メールアドレス")
                    .fontWeight(.bold)
                TextField("メールアドレス", text: $email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .textContentType(.emailAddress)
                    .keyboardType(.emailAddress)
                    .onChange(of: email, perform: { newValue in
                        // メールアドレスが未入力であれば変更ボタン非活性とする
                        if !email.trimmingCharacters(in: .whitespaces).isEmpty {
                            isChangeEmailBtnDisable = false
                        } else {
                            isChangeEmailBtnDisable = true
                        }
                    })
                if isEmailErrorMsgVisible {
                    Label("有効なメールアドレスを入力してください", systemImage: "info.circle.fill")
                        .font(.caption)
                        .foregroundColor(.red)
                }
            }
            Spacer()
            Button(action: {
                // メールアドレスのバリデーションチェックがOKな場合APIをたたく
                if ValidationUtil.checkMatchesWithEmail(email: email)  {
                    isEmailErrorMsgVisible = false
                    // ログインAPIをたたく
                } else {
                    isEmailErrorMsgVisible = true
                }
            }, label: {
                Text("変更")
                    .frame(width: 200, height: 50, alignment: .center)
                    .background(.gray)
                    .cornerRadius(10.0)
                    .foregroundColor(ColorUtil.btnTextColor(disable: isChangeEmailBtnDisable))
            })
            .disabled(isChangeEmailBtnDisable)
        }
        .padding()
    }
}

// メールアドレス入力画面
struct InputEmailView: View {
    // メールアドレス
    @State var email = ""
    // 変更ボタン活性状態
    @State var isChangeEmailBtnDisable = true
    // メールアドレスエラーメッセージ表示
    @State var isEmailErrorMsgVisible = false
    // APIからメールアドレスの変更の正常レスポンス
    private var changeEmailSuccess = true
    
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                Text("メールアドレス")
                    .fontWeight(.bold)
                TextField("メールアドレス", text: $email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .textContentType(.emailAddress)
                    .keyboardType(.emailAddress)
                    .onChange(of: email, perform: { newValue in
                        // メールアドレスが未入力であれば変更ボタン非活性とする
                        if !email.trimmingCharacters(in: .whitespaces).isEmpty {
                            isChangeEmailBtnDisable = false
                        } else {
                            isChangeEmailBtnDisable = true
                        }
                    })
                if isEmailErrorMsgVisible {
                    Label("有効なメールアドレスを入力してください", systemImage: "info.circle.fill")
                        .font(.caption)
                        .foregroundColor(.red)
                }
                Text("ご登録済みのメールアドレスを入力してください。\nメール確認コードを送信します。")
                    .font(.footnote)
                    .foregroundColor(.gray)
                    .padding(.top)
            }
            Spacer()
            Button(action: {
                // メールアドレスのバリデーションチェックがOKな場合APIをたたく
                if ValidationUtil.checkMatchesWithEmail(email: email)  {
                    isEmailErrorMsgVisible = false
                    // ログインAPIをたたく
                } else {
                    isEmailErrorMsgVisible = true
                }
            }, label: {
                Text("送信")
                    .frame(width: 200, height: 50, alignment: .center)
                    .background(.gray)
                    .cornerRadius(10.0)
                    .foregroundColor(ColorUtil.btnTextColor(disable: isChangeEmailBtnDisable))
            })
            .disabled(isChangeEmailBtnDisable)
        }
        .padding()
    }
}

// パスワード再設定画面
struct PasswordChangeView: View {
    // 現在のパスワード
    @State var currentPassword = ""
    // 現在のパスワード文字数制限の範囲内状況
    @State var currentCorrectNumberOfLettersError = false
    // 現在のパスワードに使用可能な文字を使用状況
    @State var currentUsingAvailableLettersError = false
    // 現在のパスワードエラーメッセージ表示
    @State var isCurrentPasswordErrorMsgVisible = false
    // 新しいパスワード
    @State var newPassword = ""
    // 新しいパスワード文字数制限の範囲内状況
    @State var newCorrectNumberOfLettersError = false
    // 新しいパスワードに使用可能な文字を使用状況
    @State var newUsingAvailableLettersError = false
    // 新しいパスワードエラーメッセージ表示
    @State var isNewPasswordErrorMsgVisible = false
    
    // 登録ボタン活性状態
    @State var isRegisterBtnDisable = true


    // アカウント登録APIから正常レスポンス
    private var registerSuccess = true
    
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                SecureTextField("現在のパスワード", password: $currentPassword)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .textContentType(.password)
                    .keyboardType(.alphabet)
                    .onChange(of: currentPassword, perform: { newValue in
                        // メールアドレス、パスワードどちらか未入力であれば非活性とする
                        if currentPassword.trimmingCharacters(in: .whitespaces).isEmpty == false && newPassword.trimmingCharacters(in: .whitespaces).isEmpty == false {
                            isRegisterBtnDisable = false
                        } else {
                            isRegisterBtnDisable = true
                        }
                    })
                if isCurrentPasswordErrorMsgVisible {
                    Label("現在のパスワードが正しくありません。入力し直してください。", systemImage: "info.circle.fill")
                        .font(.caption)
                        .foregroundColor(.red)
                }
                SecureTextField("新しいパスワード", password: $newPassword)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .textContentType(.password)
                    .keyboardType(.alphabet)
                    .onChange(of: newPassword, perform: { newValue in
                        // メールアドレス、パスワードどちらか未入力であれば非活性とする
                        if newPassword.trimmingCharacters(in: .whitespaces).isEmpty == false {
                            isRegisterBtnDisable = false
                        } else {
                            isRegisterBtnDisable = true
                        }
                    })
                if isNewPasswordErrorMsgVisible {
                    Label("新しいパスワードが正しくありません。入力し直してください。", systemImage: "info.circle.fill")
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
                    .foregroundColor(ColorUtil.passwordHintColor(error: newCorrectNumberOfLettersError))
                Text("半角英数、数字、記号を2つ以上組み合わせてください\n※ 記号は下記のものを使用できます。\n\t!\"#$%&'()*+,-./:;<=>?@[]^_{|}")
                    .padding(.top, 1.0)
                    .font(.footnote)
                    .foregroundColor(ColorUtil.passwordHintColor(error: newUsingAvailableLettersError))
            }
            .padding()
            Spacer()
            Button("登録") {
                // 現在のパスワードのバリデーションチェック結果
                let curentPasswordValidateResult = ValidationUtil.checkMatchesWithPassword(email: "daniel@gmail.com", password: currentPassword)
                currentCorrectNumberOfLettersError = curentPasswordValidateResult.correctNumberOfLettersError
                currentUsingAvailableLettersError = curentPasswordValidateResult.usingAvailableLettersError
                // 新しいパスワードのバリデーションチェック結果
                let newPasswordValidateResult = ValidationUtil.checkMatchesWithPassword(email: "daniel@gmail.com", password: newPassword)
                newCorrectNumberOfLettersError = curentPasswordValidateResult.correctNumberOfLettersError
                newUsingAvailableLettersError = curentPasswordValidateResult.usingAvailableLettersError
                // 現在のパスワードと新しいパスワードのどちらのバリデーションチェックがOKな場合パスワード変更APIをたたく
                if curentPasswordValidateResult.matchesWithPassword && newPasswordValidateResult.matchesWithPassword  {
                    isCurrentPasswordErrorMsgVisible = false
                    isNewPasswordErrorMsgVisible = false
                    // ユーザー登録APIをたたく
                } else {
                    if curentPasswordValidateResult.matchesWithPassword == false {
                        isCurrentPasswordErrorMsgVisible = true
                    } else {
                        isCurrentPasswordErrorMsgVisible = false
                    }
                    if newPasswordValidateResult.matchesWithPassword == false {
                        isNewPasswordErrorMsgVisible = true
                    } else {
                        isNewPasswordErrorMsgVisible = false
                    }
                }
            }
            .frame(width: 200, height: 50, alignment: .center)
            .background(.gray)
            .cornerRadius(10.0)
            .disabled(isRegisterBtnDisable)
            .foregroundColor(ColorUtil.btnTextColor(disable: isRegisterBtnDisable))
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        PasswordChangeView()
    }
}
