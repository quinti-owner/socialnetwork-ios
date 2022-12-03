//
//  ViewController.swift
//  SocialNetwork
//
//  Created by 古堅ニノスカ on 2022/09/15.
//

import UIKit

class ViewController: UIViewController {
    
    var listAbuseAPI = [Abuse]()
    var urlAbuseAPI = URL(string: "https://3cabjeo1uc.execute-api.ap-northeast-1.amazonaws.com/dev/")!
    
    var listAppVersionAPI = [AppVersion]()
    var urlAppVersionAPI = URL(string: "https://3cabjeo1uc.execute-api.ap-northeast-1.amazonaws.com/dev/")!
    
    var listBbsAreaAPI = [BbsArea]()
    var urlBbsAreaAPI = URL(string: "https://3cabjeo1uc.execute-api.ap-northeast-1.amazonaws.com/dev/")!
    
    var listBbsCuriousAPI = [BbsCurious]()
    var urlBbsCuriousAPI = URL(string: "https://3cabjeo1uc.execute-api.ap-northeast-1.amazonaws.com/dev/")!
    
    var listBbsDeleteAPI = [BbsDelete]()
    var urlBbsDeleteAPI = URL(string: "https://3cabjeo1uc.execute-api.ap-northeast-1.amazonaws.com/dev/")!
    
    var listPrefectureAPI = [Prefecture]()
    var urlPrefectureAPI = URL(string: "https://3cabjeo1uc.execute-api.ap-northeast-1.amazonaws.com/dev/")!
    
    var listDenyAPI = [Deny]()
    var urlDenyAPI = URL(string: "https://3cabjeo1uc.execute-api.ap-northeast-1.amazonaws.com/dev/")!
    
    var listUniversalDeviceAPI = [UniversalDevice]()
    var urlUniversalDeviceAPI = URL(string: "https://3cabjeo1uc.execute-api.ap-northeast-1.amazonaws.com/dev/")!
    
    var listUniversalDeviceStatusAPI = [UniversalDeviceStatus]()
    var urlUniversalDeviceStatusAPI = URL(string: "https://3cabjeo1uc.execute-api.ap-northeast-1.amazonaws.com/dev/")!
    
    var listFootprintDeleteAPI = [FootprintDelete]()
    var urlFootprintDeleteAPI = URL(string: "https://3cabjeo1uc.execute-api.ap-northeast-1.amazonaws.com/dev/")!
    
    var listMyfootprintDeleteAPI = [MyfootprintDelete]()
    var urlMyfootprintDeleteAPI = URL(string: "https://3cabjeo1uc.execute-api.ap-northeast-1.amazonaws.com/dev/")!
    
    var listFootprintSettingAPI = [FootprintSetting]()
    var urlFootprintSettingAPI = URL(string: "https://3cabjeo1uc.execute-api.ap-northeast-1.amazonaws.com/dev/")!
    
    var listInformationAPI = [Information]()
    var urlInformationAPI = URL(string: "https://3cabjeo1uc.execute-api.ap-northeast-1.amazonaws.com/dev/")!
    
    var listInformationPushListAPI = [InformationpushList]()
    var urlInformationPushListAPI = URL(string: "https://3cabjeo1uc.execute-api.ap-northeast-1.amazonaws.com/dev/")!
    
    var listLikeAddAPI = [LikeAdd]()
    var urlLikeAddAPI = URL(string: "https://3cabjeo1uc.execute-api.ap-northeast-1.amazonaws.com/dev/")!

    var listLikeDeleteAPI = [LikeDelete]()
    var urlLikeDeleteAPI = URL(string: "https://3cabjeo1uc.execute-api.ap-northeast-1.amazonaws.com/dev/")!
    
    var listMailgetAPI = [Mailget]()
    var urlMailgetAPI = URL(string: "https://3cabjeo1uc.execute-api.ap-northeast-1.amazonaws.com/dev/")!

    var listMailHistoryDeleteAPI = [MailHistoryDelete]()
    var urlMailHistoryDeleteAPI = URL(string: "https://3cabjeo1uc.execute-api.ap-northeast-1.amazonaws.com/dev/")!
    
    var listMemoCategoryAPI = [MemoCategory]()
    var urlMemoCategoryAPI = URL(string: "https://3cabjeo1uc.execute-api.ap-northeast-1.amazonaws.com/dev/")!
    
    var listMemoDeleteAPI = [MemoDelete]()
    var urlMemoDeleteAPI = URL(string: "https://3cabjeo1uc.execute-api.ap-northeast-1.amazonaws.com/dev/")!
    
    var listMemoWriteAPI = [MemoWrite]()
    var urlMemoWriteAPI = URL(string: "https://3cabjeo1uc.execute-api.ap-northeast-1.amazonaws.com/dev/")!
    
    var listMytypeExecAPI = [MytypeExec]()
    var urlMytypeExecAPI = URL(string: "https://3cabjeo1uc.execute-api.ap-northeast-1.amazonaws.com/dev/")!
    
    var listMytypeStatAPI = [MytypeStat]()
    var urlMytypeStatAPI = URL(string: "https://3cabjeo1uc.execute-api.ap-northeast-1.amazonaws.com/dev/")!
    
    var listNotiflcationAPI = [Notiflcation]()
    var urlNotiflcationAPI = URL(string: "https://3cabjeo1uc.execute-api.ap-northeast-1.amazonaws.com/dev/")!
    
    var listNotiflcationListAPI = [NotificationList]()
    var urlNotiflcationListAPI = URL(string: "https://3cabjeo1uc.execute-api.ap-northeast-1.amazonaws.com/dev/")!
    
    var listProfileDetailPhptoAPI = [ProfileDetailPhpto]()
    var urlProfileDetailPhptoAPI = URL(string: "https://3cabjeo1uc.execute-api.ap-northeast-1.amazonaws.com/dev/")!
    
    var listProfileDetallAPI = [ProfileDetall]()
    var urlProfileDetallAPI = URL(string: "https://3cabjeo1uc.execute-api.ap-northeast-1.amazonaws.com/dev/")!
    
    var listProfilePhotoAPI = [ProfilePhoto]()
    var urlProfilePhotoAPI = URL(string: "https://3cabjeo1uc.execute-api.ap-northeast-1.amazonaws.com/dev/")!
    
    var listR18IsauthorizedAPI = [R18Isauthorized]()
    var urlR18IsauthorizedAPI = URL(string: "https://3cabjeo1uc.execute-api.ap-northeast-1.amazonaws.com/dev/")!
    
    var listR18PhotoreceivedAPI = [R18Photoreceived]()
    var urlR18PhotoreceivedAPI = URL(string: "https://3cabjeo1uc.execute-api.ap-northeast-1.amazonaws.com/dev/")!
    
    var listReRegisterAPI = [ReRegister]()
    var urlReRegisterAPI = URL(string: "https://3cabjeo1uc.execute-api.ap-northeast-1.amazonaws.com/dev/")!
    
    var listResignAPI = [Resign]()
    var urlResignAPI = URL(string: "https://3cabjeo1uc.execute-api.ap-northeast-1.amazonaws.com/dev/")!
    
    var listSmileDeleteAPI = [SmileDelete]()
    var urlSmileDeleteAPI = URL(string: "https://3cabjeo1uc.execute-api.ap-northeast-1.amazonaws.com/dev/")!

    var listStartupAPI = [Startup]()
    var urlStartupAPI = URL(string: "https://3cabjeo1uc.execute-api.ap-northeast-1.amazonaws.com/dev/")!
    
    var listTalkAPI = [Talk]()
    var urlTalkAPI = URL(string: "https://3cabjeo1uc.execute-api.ap-northeast-1.amazonaws.com/dev/")!
    
    var listTalkCommentDeleteAPI = [TalkCommentDelete]()
    var urlTalkCommentDeleteAPI = URL(string: "https://3cabjeo1uc.execute-api.ap-northeast-1.amazonaws.com/dev/")!
    
    var listSmileAPI = [Smile]()
    var urlSmileAPI = URL(string: "https://3cabjeo1uc.execute-api.ap-northeast-1.amazonaws.com/dev/")!
    
    var listTalkCommentPostAPI = [TalkCommentPost]()
    var urlTalkCommentPostAPI = URL(string: "https://3cabjeo1uc.execute-api.ap-northeast-1.amazonaws.com/dev/")!
    
    var listTalkDeleteAPI = [TalkDelete]()
    var urlTalkDeleteAPI = URL(string: "https://3cabjeo1uc.execute-api.ap-northeast-1.amazonaws.com/dev/")!
    
    var listTelGetAPI = [TelGet]()
    var urlTelGetAPI = URL(string: "https://3cabjeo1uc.execute-api.ap-northeast-1.amazonaws.com/dev/")!

    var listAccessAPI = [Access]()
    var urlAccessAPI = URL(string: "https://3cabjeo1uc.execute-api.ap-northeast-1.amazonaws.com/dev/")!
    
    var listBbsNameListAPI = [BbsNameList]()
    var urlBbsNameListAPI = URL(string: "https://3cabjeo1uc.execute-api.ap-northeast-1.amazonaws.com/dev/")!

    var listBbsReceivedMailListAPI = [BbsReceivedMailList]()
    var urlBbsReceivedMailListAPI = URL(string: "https://3cabjeo1uc.execute-api.ap-northeast-1.amazonaws.com/dev/")!
    
    var listDenyListAPI = [DenyList]()
    var urlDenyListAPI = URL(string: "https://3cabjeo1uc.execute-api.ap-northeast-1.amazonaws.com/dev/")!
    
    var listFootprintAPI = [Fotprint]()
    var urlFootprintAPI = URL(string: "https://3cabjeo1uc.execute-api.ap-northeast-1.amazonaws.com/dev/")!
    
    var listMailBoxAPI = [MailBox]()
    var urlMailBoxAPI = URL(string: "https://3cabjeo1uc.execute-api.ap-northeast-1.amazonaws.com/dev/")!
    
    var listMailCheckAPI = [MailCheck]()
    var urlMailCheckAPI = URL(string: "https://3cabjeo1uc.execute-api.ap-northeast-1.amazonaws.com/dev/")!

    var listMailHistoryAPI = [MailHistory]()
    var urlMailHistoryAPI = URL(string: "https://3cabjeo1uc.execute-api.ap-northeast-1.amazonaws.com/dev/")!
    
    var listMailSendAPI = [MailSend]()
    var urlMailSendAPI = URL(string: "https://3cabjeo1uc.execute-api.ap-northeast-1.amazonaws.com/dev/")!
    
    var listMytypeListAPI = [MytypeList]()
    var urlMytypeListAPI = URL(string: "https://3cabjeo1uc.execute-api.ap-northeast-1.amazonaws.com/dev/")!
    
    var listPushListAPI = [PushList]()
    var urlPushListAPI = URL(string: "https://3cabjeo1uc.execute-api.ap-northeast-1.amazonaws.com/dev/")!
    
    var listPushSettingAPI = [PushSetting]()
    var urlPushSettingAPI = URL(string: "https://3cabjeo1uc.execute-api.ap-northeast-1.amazonaws.com/dev/")!
    
    var listRegisterUpdateTelAPI = [RegisterUpdateTel]()
    var urlRegisterUpdateTelAPI = URL(string: "https://3cabjeo1uc.execute-api.ap-northeast-1.amazonaws.com/dev/")!
    
    var listBbsChangeStatusAPI = [BbsChangeStatus]()
    var urlBbsChangeStatusAPI = URL(string: "https://3cabjeo1uc.execute-api.ap-northeast-1.amazonaws.com/dev/")!

    var listBbsCheckAPI = [BbsCheck]()
    var urlBbsCheckAPI = URL(string: "https://3cabjeo1uc.execute-api.ap-northeast-1.amazonaws.com/dev/")!
    
    var listBbsDetallAPI = [BbsDetall]()
    var urlBbsDetallAPI = URL(string: "https://3cabjeo1uc.execute-api.ap-northeast-1.amazonaws.com/dev/")!
    
    var listBbsEditAPI = [BbsEdit]()
    var urlBbsEditAPI = URL(string: "https://3cabjeo1uc.execute-api.ap-northeast-1.amazonaws.com/dev/")!
    
    var listBbsHistoryAPI = [BbsHistory]()
    var urlBbsHistoryAPI = URL(string: "https://3cabjeo1uc.execute-api.ap-northeast-1.amazonaws.com/dev/")!
    
    var listBbsSearchAPI = [BbsSearch]()
    var urlBbsSearchAPI = URL(string: "https://3cabjeo1uc.execute-api.ap-northeast-1.amazonaws.com/dev/")!
    
    var listLikeListAPI = [LikeList]()
    var urlLikeListAPI = URL(string: "https://3cabjeo1uc.execute-api.ap-northeast-1.amazonaws.com/dev/")!
    
    var listLoginAPI = [Login]()
    var urlLoginAPI = URL(string: "https://3cabjeo1uc.execute-api.ap-northeast-1.amazonaws.com/dev/")!
    
    var listMailFovoriteAPI = [MailFovorite]()
    var urlMailFovoriteAPI = URL(string: "https://3cabjeo1uc.execute-api.ap-northeast-1.amazonaws.com/dev/")!
    
    var listMailFileDeleteAPI = [MailFileDelete]()
    var urlMailFileDeleteAPI = URL(string: "https://3cabjeo1uc.execute-api.ap-northeast-1.amazonaws.com/dev/")!
    
    var listMemoAPI = [Memo]()
    var urlMemoAPI = URL(string: "https://3cabjeo1uc.execute-api.ap-northeast-1.amazonaws.com/dev/")!

    var listPasswordChangeAPI = [PasswordChange]()
    var urlPasswordChangeAPI = URL(string: "https://3cabjeo1uc.execute-api.ap-northeast-1.amazonaws.com/dev/")!
    
    var listObtainedByPrefectureAPI = [ObtainedByPrefecture]()
    var urlObtainedByPrefectureAPI = URL(string: "https://3cabjeo1uc.execute-api.ap-northeast-1.amazonaws.com/dev/")!
    
    var listProfileSerchAPI = [ProfileSerch]()
    var urlProfileSerchAPI = URL(string: "https://3cabjeo1uc.execute-api.ap-northeast-1.amazonaws.com/dev/")!
    
    var listProfileDeleteAPI = [ProfileDelete]()
    var urlProfileDeleteAPI = URL(string: "https://3cabjeo1uc.execute-api.ap-northeast-1.amazonaws.com/dev/")!

    var listProfileEditAPI = [ProfileEdit]()
    var urlProfileEditAPI = URL(string: "https://3cabjeo1uc.execute-api.ap-northeast-1.amazonaws.com/dev/")!
    
    var listSmilListAPI = [SmilList]()
    var urlSmilListAPI = URL(string: "https://3cabjeo1uc.execute-api.ap-northeast-1.amazonaws.com/dev/")!
    
    var listTalkCommentAPI = [TalkComment]()
    var urlTalkCommentAPI = URL(string: "https://3cabjeo1uc.execute-api.ap-northeast-1.amazonaws.com/dev/")!
    
    var listTalkCommentHistoryAPI = [TalkCommentHistory]()
    var urlTalkCommentHistoryAPI = URL(string: "https://3cabjeo1uc.execute-api.ap-northeast-1.amazonaws.com/dev/")!
    
    var listTalkDeleteResultAPI = [TalkDeleteResult]()
    var urlTalkDeleteResultAPI = URL(string: "https://3cabjeo1uc.execute-api.ap-northeast-1.amazonaws.com/dev/")!
    
    var listTalkSearchtAPI = [TalkSearcht]()
    var urlTalkSearchtAPI = URL(string: "https://3cabjeo1uc.execute-api.ap-northeast-1.amazonaws.com/dev/")!
    
    var listFavoriteBbsListAPI = [FavoriteBbsList]()
    var urlFavoriteBbsListAPI = URL(string: "https://3cabjeo1uc.execute-api.ap-northeast-1.amazonaws.com/dev/")!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
        
//    func AbuseAPI(){
//        // APIをたたく
//        URLSession.shared.dataTask(with:urlAbuseAPI
//                           , completionHandler: { (data, response, error) in
//            // エラーがあるかどうかチェック
//            if let error = error {
//                print("レスポンスエラー: \(error.localizedDescription)")
//                return
//
//            }
//            // データが空かどうかチェック
//            guard let data = data, let response = response as? HTTPURLResponse else {
//                print("レスポンスのデータが空です")
//                return
//
//            }
//            // データの抽出
//            if response.statusCode == 200 {
//                do {
//                    // 受け取ったデータをiPhoneで扱える形に変換する
//                    let abuse: Abuse = try JSONDecoder().decode(Abuse.self, from: data)
//                    abuse.abuse
//
//                    print("OK")
//                    // 画面描画スレッド
//                    DispatchQueue.main.sync {
//                        // レスポンスのデータをリストに更新する
//                        //self.tableView.reloadData()
//
//                        // ローディングを停止 ( storyboardでの設定によりアニメーションを停止させると自動的に非表示になる )
//                        //self.loadingView.stopAnimating()
//
//                    }
//
//                } catch {
//                    print("デコードエラー")
//
//                }
//
//            } else {
//                print("サーバー・エラー・ステータスコード: \(response.statusCode)")
//
//            }
//
//        }).resume()
//
//    }
    
    func AppVersionAPI(){
        // APIをたたく
        URLSession.shared.dataTask(with:urlAppVersionAPI
                           , completionHandler: { (data, response, error) in
            // エラーがあるかどうかチェック
            if let error = error {
                print("レスポンスエラー: \(error.localizedDescription)")
                return
                
            }
            // データが空かどうかチェック
            guard let data = data, let response = response as? HTTPURLResponse else {
                print("レスポンスのデータが空です")
                return
                
            }
            // データの抽出
            if response.statusCode == 200 {
                do {
                    // 受け取ったデータをiPhoneで扱える形に変換する
                    let appVersion: AppVersion = try JSONDecoder().decode(AppVersion.self, from: data)
                    appVersion.app_version
                
                    print("OK")
                    // 画面描画スレッド
                    DispatchQueue.main.sync {
                        // レスポンスのデータをリストに更新する
                        //self.tableView.reloadData()
                       
                        // ローディングを停止 ( storyboardでの設定によりアニメーションを停止させると自動的に非表示になる )
                        //self.loadingView.stopAnimating()
                        
                    }
                    
                } catch {
                    print("デコードエラー")
                    
                }
                
            } else {
                print("サーバー・エラー・ステータスコード: \(response.statusCode)")
                
            }
            
        }).resume()
        
    }
    
    func BbsAreaAPI(){
        // APIをたたく
        URLSession.shared.dataTask(with:urlBbsAreaAPI
                           , completionHandler: { (data, response, error) in
            // エラーがあるかどうかチェック
            if let error = error {
                print("レスポンスエラー: \(error.localizedDescription)")
                return
                
            }
            // データが空かどうかチェック
            guard let data = data, let response = response as? HTTPURLResponse else {
                print("レスポンスのデータが空です")
                return
                
            }
            // データの抽出
            if response.statusCode == 200 {
                do {
                    // 受け取ったデータをiPhoneで扱える形に変換する
                    let bbsArea: BbsArea = try JSONDecoder().decode(BbsArea.self, from: data)
                    bbsArea.result
                
                    print("OK")
                    // 画面描画スレッド
                    DispatchQueue.main.sync {
                        // レスポンスのデータをリストに更新する
                        //self.tableView.reloadData()
                       
                        // ローディングを停止 ( storyboardでの設定によりアニメーションを停止させると自動的に非表示になる )
                        //self.loadingView.stopAnimating()
                        
                    }
                    
                } catch {
                    print("デコードエラー")
                    
                }
                
            } else {
                print("サーバー・エラー・ステータスコード: \(response.statusCode)")
                
            }
            
        }).resume()
        
    }
    
    func BbsCuriousAPI(){
        // APIをたたく
        URLSession.shared.dataTask(with:urlBbsCuriousAPI
                           , completionHandler: { (data, response, error) in
            // エラーがあるかどうかチェック
            if let error = error {
                print("レスポンスエラー: \(error.localizedDescription)")
                return
                
            }
            // データが空かどうかチェック
            guard let data = data, let response = response as? HTTPURLResponse else {
                print("レスポンスのデータが空です")
                return
                
            }
            // データの抽出
            if response.statusCode == 200 {
                do {
                    // 受け取ったデータをiPhoneで扱える形に変換する
                    let bbsCurious: BbsCurious = try JSONDecoder().decode(BbsCurious.self, from: data)
                    bbsCurious.result
                
                    print("OK")
                    // 画面描画スレッド
                    DispatchQueue.main.sync {
                        // レスポンスのデータをリストに更新する
                        //self.tableView.reloadData()
                       
                        // ローディングを停止 ( storyboardでの設定によりアニメーションを停止させると自動的に非表示になる )
                        //self.loadingView.stopAnimating()
                        
                    }
                    
                } catch {
                    print("デコードエラー")
                    
                }
                
            } else {
                print("サーバー・エラー・ステータスコード: \(response.statusCode)")
                
            }
            
        }).resume()
        
    }
    
    func BbsDeleteAPI(){
        // APIをたたく
        URLSession.shared.dataTask(with:urlBbsDeleteAPI
                           , completionHandler: { (data, response, error) in
            // エラーがあるかどうかチェック
            if let error = error {
                print("レスポンスエラー: \(error.localizedDescription)")
                return
                
            }
            // データが空かどうかチェック
            guard let data = data, let response = response as? HTTPURLResponse else {
                print("レスポンスのデータが空です")
                return
                
            }
            // データの抽出
            if response.statusCode == 200 {
                do {
                    // 受け取ったデータをiPhoneで扱える形に変換する
                    let bbsDelete: BbsDelete = try JSONDecoder().decode(BbsDelete.self, from: data)
                    bbsDelete.result
                
                    print("OK")
                    // 画面描画スレッド
                    DispatchQueue.main.sync {
                        // レスポンスのデータをリストに更新する
                        //self.tableView.reloadData()
                       
                        // ローディングを停止 ( storyboardでの設定によりアニメーションを停止させると自動的に非表示になる )
                        //self.loadingView.stopAnimating()
                        
                    }
                    
                } catch {
                    print("デコードエラー")
                    
                }
                
            } else {
                print("サーバー・エラー・ステータスコード: \(response.statusCode)")
                
            }
            
        }).resume()
        
    }
    
    func PrefectureAPI(){
        // APIをたたく
        URLSession.shared.dataTask(with:urlPrefectureAPI
                           , completionHandler: { (data, response, error) in
            // エラーがあるかどうかチェック
            if let error = error {
                print("レスポンスエラー: \(error.localizedDescription)")
                return
                
            }
            // データが空かどうかチェック
            guard let data = data, let response = response as? HTTPURLResponse else {
                print("レスポンスのデータが空です")
                return
                
            }
            // データの抽出
            if response.statusCode == 200 {
                do {
                    // 受け取ったデータをiPhoneで扱える形に変換する
                    let prefecture: Prefecture = try JSONDecoder().decode(Prefecture.self, from: data)
                    prefecture.list
                
                    print("OK")
                    // 画面描画スレッド
                    DispatchQueue.main.sync {
                        // レスポンスのデータをリストに更新する
                        //self.tableView.reloadData()
                       
                        // ローディングを停止 ( storyboardでの設定によりアニメーションを停止させると自動的に非表示になる )
                        //self.loadingView.stopAnimating()
                        
                    }
                    
                } catch {
                    print("デコードエラー")
                    
                }
                
            } else {
                print("サーバー・エラー・ステータスコード: \(response.statusCode)")
                
            }
            
        }).resume()
        
    }
    
    func DenyAPI(){
        // APIをたたく
        URLSession.shared.dataTask(with:urlDenyAPI
                           , completionHandler: { (data, response, error) in
            // エラーがあるかどうかチェック
            if let error = error {
                print("レスポンスエラー: \(error.localizedDescription)")
                return
                
            }
            // データが空かどうかチェック
            guard let data = data, let response = response as? HTTPURLResponse else {
                print("レスポンスのデータが空です")
                return
                
            }
            // データの抽出
            if response.statusCode == 200 {
                do {
                    // 受け取ったデータをiPhoneで扱える形に変換する
                    let deny: Deny = try JSONDecoder().decode(Deny.self, from: data)
                    deny.deny
                    
                
                    print("OK")
                    // 画面描画スレッド
                    DispatchQueue.main.sync {
                        // レスポンスのデータをリストに更新する
                        //self.tableView.reloadData()
                       
                        // ローディングを停止 ( storyboardでの設定によりアニメーションを停止させると自動的に非表示になる )
                        //self.loadingView.stopAnimating()
                        
                    }
                    
                } catch {
                    print("デコードエラー")
                    
                }
                
            } else {
                print("サーバー・エラー・ステータスコード: \(response.statusCode)")
                
            }
            
        }).resume()
        
    }
    
    func UniversalDeviceAPI(){
        // APIをたたく
        URLSession.shared.dataTask(with:urlUniversalDeviceAPI
                           , completionHandler: { (data, response, error) in
            // エラーがあるかどうかチェック
            if let error = error {
                print("レスポンスエラー: \(error.localizedDescription)")
                return
                
            }
            // データが空かどうかチェック
            guard let data = data, let response = response as? HTTPURLResponse else {
                print("レスポンスのデータが空です")
                return
                
            }
            // データの抽出
            if response.statusCode == 200 {
                do {
                    // 受け取ったデータをiPhoneで扱える形に変換する
                    let universalDevice: UniversalDevice = try JSONDecoder().decode(UniversalDevice.self, from: data)
                    universalDevice.universal_device
                
                    print("OK")
                    // 画面描画スレッド
                    DispatchQueue.main.sync {
                        // レスポンスのデータをリストに更新する
                        //self.tableView.reloadData()
                       
                        // ローディングを停止 ( storyboardでの設定によりアニメーションを停止させると自動的に非表示になる )
                        //self.loadingView.stopAnimating()
                        
                    }
                    
                } catch {
                    print("デコードエラー")
                    
                }
                
            } else {
                print("サーバー・エラー・ステータスコード: \(response.statusCode)")
                
            }
            
        }).resume()
        
    }
    
    func UniversalDeviceStatusAPI(){
        // APIをたたく
        URLSession.shared.dataTask(with:urlUniversalDeviceStatusAPI
                           , completionHandler: { (data, response, error) in
            // エラーがあるかどうかチェック
            if let error = error {
                print("レスポンスエラー: \(error.localizedDescription)")
                return
                
            }
            // データが空かどうかチェック
            guard let data = data, let response = response as? HTTPURLResponse else {
                print("レスポンスのデータが空です")
                return
                
            }
            // データの抽出
            if response.statusCode == 200 {
                do {
                    // 受け取ったデータをiPhoneで扱える形に変換する
                    let universalDeviceStatus: UniversalDeviceStatus = try JSONDecoder().decode(UniversalDeviceStatus.self, from: data)
                    universalDeviceStatus.universal_device_status
                
                    print("OK")
                    // 画面描画スレッド
                    DispatchQueue.main.sync {
                        // レスポンスのデータをリストに更新する
                        //self.tableView.reloadData()
                       
                        // ローディングを停止 ( storyboardでの設定によりアニメーションを停止させると自動的に非表示になる )
                        //self.loadingView.stopAnimating()
                        
                    }
                    
                } catch {
                    print("デコードエラー")
                    
                }
                
            } else {
                print("サーバー・エラー・ステータスコード: \(response.statusCode)")
                
            }
            
        }).resume()
        
    }
    
    func FootprintDeleteAPI(){
        // APIをたたく
        URLSession.shared.dataTask(with:urlFootprintDeleteAPI
                           , completionHandler: { (data, response, error) in
            // エラーがあるかどうかチェック
            if let error = error {
                print("レスポンスエラー: \(error.localizedDescription)")
                return
                
            }
            // データが空かどうかチェック
            guard let data = data, let response = response as? HTTPURLResponse else {
                print("レスポンスのデータが空です")
                return
                
            }
            // データの抽出
            if response.statusCode == 200 {
                do {
                    // 受け取ったデータをiPhoneで扱える形に変換する
                    let footprintDelete: FootprintDelete = try JSONDecoder().decode(FootprintDelete.self, from: data)
                    footprintDelete.footprint_delete
                
                    print("OK")
                    // 画面描画スレッド
                    DispatchQueue.main.sync {
                        // レスポンスのデータをリストに更新する
                        //self.tableView.reloadData()
                       
                        // ローディングを停止 ( storyboardでの設定によりアニメーションを停止させると自動的に非表示になる )
                        //self.loadingView.stopAnimating()
                        
                    }
                    
                } catch {
                    print("デコードエラー")
                    
                }
                
            } else {
                print("サーバー・エラー・ステータスコード: \(response.statusCode)")
                
            }
            
        }).resume()
        
    }
    
    func MyfootprintDeleteAPI(){
        // APIをたたく
        URLSession.shared.dataTask(with:urlMyfootprintDeleteAPI
                           , completionHandler: { (data, response, error) in
            // エラーがあるかどうかチェック
            if let error = error {
                print("レスポンスエラー: \(error.localizedDescription)")
                return
                
            }
            // データが空かどうかチェック
            guard let data = data, let response = response as? HTTPURLResponse else {
                print("レスポンスのデータが空です")
                return
                
            }
            // データの抽出
            if response.statusCode == 200 {
                do {
                    // 受け取ったデータをiPhoneで扱える形に変換する
                    let myfootprintDelete: MyfootprintDelete = try JSONDecoder().decode(MyfootprintDelete.self, from: data)
                    myfootprintDelete.footprint_mydelete
                
                    print("OK")
                    // 画面描画スレッド
                    DispatchQueue.main.sync {
                        // レスポンスのデータをリストに更新する
                        //self.tableView.reloadData()
                       
                        // ローディングを停止 ( storyboardでの設定によりアニメーションを停止させると自動的に非表示になる )
                        //self.loadingView.stopAnimating()
                        
                    }
                    
                } catch {
                    print("デコードエラー")
                    
                }
                
            } else {
                print("サーバー・エラー・ステータスコード: \(response.statusCode)")
                
            }
            
        }).resume()
        
    }
    
    func FootprintSettingAPI(){
        // APIをたたく
        URLSession.shared.dataTask(with:urlFootprintSettingAPI
                           , completionHandler: { (data, response, error) in
            // エラーがあるかどうかチェック
            if let error = error {
                print("レスポンスエラー: \(error.localizedDescription)")
                return
                
            }
            // データが空かどうかチェック
            guard let data = data, let response = response as? HTTPURLResponse else {
                print("レスポンスのデータが空です")
                return
                
            }
            // データの抽出
            if response.statusCode == 200 {
                do {
                    // 受け取ったデータをiPhoneで扱える形に変換する
                    let footprintSetting: FootprintSetting = try JSONDecoder().decode(FootprintSetting.self, from: data)
                    footprintSetting.result
                
                    print("OK")
                    // 画面描画スレッド
                    DispatchQueue.main.sync {
                        // レスポンスのデータをリストに更新する
                        //self.tableView.reloadData()
                       
                        // ローディングを停止 ( storyboardでの設定によりアニメーションを停止させると自動的に非表示になる )
                        //self.loadingView.stopAnimating()
                        
                    }
                    
                } catch {
                    print("デコードエラー")
                    
                }
                
            } else {
                print("サーバー・エラー・ステータスコード: \(response.statusCode)")
                
            }
            
        }).resume()
        
    }
    
    func InformationAPI(){
        // APIをたたく
        URLSession.shared.dataTask(with:urlInformationAPI
                           , completionHandler: { (data, response, error) in
            // エラーがあるかどうかチェック
            if let error = error {
                print("レスポンスエラー: \(error.localizedDescription)")
                return
                
            }
            // データが空かどうかチェック
            guard let data = data, let response = response as? HTTPURLResponse else {
                print("レスポンスのデータが空です")
                return
                
            }
            // データの抽出
            if response.statusCode == 200 {
                do {
                    // 受け取ったデータをiPhoneで扱える形に変換する
                    let information: Information = try JSONDecoder().decode(Information.self, from: data)
                    information.info
                
                    print("OK")
                    // 画面描画スレッド
                    DispatchQueue.main.sync {
                        // レスポンスのデータをリストに更新する
                        //self.tableView.reloadData()
                       
                        // ローディングを停止 ( storyboardでの設定によりアニメーションを停止させると自動的に非表示になる )
                        //self.loadingView.stopAnimating()
                        
                    }
                    
                } catch {
                    print("デコードエラー")
                    
                }
                
            } else {
                print("サーバー・エラー・ステータスコード: \(response.statusCode)")
                
            }
            
        }).resume()
        
    }
    
    func InformationPushListAPI(){
        // APIをたたく
        URLSession.shared.dataTask(with:urlInformationPushListAPI
                           , completionHandler: { (data, response, error) in
            // エラーがあるかどうかチェック
            if let error = error {
                print("レスポンスエラー: \(error.localizedDescription)")
                return
                
            }
            // データが空かどうかチェック
            guard let data = data, let response = response as? HTTPURLResponse else {
                print("レスポンスのデータが空です")
                return
                
            }
            // データの抽出
            if response.statusCode == 200 {
                do {
                    // 受け取ったデータをiPhoneで扱える形に変換する
                    let InformationpushList: InformationpushList = try JSONDecoder().decode(InformationpushList.self, from: data)
                    InformationpushList.information_push_list
                    
                    print("OK")
                    // 画面描画スレッド
                    DispatchQueue.main.sync {
                        // レスポンスのデータをリストに更新する
                        //self.tableView.reloadData()
                       
                        // ローディングを停止 ( storyboardでの設定によりアニメーションを停止させると自動的に非表示になる )
                        //self.loadingView.stopAnimating()
                        
                    }
                    
                } catch {
                    print("デコードエラー")
                    
                }
                
            } else {
                print("サーバー・エラー・ステータスコード: \(response.statusCode)")
                
            }
            
        }).resume()
        
    }
    
    func LikeAddAPI(){
        // APIをたたく
        URLSession.shared.dataTask(with:urlLikeAddAPI
                           , completionHandler: { (data, response, error) in
            // エラーがあるかどうかチェック
            if let error = error {
                print("レスポンスエラー: \(error.localizedDescription)")
                return
                
            }
            // データが空かどうかチェック
            guard let data = data, let response = response as? HTTPURLResponse else {
                print("レスポンスのデータが空です")
                return
                
            }
            // データの抽出
            if response.statusCode == 200 {
                do {
                    // 受け取ったデータをiPhoneで扱える形に変換する
                    let likeAdd: LikeAdd = try JSONDecoder().decode(LikeAdd.self, from: data)
                    likeAdd.result
                
                    print("OK")
                    // 画面描画スレッド
                    DispatchQueue.main.sync {
                        // レスポンスのデータをリストに更新する
                        //self.tableView.reloadData()
                       
                        // ローディングを停止 ( storyboardでの設定によりアニメーションを停止させると自動的に非表示になる )
                        //self.loadingView.stopAnimating()
                        
                    }
                    
                } catch {
                    print("デコードエラー")
                    
                }
                
            } else {
                print("サーバー・エラー・ステータスコード: \(response.statusCode)")
                
            }
            
        }).resume()
        
    }
    
    func LikeDeleteAPI(){
        // APIをたたく
        URLSession.shared.dataTask(with:urlLikeDeleteAPI
                           , completionHandler: { (data, response, error) in
            // エラーがあるかどうかチェック
            if let error = error {
                print("レスポンスエラー: \(error.localizedDescription)")
                return
                
            }
            // データが空かどうかチェック
            guard let data = data, let response = response as? HTTPURLResponse else {
                print("レスポンスのデータが空です")
                return
                
            }
            // データの抽出
            if response.statusCode == 200 {
                do {
                    // 受け取ったデータをiPhoneで扱える形に変換する
                    let likeDelete: LikeDelete = try JSONDecoder().decode(LikeDelete.self, from: data)
                    likeDelete.result
                
                    print("OK")
                    // 画面描画スレッド
                    DispatchQueue.main.sync {
                        // レスポンスのデータをリストに更新する
                        //self.tableView.reloadData()
                       
                        // ローディングを停止 ( storyboardでの設定によりアニメーションを停止させると自動的に非表示になる )
                        //self.loadingView.stopAnimating()
                        
                    }
                    
                } catch {
                    print("デコードエラー")
                    
                }
                
            } else {
                print("サーバー・エラー・ステータスコード: \(response.statusCode)")
                
            }
            
        }).resume()
        
    }
    
    func MailgetAPI(){
        // APIをたたく
        URLSession.shared.dataTask(with:urlMailgetAPI
                           , completionHandler: { (data, response, error) in
            // エラーがあるかどうかチェック
            if let error = error {
                print("レスポンスエラー: \(error.localizedDescription)")
                return
                
            }
            // データが空かどうかチェック
            guard let data = data, let response = response as? HTTPURLResponse else {
                print("レスポンスのデータが空です")
                return
                
            }
            // データの抽出
            if response.statusCode == 200 {
                do {
                    // 受け取ったデータをiPhoneで扱える形に変換する
                    let mailget: Mailget = try JSONDecoder().decode(Mailget.self, from: data)
                    mailget.mail_get
                
                    print("OK")
                    // 画面描画スレッド
                    DispatchQueue.main.sync {
                        // レスポンスのデータをリストに更新する
                        //self.tableView.reloadData()
                       
                        // ローディングを停止 ( storyboardでの設定によりアニメーションを停止させると自動的に非表示になる )
                        //self.loadingView.stopAnimating()
                        
                    }
                    
                } catch {
                    print("デコードエラー")
                    
                }
                
            } else {
                print("サーバー・エラー・ステータスコード: \(response.statusCode)")
                
            }
            
        }).resume()
        
    }
    
    func MailHistoryDeleteAPI(){
        // APIをたたく
        URLSession.shared.dataTask(with:urlMailHistoryDeleteAPI
                           , completionHandler: { (data, response, error) in
            // エラーがあるかどうかチェック
            if let error = error {
                print("レスポンスエラー: \(error.localizedDescription)")
                return
                
            }
            // データが空かどうかチェック
            guard let data = data, let response = response as? HTTPURLResponse else {
                print("レスポンスのデータが空です")
                return
                
            }
            // データの抽出
            if response.statusCode == 200 {
                do {
                    // 受け取ったデータをiPhoneで扱える形に変換する
                    let mailHistoryDelete: MailHistoryDelete = try JSONDecoder().decode(MailHistoryDelete.self, from: data)
                    mailHistoryDelete.mail_list_delete
                
                    print("OK")
                    // 画面描画スレッド
                    DispatchQueue.main.sync {
                        // レスポンスのデータをリストに更新する
                        //self.tableView.reloadData()
                       
                        // ローディングを停止 ( storyboardでの設定によりアニメーションを停止させると自動的に非表示になる )
                        //self.loadingView.stopAnimating()
                        
                    }
                    
                } catch {
                    print("デコードエラー")
                    
                }
                
            } else {
                print("サーバー・エラー・ステータスコード: \(response.statusCode)")
                
            }
            
        }).resume()
        
    }
    
    func MemoCategoryAPI(){
        // APIをたたく
        URLSession.shared.dataTask(with:urlMemoCategoryAPI
                           , completionHandler: { (data, response, error) in
            // エラーがあるかどうかチェック
            if let error = error {
                print("レスポンスエラー: \(error.localizedDescription)")
                return
                
            }
            // データが空かどうかチェック
            guard let data = data, let response = response as? HTTPURLResponse else {
                print("レスポンスのデータが空です")
                return
                
            }
            // データの抽出
            if response.statusCode == 200 {
                do {
                    // 受け取ったデータをiPhoneで扱える形に変換する
                    let memoCategory: MemoCategory = try JSONDecoder().decode(MemoCategory.self, from: data)
                    memoCategory.memo_category
                
                    print("OK")
                    // 画面描画スレッド
                    DispatchQueue.main.sync {
                        // レスポンスのデータをリストに更新する
                        //self.tableView.reloadData()
                       
                        // ローディングを停止 ( storyboardでの設定によりアニメーションを停止させると自動的に非表示になる )
                        //self.loadingView.stopAnimating()
                        
                    }
                    
                } catch {
                    print("デコードエラー")
                    
                }
                
            } else {
                print("サーバー・エラー・ステータスコード: \(response.statusCode)")
                
            }
            
        }).resume()
        
    }
    
    func MemoDeleteAPI(){
        // APIをたたく
        URLSession.shared.dataTask(with:urlMemoDeleteAPI
                           , completionHandler: { (data, response, error) in
            // エラーがあるかどうかチェック
            if let error = error {
                print("レスポンスエラー: \(error.localizedDescription)")
                return
                
            }
            // データが空かどうかチェック
            guard let data = data, let response = response as? HTTPURLResponse else {
                print("レスポンスのデータが空です")
                return
                
            }
            // データの抽出
            if response.statusCode == 200 {
                do {
                    // 受け取ったデータをiPhoneで扱える形に変換する
                    let memoDelete: MemoDelete = try JSONDecoder().decode(MemoDelete.self, from: data)
                    memoDelete.memo_delete
                
                    print("OK")
                    // 画面描画スレッド
                    DispatchQueue.main.sync {
                        // レスポンスのデータをリストに更新する
                        //self.tableView.reloadData()
                       
                        // ローディングを停止 ( storyboardでの設定によりアニメーションを停止させると自動的に非表示になる )
                        //self.loadingView.stopAnimating()
                        
                    }
                    
                } catch {
                    print("デコードエラー")
                    
                }
                
            } else {
                print("サーバー・エラー・ステータスコード: \(response.statusCode)")
                
            }
            
        }).resume()
        
    }
    
    func MemoWriteAPI(){
        // APIをたたく
        URLSession.shared.dataTask(with:urlMemoWriteAPI
                           , completionHandler: { (data, response, error) in
            // エラーがあるかどうかチェック
            if let error = error {
                print("レスポンスエラー: \(error.localizedDescription)")
                return
                
            }
            // データが空かどうかチェック
            guard let data = data, let response = response as? HTTPURLResponse else {
                print("レスポンスのデータが空です")
                return
                
            }
            // データの抽出
            if response.statusCode == 200 {
                do {
                    // 受け取ったデータをiPhoneで扱える形に変換する
                    let memoWrite: MemoWrite = try JSONDecoder().decode(MemoWrite.self, from: data)
                    memoWrite.memo_write
                
                    print("OK")
                    // 画面描画スレッド
                    DispatchQueue.main.sync {
                        // レスポンスのデータをリストに更新する
                        //self.tableView.reloadData()
                       
                        // ローディングを停止 ( storyboardでの設定によりアニメーションを停止させると自動的に非表示になる )
                        //self.loadingView.stopAnimating()
                        
                    }
                    
                } catch {
                    print("デコードエラー")
                    
                }
                
            } else {
                print("サーバー・エラー・ステータスコード: \(response.statusCode)")
                
            }
            
        }).resume()
        
    }
    
    func MytypeExecAPI(){
        // APIをたたく
        URLSession.shared.dataTask(with:urlMytypeExecAPI
                           , completionHandler: { (data, response, error) in
            // エラーがあるかどうかチェック
            if let error = error {
                print("レスポンスエラー: \(error.localizedDescription)")
                return
                
            }
            // データが空かどうかチェック
            guard let data = data, let response = response as? HTTPURLResponse else {
                print("レスポンスのデータが空です")
                return
                
            }
            // データの抽出
            if response.statusCode == 200 {
                do {
                    // 受け取ったデータをiPhoneで扱える形に変換する
                    let mytypeExec: MytypeExec = try JSONDecoder().decode(MytypeExec.self, from: data)
                    mytypeExec.result
                
                    print("OK")
                    // 画面描画スレッド
                    DispatchQueue.main.sync {
                        // レスポンスのデータをリストに更新する
                        //self.tableView.reloadData()
                       
                        // ローディングを停止 ( storyboardでの設定によりアニメーションを停止させると自動的に非表示になる )
                        //self.loadingView.stopAnimating()
                        
                    }
                    
                } catch {
                    print("デコードエラー")
                    
                }
                
            } else {
                print("サーバー・エラー・ステータスコード: \(response.statusCode)")
                
            }
            
        }).resume()
        
    }
    
    func MytypeStatAPI(){
        // APIをたたく
        URLSession.shared.dataTask(with:urlMytypeStatAPI
                           , completionHandler: { (data, response, error) in
            // エラーがあるかどうかチェック
            if let error = error {
                print("レスポンスエラー: \(error.localizedDescription)")
                return
                
            }
            // データが空かどうかチェック
            guard let data = data, let response = response as? HTTPURLResponse else {
                print("レスポンスのデータが空です")
                return
                
            }
            // データの抽出
            if response.statusCode == 200 {
                do {
                    // 受け取ったデータをiPhoneで扱える形に変換する
                    let mytypeStat: MytypeStat = try JSONDecoder().decode(MytypeStat.self, from: data)
                    mytypeStat.result
                
                    print("OK")
                    // 画面描画スレッド
                    DispatchQueue.main.sync {
                        // レスポンスのデータをリストに更新する
                        //self.tableView.reloadData()
                       
                        // ローディングを停止 ( storyboardでの設定によりアニメーションを停止させると自動的に非表示になる )
                        //self.loadingView.stopAnimating()
                        
                    }
                    
                } catch {
                    print("デコードエラー")
                    
                }
                
            } else {
                print("サーバー・エラー・ステータスコード: \(response.statusCode)")
                
            }
            
        }).resume()
        
    }
    
    func NotiflcationAPI(){
        // APIをたたく
        URLSession.shared.dataTask(with:urlNotiflcationAPI
                           , completionHandler: { (data, response, error) in
            // エラーがあるかどうかチェック
            if let error = error {
                print("レスポンスエラー: \(error.localizedDescription)")
                return
                
            }
            // データが空かどうかチェック
            guard let data = data, let response = response as? HTTPURLResponse else {
                print("レスポンスのデータが空です")
                return
                
            }
            // データの抽出
            if response.statusCode == 200 {
                do {
                    // 受け取ったデータをiPhoneで扱える形に変換する
                    let notiflcation: Notiflcation = try JSONDecoder().decode(Notiflcation.self, from: data)
                    notiflcation.notiflcation
                
                    print("OK")
                    // 画面描画スレッド
                    DispatchQueue.main.sync {
                        // レスポンスのデータをリストに更新する
                        //self.tableView.reloadData()
                       
                        // ローディングを停止 ( storyboardでの設定によりアニメーションを停止させると自動的に非表示になる )
                        //self.loadingView.stopAnimating()
                        
                    }
                    
                } catch {
                    print("デコードエラー")
                    
                }
                
            } else {
                print("サーバー・エラー・ステータスコード: \(response.statusCode)")
                
            }
            
        }).resume()
        
    }
    
    func NotiflcationListAPI(){
        // APIをたたく
        URLSession.shared.dataTask(with:urlNotiflcationListAPI
                           , completionHandler: { (data, response, error) in
            // エラーがあるかどうかチェック
            if let error = error {
                print("レスポンスエラー: \(error.localizedDescription)")
                return
                
            }
            // データが空かどうかチェック
            guard let data = data, let response = response as? HTTPURLResponse else {
                print("レスポンスのデータが空です")
                return
                
            }
            // データの抽出
            if response.statusCode == 200 {
                do {
                    // 受け取ったデータをiPhoneで扱える形に変換する
                    let notificationList: NotificationList = try JSONDecoder().decode(NotificationList.self, from: data)
                    notificationList.notiflcation_list
                
                    print("OK")
                    // 画面描画スレッド
                    DispatchQueue.main.sync {
                        // レスポンスのデータをリストに更新する
                        //self.tableView.reloadData()
                       
                        // ローディングを停止 ( storyboardでの設定によりアニメーションを停止させると自動的に非表示になる )
                        //self.loadingView.stopAnimating()
                        
                    }
                    
                } catch {
                    print("デコードエラー")
                    
                }
                
            } else {
                print("サーバー・エラー・ステータスコード: \(response.statusCode)")
                
            }
            
        }).resume()
        
    }
    
    func ProfileDetailPhptoAPI(){
        // APIをたたく
        URLSession.shared.dataTask(with:urlProfileDetailPhptoAPI
                           , completionHandler: { (data, response, error) in
            // エラーがあるかどうかチェック
            if let error = error {
                print("レスポンスエラー: \(error.localizedDescription)")
                return
                
            }
            // データが空かどうかチェック
            guard let data = data, let response = response as? HTTPURLResponse else {
                print("レスポンスのデータが空です")
                return
                
            }
            // データの抽出
            if response.statusCode == 200 {
                do {
                    // 受け取ったデータをiPhoneで扱える形に変換する
                    let profileDetailPhpto: ProfileDetailPhpto = try JSONDecoder().decode(ProfileDetailPhpto.self, from: data)
                    profileDetailPhpto.result
                
                    print("OK")
                    // 画面描画スレッド
                    DispatchQueue.main.sync {
                        // レスポンスのデータをリストに更新する
                        //self.tableView.reloadData()
                       
                        // ローディングを停止 ( storyboardでの設定によりアニメーションを停止させると自動的に非表示になる )
                        //self.loadingView.stopAnimating()
                        
                    }
                    
                } catch {
                    print("デコードエラー")
                    
                }
                
            } else {
                print("サーバー・エラー・ステータスコード: \(response.statusCode)")
                
            }
            
        }).resume()
        
    }
    
    func ProfileDetallAPI(){
        // APIをたたく
        URLSession.shared.dataTask(with:urlProfileDetallAPI
                           , completionHandler: { (data, response, error) in
            // エラーがあるかどうかチェック
            if let error = error {
                print("レスポンスエラー: \(error.localizedDescription)")
                return
                
            }
            // データが空かどうかチェック
            guard let data = data, let response = response as? HTTPURLResponse else {
                print("レスポンスのデータが空です")
                return
                
            }
            // データの抽出
            if response.statusCode == 200 {
                do {
                    // 受け取ったデータをiPhoneで扱える形に変換する
                    let profileDetall: ProfileDetall = try JSONDecoder().decode(ProfileDetall.self, from: data)
                    profileDetall.list
                            
                    print("OK")
                    // 画面描画スレッド
                    DispatchQueue.main.sync {
                        // レスポンスのデータをリストに更新する
                        //self.tableView.reloadData()
                       
                        // ローディングを停止 ( storyboardでの設定によりアニメーションを停止させると自動的に非表示になる )
                        //self.loadingView.stopAnimating()
                        
                    }
                    
                } catch {
                    print("デコードエラー")
                    
                }
                
            } else {
                print("サーバー・エラー・ステータスコード: \(response.statusCode)")
                
            }
            
        }).resume()
        
    }
    
    func ProfilePhotoAPI(){
        // APIをたたく
        URLSession.shared.dataTask(with:urlProfilePhotoAPI
                           , completionHandler: { (data, response, error) in
            // エラーがあるかどうかチェック
            if let error = error {
                print("レスポンスエラー: \(error.localizedDescription)")
                return
                
            }
            // データが空かどうかチェック
            guard let data = data, let response = response as? HTTPURLResponse else {
                print("レスポンスのデータが空です")
                return
                
            }
            // データの抽出
            if response.statusCode == 200 {
                do {
                    // 受け取ったデータをiPhoneで扱える形に変換する
                    let profilePhoto: ProfilePhoto = try JSONDecoder().decode(ProfilePhoto.self, from: data)
                    profilePhoto.result
                
                    print("OK")
                    // 画面描画スレッド
                    DispatchQueue.main.sync {
                        // レスポンスのデータをリストに更新する
                        //self.tableView.reloadData()
                       
                        // ローディングを停止 ( storyboardでの設定によりアニメーションを停止させると自動的に非表示になる )
                        //self.loadingView.stopAnimating()
                        
                    }
                    
                } catch {
                    print("デコードエラー")
                    
                }
                
            } else {
                print("サーバー・エラー・ステータスコード: \(response.statusCode)")
                
            }
            
        }).resume()
        
    }
    
    func R18IsauthorizedAPI(){
        // APIをたたく
        URLSession.shared.dataTask(with:urlR18IsauthorizedAPI
                           , completionHandler: { (data, response, error) in
            // エラーがあるかどうかチェック
            if let error = error {
                print("レスポンスエラー: \(error.localizedDescription)")
                return
                
            }
            // データが空かどうかチェック
            guard let data = data, let response = response as? HTTPURLResponse else {
                print("レスポンスのデータが空です")
                return
                
            }
            // データの抽出
            if response.statusCode == 200 {
                do {
                    // 受け取ったデータをiPhoneで扱える形に変換する
                    let r18Isauthorized: R18Isauthorized = try JSONDecoder().decode(R18Isauthorized.self, from: data)
                    r18Isauthorized.r18_isauthorized

                    print("OK")
                    // 画面描画スレッド
                    DispatchQueue.main.sync {
                        // レスポンスのデータをリストに更新する
                        //self.tableView.reloadData()
                       
                        // ローディングを停止 ( storyboardでの設定によりアニメーションを停止させると自動的に非表示になる )
                        //self.loadingView.stopAnimating()
                        
                    }
                    
                } catch {
                    print("デコードエラー")
                    
                }
                
            } else {
                print("サーバー・エラー・ステータスコード: \(response.statusCode)")
                
            }
            
        }).resume()
        
    }
    
    func R18PhotoreceivedAPI(){
        // APIをたたく
        URLSession.shared.dataTask(with:urlR18PhotoreceivedAPI
                           , completionHandler: { (data, response, error) in
            // エラーがあるかどうかチェック
            if let error = error {
                print("レスポンスエラー: \(error.localizedDescription)")
                return
                
            }
            // データが空かどうかチェック
            guard let data = data, let response = response as? HTTPURLResponse else {
                print("レスポンスのデータが空です")
                return
                
            }
            // データの抽出
            if response.statusCode == 200 {
                do {
                    // 受け取ったデータをiPhoneで扱える形に変換する
                    let r18Photoreceived: R18Photoreceived = try JSONDecoder().decode(R18Photoreceived.self, from: data)
                    r18Photoreceived.r18_iphotoreceived
    
                    print("OK")
                    // 画面描画スレッド
                    DispatchQueue.main.sync {
                        // レスポンスのデータをリストに更新する
                        //self.tableView.reloadData()
                       
                        // ローディングを停止 ( storyboardでの設定によりアニメーションを停止させると自動的に非表示になる )
                        //self.loadingView.stopAnimating()
                        
                    }
                    
                } catch {
                    print("デコードエラー")
                    
                }
                
            } else {
                print("サーバー・エラー・ステータスコード: \(response.statusCode)")
                
            }
            
        }).resume()
        
    }
    
    func ReRegisterAPI(){
        // APIをたたく
        URLSession.shared.dataTask(with:urlReRegisterAPI
                           , completionHandler: { (data, response, error) in
            // エラーがあるかどうかチェック
            if let error = error {
                print("レスポンスエラー: \(error.localizedDescription)")
                return
                
            }
            // データが空かどうかチェック
            guard let data = data, let response = response as? HTTPURLResponse else {
                print("レスポンスのデータが空です")
                return
                
            }
            // データの抽出
            if response.statusCode == 200 {
                do {
                    // 受け取ったデータをiPhoneで扱える形に変換する
                    let reRegister: ReRegister = try JSONDecoder().decode(ReRegister.self, from: data)
                    reRegister.errors
                    reRegister.member
    
                    print("OK")
                    // 画面描画スレッド
                    DispatchQueue.main.sync {
                        // レスポンスのデータをリストに更新する
                        //self.tableView.reloadData()
                       
                        // ローディングを停止 ( storyboardでの設定によりアニメーションを停止させると自動的に非表示になる )
                        //self.loadingView.stopAnimating()
                        
                    }
                    
                } catch {
                    print("デコードエラー")
                    
                }
                
            } else {
                print("サーバー・エラー・ステータスコード: \(response.statusCode)")
                
            }
            
        }).resume()
        
    }
    
    func ResignAPI(){
        // APIをたたく
        URLSession.shared.dataTask(with:urlResignAPI
                           , completionHandler: { (data, response, error) in
            // エラーがあるかどうかチェック
            if let error = error {
                print("レスポンスエラー: \(error.localizedDescription)")
                return
                
            }
            // データが空かどうかチェック
            guard let data = data, let response = response as? HTTPURLResponse else {
                print("レスポンスのデータが空です")
                return
                
            }
            // データの抽出
            if response.statusCode == 200 {
                do {
                    // 受け取ったデータをiPhoneで扱える形に変換する
                    let resign: Resign = try JSONDecoder().decode(Resign.self, from: data)
                    resign.result
    
                    print("OK")
                    // 画面描画スレッド
                    DispatchQueue.main.sync {
                        // レスポンスのデータをリストに更新する
                        //self.tableView.reloadData()
                       
                        // ローディングを停止 ( storyboardでの設定によりアニメーションを停止させると自動的に非表示になる )
                        //self.loadingView.stopAnimating()
                        
                    }
                    
                } catch {
                    print("デコードエラー")
                    
                }
                
            } else {
                print("サーバー・エラー・ステータスコード: \(response.statusCode)")
                
            }
            
        }).resume()
        
    }
    
    func SmileDeleteAPI(){
        // APIをたたく
        URLSession.shared.dataTask(with:urlSmileDeleteAPI
                           , completionHandler: { (data, response, error) in
            // エラーがあるかどうかチェック
            if let error = error {
                print("レスポンスエラー: \(error.localizedDescription)")
                return
                
            }
            // データが空かどうかチェック
            guard let data = data, let response = response as? HTTPURLResponse else {
                print("レスポンスのデータが空です")
                return
                
            }
            // データの抽出
            if response.statusCode == 200 {
                do {
                    // 受け取ったデータをiPhoneで扱える形に変換する
                    let smileDelete: SmileDelete = try JSONDecoder().decode(SmileDelete.self, from: data)
                    smileDelete.smile_delete
    
                    print("OK")
                    // 画面描画スレッド
                    DispatchQueue.main.sync {
                        // レスポンスのデータをリストに更新する
                        //self.tableView.reloadData()
                       
                        // ローディングを停止 ( storyboardでの設定によりアニメーションを停止させると自動的に非表示になる )
                        //self.loadingView.stopAnimating()
                        
                    }
                    
                } catch {
                    print("デコードエラー")
                    
                }
                
            } else {
                print("サーバー・エラー・ステータスコード: \(response.statusCode)")
                
            }
            
        }).resume()
        
    }
    
    func StartupAPI(){
        // APIをたたく
        URLSession.shared.dataTask(with:urlStartupAPI
                           , completionHandler: { (data, response, error) in
            // エラーがあるかどうかチェック
            if let error = error {
                print("レスポンスエラー: \(error.localizedDescription)")
                return
                
            }
            // データが空かどうかチェック
            guard let data = data, let response = response as? HTTPURLResponse else {
                print("レスポンスのデータが空です")
                return
                
            }
            // データの抽出
            if response.statusCode == 200 {
                do {
                    // 受け取ったデータをiPhoneで扱える形に変換する
                    let startup: Startup = try JSONDecoder().decode(Startup.self, from: data)
                    startup.push_startup
                    
    
                    print("OK")
                    // 画面描画スレッド
                    DispatchQueue.main.sync {
                        // レスポンスのデータをリストに更新する
                        //self.tableView.reloadData()
                       
                        // ローディングを停止 ( storyboardでの設定によりアニメーションを停止させると自動的に非表示になる )
                        //self.loadingView.stopAnimating()
                        
                    }
                    
                } catch {
                    print("デコードエラー")
                    
                }
                
            } else {
                print("サーバー・エラー・ステータスコード: \(response.statusCode)")
                
            }
            
        }).resume()
        
    }
    
    func TalkAPI(){
        // APIをたたく
        URLSession.shared.dataTask(with:urlTalkAPI
                           , completionHandler: { (data, response, error) in
            // エラーがあるかどうかチェック
            if let error = error {
                print("レスポンスエラー: \(error.localizedDescription)")
                return
                
            }
            // データが空かどうかチェック
            guard let data = data, let response = response as? HTTPURLResponse else {
                print("レスポンスのデータが空です")
                return
                
            }
            // データの抽出
            if response.statusCode == 200 {
                do {
                    // 受け取ったデータをiPhoneで扱える形に変換する
                    let talk: Talk = try JSONDecoder().decode(Talk.self, from: data)
                    talk.member
                    
    
                    print("OK")
                    // 画面描画スレッド
                    DispatchQueue.main.sync {
                        // レスポンスのデータをリストに更新する
                        //self.tableView.reloadData()
                       
                        // ローディングを停止 ( storyboardでの設定によりアニメーションを停止させると自動的に非表示になる )
                        //self.loadingView.stopAnimating()
                        
                    }
                    
                } catch {
                    print("デコードエラー")
                    
                }
                
            } else {
                print("サーバー・エラー・ステータスコード: \(response.statusCode)")
                
            }
            
        }).resume()
        
    }
    
    func TalkCommentDeleteAPI(){
        // APIをたたく
        URLSession.shared.dataTask(with:urlTalkCommentDeleteAPI
                           , completionHandler: { (data, response, error) in
            // エラーがあるかどうかチェック
            if let error = error {
                print("レスポンスエラー: \(error.localizedDescription)")
                return
                
            }
            // データが空かどうかチェック
            guard let data = data, let response = response as? HTTPURLResponse else {
                print("レスポンスのデータが空です")
                return
                
            }
            // データの抽出
            if response.statusCode == 200 {
                do {
                    // 受け取ったデータをiPhoneで扱える形に変換する
                    let talkCommentDelete: TalkCommentDelete = try JSONDecoder().decode(TalkCommentDelete.self, from: data)
                    talkCommentDelete.result
    
                    print("OK")
                    // 画面描画スレッド
                    DispatchQueue.main.sync {
                        // レスポンスのデータをリストに更新する
                        //self.tableView.reloadData()
                       
                        // ローディングを停止 ( storyboardでの設定によりアニメーションを停止させると自動的に非表示になる )
                        //self.loadingView.stopAnimating()
                        
                    }
                    
                } catch {
                    print("デコードエラー")
                    
                }
                
            } else {
                print("サーバー・エラー・ステータスコード: \(response.statusCode)")
                
            }
            
        }).resume()
        
    }
    
    func SmileAPI(){
        // APIをたたく
        URLSession.shared.dataTask(with:urlSmileAPI
                           , completionHandler: { (data, response, error) in
            // エラーがあるかどうかチェック
            if let error = error {
                print("レスポンスエラー: \(error.localizedDescription)")
                return
                
            }
            // データが空かどうかチェック
            guard let data = data, let response = response as? HTTPURLResponse else {
                print("レスポンスのデータが空です")
                return
                
            }
            // データの抽出
            if response.statusCode == 200 {
                do {
                    // 受け取ったデータをiPhoneで扱える形に変換する
                    let smile: Smile = try JSONDecoder().decode(Smile.self, from: data)
                    smile.result
    
                    print("OK")
                    // 画面描画スレッド
                    DispatchQueue.main.sync {
                        // レスポンスのデータをリストに更新する
                        //self.tableView.reloadData()
                       
                        // ローディングを停止 ( storyboardでの設定によりアニメーションを停止させると自動的に非表示になる )
                        //self.loadingView.stopAnimating()
                        
                    }
                    
                } catch {
                    print("デコードエラー")
                    
                }
                
            } else {
                print("サーバー・エラー・ステータスコード: \(response.statusCode)")
                
            }
            
        }).resume()
        
    }
    
    func TalkCommentPostAPI(){
        // APIをたたく
        URLSession.shared.dataTask(with:urlTalkCommentPostAPI
                           , completionHandler: { (data, response, error) in
            // エラーがあるかどうかチェック
            if let error = error {
                print("レスポンスエラー: \(error.localizedDescription)")
                return
                
            }
            // データが空かどうかチェック
            guard let data = data, let response = response as? HTTPURLResponse else {
                print("レスポンスのデータが空です")
                return
                
            }
            // データの抽出
            if response.statusCode == 200 {
                do {
                    // 受け取ったデータをiPhoneで扱える形に変換する
                    let talkCommentPost: TalkCommentPost = try JSONDecoder().decode(TalkCommentPost.self, from: data)
                    talkCommentPost.result
    
                    print("OK")
                    // 画面描画スレッド
                    DispatchQueue.main.sync {
                        // レスポンスのデータをリストに更新する
                        //self.tableView.reloadData()
                       
                        // ローディングを停止 ( storyboardでの設定によりアニメーションを停止させると自動的に非表示になる )
                        //self.loadingView.stopAnimating()
                        
                    }
                    
                } catch {
                    print("デコードエラー")
                    
                }
                
            } else {
                print("サーバー・エラー・ステータスコード: \(response.statusCode)")
                
            }
            
        }).resume()
        
    }
    
    func TalkDeleteAPI(){
        // APIをたたく
        URLSession.shared.dataTask(with:urlTalkDeleteAPI
                           , completionHandler: { (data, response, error) in
            // エラーがあるかどうかチェック
            if let error = error {
                print("レスポンスエラー: \(error.localizedDescription)")
                return
                
            }
            // データが空かどうかチェック
            guard let data = data, let response = response as? HTTPURLResponse else {
                print("レスポンスのデータが空です")
                return
                
            }
            // データの抽出
            if response.statusCode == 200 {
                do {
                    // 受け取ったデータをiPhoneで扱える形に変換する
                    let talkDelete: TalkDelete = try JSONDecoder().decode(TalkDelete.self, from: data)
                    talkDelete.result
    
                    print("OK")
                    // 画面描画スレッド
                    DispatchQueue.main.sync {
                        // レスポンスのデータをリストに更新する
                        //self.tableView.reloadData()
                       
                        // ローディングを停止 ( storyboardでの設定によりアニメーションを停止させると自動的に非表示になる )
                        //self.loadingView.stopAnimating()
                        
                    }
                    
                } catch {
                    print("デコードエラー")
                    
                }
                
            } else {
                print("サーバー・エラー・ステータスコード: \(response.statusCode)")
                
            }
            
        }).resume()
        
    }
    
    func TelGetAPI(){
        // APIをたたく
        URLSession.shared.dataTask(with:urlTelGetAPI
                           , completionHandler: { (data, response, error) in
            // エラーがあるかどうかチェック
            if let error = error {
                print("レスポンスエラー: \(error.localizedDescription)")
                return
                
            }
            // データが空かどうかチェック
            guard let data = data, let response = response as? HTTPURLResponse else {
                print("レスポンスのデータが空です")
                return
                
            }
            // データの抽出
            if response.statusCode == 200 {
                do {
                    // 受け取ったデータをiPhoneで扱える形に変換する
                    let telGet: TelGet = try JSONDecoder().decode(TelGet.self, from: data)
                    telGet.tel_get
    
                    print("OK")
                    // 画面描画スレッド
                    DispatchQueue.main.sync {
                        // レスポンスのデータをリストに更新する
                        //self.tableView.reloadData()
                       
                        // ローディングを停止 ( storyboardでの設定によりアニメーションを停止させると自動的に非表示になる )
                        //self.loadingView.stopAnimating()
                        
                    }
                    
                } catch {
                    print("デコードエラー")
                    
                }
                
            } else {
                print("サーバー・エラー・ステータスコード: \(response.statusCode)")
                
            }
            
        }).resume()
        
    }
    
    func AccessAPI(){
        // APIをたたく
        URLSession.shared.dataTask(with:urlAccessAPI
                           , completionHandler: { (data, response, error) in
            // エラーがあるかどうかチェック
            if let error = error {
                print("レスポンスエラー: \(error.localizedDescription)")
                return
                
            }
            // データが空かどうかチェック
            guard let data = data, let response = response as? HTTPURLResponse else {
                print("レスポンスのデータが空です")
                return
                
            }
            // データの抽出
            if response.statusCode == 200 {
                do {
                    // 受け取ったデータをiPhoneで扱える形に変換する
                    let access: Access = try JSONDecoder().decode(Access.self, from: data)
                    access.access
    
                    print("OK")
                    // 画面描画スレッド
                    DispatchQueue.main.sync {
                        // レスポンスのデータをリストに更新する
                        //self.tableView.reloadData()
                       
                        // ローディングを停止 ( storyboardでの設定によりアニメーションを停止させると自動的に非表示になる )
                        //self.loadingView.stopAnimating()
                        
                    }
                    
                } catch {
                    print("デコードエラー")
                    
                }
                
            } else {
                print("サーバー・エラー・ステータスコード: \(response.statusCode)")
                
            }
            
        }).resume()
        
    }
    
    func BbsNameListAPI(){
        // APIをたたく
        URLSession.shared.dataTask(with:urlBbsNameListAPI
                           , completionHandler: { (data, response, error) in
            // エラーがあるかどうかチェック
            if let error = error {
                print("レスポンスエラー: \(error.localizedDescription)")
                return
                
            }
            // データが空かどうかチェック
            guard let data = data, let response = response as? HTTPURLResponse else {
                print("レスポンスのデータが空です")
                return
                
            }
            // データの抽出
            if response.statusCode == 200 {
                do {
                    // 受け取ったデータをiPhoneで扱える形に変換する
                    let bbsNameList: BbsNameList = try JSONDecoder().decode(BbsNameList.self, from: data)
                    bbsNameList.result
    
                    print("OK")
                    // 画面描画スレッド
                    DispatchQueue.main.sync {
                        // レスポンスのデータをリストに更新する
                        //self.tableView.reloadData()
                       
                        // ローディングを停止 ( storyboardでの設定によりアニメーションを停止させると自動的に非表示になる )
                        //self.loadingView.stopAnimating()
                        
                    }
                    
                } catch {
                    print("デコードエラー")
                    
                }
                
            } else {
                print("サーバー・エラー・ステータスコード: \(response.statusCode)")
                
            }
            
        }).resume()
        
    }
    
    func BbsReceivedMailListAPI(){
        // APIをたたく
        URLSession.shared.dataTask(with:urlBbsReceivedMailListAPI
                           , completionHandler: { (data, response, error) in
            // エラーがあるかどうかチェック
            if let error = error {
                print("レスポンスエラー: \(error.localizedDescription)")
                return
                
            }
            // データが空かどうかチェック
            guard let data = data, let response = response as? HTTPURLResponse else {
                print("レスポンスのデータが空です")
                return
                
            }
            // データの抽出
            if response.statusCode == 200 {
                do {
                    // 受け取ったデータをiPhoneで扱える形に変換する
                    let bbsReceivedMailList: BbsReceivedMailList = try JSONDecoder().decode(BbsReceivedMailList.self, from: data)
                    bbsReceivedMailList.rmember_list
    
                    print("OK")
                    // 画面描画スレッド
                    DispatchQueue.main.sync {
                        // レスポンスのデータをリストに更新する
                        //self.tableView.reloadData()
                       
                        // ローディングを停止 ( storyboardでの設定によりアニメーションを停止させると自動的に非表示になる )
                        //self.loadingView.stopAnimating()
                        
                    }
                    
                } catch {
                    print("デコードエラー")
                    
                }
                
            } else {
                print("サーバー・エラー・ステータスコード: \(response.statusCode)")
                
            }
            
        }).resume()
        
    }
    
    func DenyListAPI(){
        // APIをたたく
        URLSession.shared.dataTask(with:urlDenyListAPI
                           , completionHandler: { (data, response, error) in
            // エラーがあるかどうかチェック
            if let error = error {
                print("レスポンスエラー: \(error.localizedDescription)")
                return
                
            }
            // データが空かどうかチェック
            guard let data = data, let response = response as? HTTPURLResponse else {
                print("レスポンスのデータが空です")
                return
                
            }
            // データの抽出
            if response.statusCode == 200 {
                do {
                    // 受け取ったデータをiPhoneで扱える形に変換する
                    let denyList: DenyList = try JSONDecoder().decode(DenyList.self, from: data)
                    denyList.deny_list
                    
                    print("OK")
                    // 画面描画スレッド
                    DispatchQueue.main.sync {
                        // レスポンスのデータをリストに更新する
                        //self.tableView.reloadData()
                       
                        // ローディングを停止 ( storyboardでの設定によりアニメーションを停止させると自動的に非表示になる )
                        //self.loadingView.stopAnimating()
                        
                    }
                    
                } catch {
                    print("デコードエラー")
                    
                }
                
            } else {
                print("サーバー・エラー・ステータスコード: \(response.statusCode)")
                
            }
            
        }).resume()
        
    }
    
    func FootprintAPI(){
        // APIをたたく
        URLSession.shared.dataTask(with:urlFootprintAPI
                           , completionHandler: { (data, response, error) in
            // エラーがあるかどうかチェック
            if let error = error {
                print("レスポンスエラー: \(error.localizedDescription)")
                return
                
            }
            // データが空かどうかチェック
            guard let data = data, let response = response as? HTTPURLResponse else {
                print("レスポンスのデータが空です")
                return
                
            }
            // データの抽出
            if response.statusCode == 200 {
                do {
                    // 受け取ったデータをiPhoneで扱える形に変換する
                    let fotprint: Fotprint = try JSONDecoder().decode(Fotprint.self, from: data)
                    fotprint.status
                    fotprint.list
                    fotprint.list_num
                    fotprint.current_page
                    fotprint.total_num
                    fotprint.tody
                    
                    print("OK")
                    // 画面描画スレッド
                    DispatchQueue.main.sync {
                        // レスポンスのデータをリストに更新する
                        //self.tableView.reloadData()
                       
                        // ローディングを停止 ( storyboardでの設定によりアニメーションを停止させると自動的に非表示になる )
                        //self.loadingView.stopAnimating()
                        
                    }
                    
                } catch {
                    print("デコードエラー")
                    
                }
                
            } else {
                print("サーバー・エラー・ステータスコード: \(response.statusCode)")
                
            }
            
        }).resume()
        
    }
    
    func MailBoxAPI(){
        // APIをたたく
        URLSession.shared.dataTask(with:urlMailBoxAPI
                           , completionHandler: { (data, response, error) in
            // エラーがあるかどうかチェック
            if let error = error {
                print("レスポンスエラー: \(error.localizedDescription)")
                return
                
            }
            // データが空かどうかチェック
            guard let data = data, let response = response as? HTTPURLResponse else {
                print("レスポンスのデータが空です")
                return
                
            }
            // データの抽出
            if response.statusCode == 200 {
                do {
                    // 受け取ったデータをiPhoneで扱える形に変換する
                    let mailBox: MailBox = try JSONDecoder().decode(MailBox.self, from: data)
                    mailBox.mail_box
                    
                    print("OK")
                    // 画面描画スレッド
                    DispatchQueue.main.sync {
                        // レスポンスのデータをリストに更新する
                        //self.tableView.reloadData()
                       
                        // ローディングを停止 ( storyboardでの設定によりアニメーションを停止させると自動的に非表示になる )
                        //self.loadingView.stopAnimating()
                        
                    }
                    
                } catch {
                    print("デコードエラー")
                    
                }
                
            } else {
                print("サーバー・エラー・ステータスコード: \(response.statusCode)")
                
            }
            
        }).resume()
        
    }
    
    func MailCheckAPI(){
        // APIをたたく
        URLSession.shared.dataTask(with:urlMailCheckAPI
                           , completionHandler: { (data, response, error) in
            // エラーがあるかどうかチェック
            if let error = error {
                print("レスポンスエラー: \(error.localizedDescription)")
                return
                
            }
            // データが空かどうかチェック
            guard let data = data, let response = response as? HTTPURLResponse else {
                print("レスポンスのデータが空です")
                return
                
            }
            // データの抽出
            if response.statusCode == 200 {
                do {
                    // 受け取ったデータをiPhoneで扱える形に変換する
                    let mailCheck: MailCheck = try JSONDecoder().decode(MailCheck.self, from: data)
                    mailCheck.mail_check
                    
                    print("OK")
                    // 画面描画スレッド
                    DispatchQueue.main.sync {
                        // レスポンスのデータをリストに更新する
                        //self.tableView.reloadData()
                       
                        // ローディングを停止 ( storyboardでの設定によりアニメーションを停止させると自動的に非表示になる )
                        //self.loadingView.stopAnimating()
                        
                    }
                    
                } catch {
                    print("デコードエラー")
                    
                }
                
            } else {
                print("サーバー・エラー・ステータスコード: \(response.statusCode)")
                
            }
            
        }).resume()
        
    }
    
    func MailHistoryAPI(){
        // APIをたたく
        URLSession.shared.dataTask(with:urlMailHistoryAPI
                           , completionHandler: { (data, response, error) in
            // エラーがあるかどうかチェック
            if let error = error {
                print("レスポンスエラー: \(error.localizedDescription)")
                return
                
            }
            // データが空かどうかチェック
            guard let data = data, let response = response as? HTTPURLResponse else {
                print("レスポンスのデータが空です")
                return
                
            }
            // データの抽出
            if response.statusCode == 200 {
                do {
                    // 受け取ったデータをiPhoneで扱える形に変換する
                    let mailHistory: MailHistory = try JSONDecoder().decode(MailHistory.self, from: data)
                    mailHistory.status
                    mailHistory.mail_list
                    
                    print("OK")
                    // 画面描画スレッド
                    DispatchQueue.main.sync {
                        // レスポンスのデータをリストに更新する
                        //self.tableView.reloadData()
                       
                        // ローディングを停止 ( storyboardでの設定によりアニメーションを停止させると自動的に非表示になる )
                        //self.loadingView.stopAnimating()
                        
                    }
                    
                } catch {
                    print("デコードエラー")
                    
                }
                
            } else {
                print("サーバー・エラー・ステータスコード: \(response.statusCode)")
                
            }
            
        }).resume()
        
    }
    
    func MailSendAPI(){
        // APIをたたく
        URLSession.shared.dataTask(with:urlMailSendAPI
                           , completionHandler: { (data, response, error) in
            // エラーがあるかどうかチェック
            if let error = error {
                print("レスポンスエラー: \(error.localizedDescription)")
                return
                
            }
            // データが空かどうかチェック
            guard let data = data, let response = response as? HTTPURLResponse else {
                print("レスポンスのデータが空です")
                return
                
            }
            // データの抽出
            if response.statusCode == 200 {
                do {
                    // 受け取ったデータをiPhoneで扱える形に変換する
                    let mailSend: MailSend = try JSONDecoder().decode(MailSend.self, from: data)
                    mailSend.mail_send
                    
                    print("OK")
                    // 画面描画スレッド
                    DispatchQueue.main.sync {
                        // レスポンスのデータをリストに更新する
                        //self.tableView.reloadData()
                       
                        // ローディングを停止 ( storyboardでの設定によりアニメーションを停止させると自動的に非表示になる )
                        //self.loadingView.stopAnimating()
                        
                    }
                    
                } catch {
                    print("デコードエラー")
                    
                }
                
            } else {
                print("サーバー・エラー・ステータスコード: \(response.statusCode)")
                
            }
            
        }).resume()
        
    }
    
    func MytypeListAPI(){
        // APIをたたく
        URLSession.shared.dataTask(with:urlMytypeListAPI
                           , completionHandler: { (data, response, error) in
            // エラーがあるかどうかチェック
            if let error = error {
                print("レスポンスエラー: \(error.localizedDescription)")
                return
                
            }
            // データが空かどうかチェック
            guard let data = data, let response = response as? HTTPURLResponse else {
                print("レスポンスのデータが空です")
                return
                
            }
            // データの抽出
            if response.statusCode == 200 {
                do {
                    // 受け取ったデータをiPhoneで扱える形に変換する
                    let mytypeList: MytypeList = try JSONDecoder().decode(MytypeList.self, from: data)
                    mytypeList.result
                    
                    print("OK")
                    // 画面描画スレッド
                    DispatchQueue.main.sync {
                        // レスポンスのデータをリストに更新する
                        //self.tableView.reloadData()
                       
                        // ローディングを停止 ( storyboardでの設定によりアニメーションを停止させると自動的に非表示になる )
                        //self.loadingView.stopAnimating()
                        
                    }
                    
                } catch {
                    print("デコードエラー")
                    
                }
                
            } else {
                print("サーバー・エラー・ステータスコード: \(response.statusCode)")
                
            }
            
        }).resume()
        
    }
    
    func PushListAPI(){
        // APIをたたく
        URLSession.shared.dataTask(with:urlPushListAPI
                           , completionHandler: { (data, response, error) in
            // エラーがあるかどうかチェック
            if let error = error {
                print("レスポンスエラー: \(error.localizedDescription)")
                return
                
            }
            // データが空かどうかチェック
            guard let data = data, let response = response as? HTTPURLResponse else {
                print("レスポンスのデータが空です")
                return
                
            }
            // データの抽出
            if response.statusCode == 200 {
                do {
                    // 受け取ったデータをiPhoneで扱える形に変換する
                    let pushList: PushList = try JSONDecoder().decode(PushList.self, from: data)
                    pushList.push_list
                    
                    
                    print("OK")
                    // 画面描画スレッド
                    DispatchQueue.main.sync {
                        // レスポンスのデータをリストに更新する
                        //self.tableView.reloadData()
                       
                        // ローディングを停止 ( storyboardでの設定によりアニメーションを停止させると自動的に非表示になる )
                        //self.loadingView.stopAnimating()
                        
                    }
                    
                } catch {
                    print("デコードエラー")
                    
                }
                
            } else {
                print("サーバー・エラー・ステータスコード: \(response.statusCode)")
                
            }
            
        }).resume()
        
    }
    
    func PushSettingAPI(){
        // APIをたたく
        URLSession.shared.dataTask(with:urlPushSettingAPI
                           , completionHandler: { (data, response, error) in
            // エラーがあるかどうかチェック
            if let error = error {
                print("レスポンスエラー: \(error.localizedDescription)")
                return
                
            }
            // データが空かどうかチェック
            guard let data = data, let response = response as? HTTPURLResponse else {
                print("レスポンスのデータが空です")
                return
                
            }
            // データの抽出
            if response.statusCode == 200 {
                do {
                    // 受け取ったデータをiPhoneで扱える形に変換する
                    let pushSetting: PushSetting = try JSONDecoder().decode(PushSetting.self, from: data)
                    pushSetting.push_setting
                    
                    
                    print("OK")
                    // 画面描画スレッド
                    DispatchQueue.main.sync {
                        // レスポンスのデータをリストに更新する
                        //self.tableView.reloadData()
                       
                        // ローディングを停止 ( storyboardでの設定によりアニメーションを停止させると自動的に非表示になる )
                        //self.loadingView.stopAnimating()
                        
                    }
                    
                } catch {
                    print("デコードエラー")
                    
                }
                
            } else {
                print("サーバー・エラー・ステータスコード: \(response.statusCode)")
                
            }
            
        }).resume()
        
    }
    
    func RegisterUpdateTelAPI(){
        // APIをたたく
        URLSession.shared.dataTask(with:urlRegisterUpdateTelAPI
                           , completionHandler: { (data, response, error) in
            // エラーがあるかどうかチェック
            if let error = error {
                print("レスポンスエラー: \(error.localizedDescription)")
                return
                
            }
            // データが空かどうかチェック
            guard let data = data, let response = response as? HTTPURLResponse else {
                print("レスポンスのデータが空です")
                return
                
            }
            // データの抽出
            if response.statusCode == 200 {
                do {
                    // 受け取ったデータをiPhoneで扱える形に変換する
                    let registerUpdateTel: RegisterUpdateTel = try JSONDecoder().decode(RegisterUpdateTel.self, from: data)
                    registerUpdateTel.errors
                    registerUpdateTel.register_update_telv2
                    
                    
                    print("OK")
                    // 画面描画スレッド
                    DispatchQueue.main.sync {
                        // レスポンスのデータをリストに更新する
                        //self.tableView.reloadData()
                       
                        // ローディングを停止 ( storyboardでの設定によりアニメーションを停止させると自動的に非表示になる )
                        //self.loadingView.stopAnimating()
                        
                    }
                    
                } catch {
                    print("デコードエラー")
                    
                }
                
            } else {
                print("サーバー・エラー・ステータスコード: \(response.statusCode)")
                
            }
            
        }).resume()
        
    }
    
    func BbsChangeStatusAPI(){
        // APIをたたく
        URLSession.shared.dataTask(with:urlBbsChangeStatusAPI
                           , completionHandler: { (data, response, error) in
            // エラーがあるかどうかチェック
            if let error = error {
                print("レスポンスエラー: \(error.localizedDescription)")
                return
                
            }
            // データが空かどうかチェック
            guard let data = data, let response = response as? HTTPURLResponse else {
                print("レスポンスのデータが空です")
                return
                
            }
            // データの抽出
            if response.statusCode == 200 {
                do {
                    // 受け取ったデータをiPhoneで扱える形に変換する
                    let bbsChangeStatus: BbsChangeStatus = try JSONDecoder().decode(BbsChangeStatus.self, from: data)
                    bbsChangeStatus.result
                    
                    
                    print("OK")
                    // 画面描画スレッド
                    DispatchQueue.main.sync {
                        // レスポンスのデータをリストに更新する
                        //self.tableView.reloadData()
                       
                        // ローディングを停止 ( storyboardでの設定によりアニメーションを停止させると自動的に非表示になる )
                        //self.loadingView.stopAnimating()
                        
                    }
                    
                } catch {
                    print("デコードエラー")
                    
                }
                
            } else {
                print("サーバー・エラー・ステータスコード: \(response.statusCode)")
                
            }
            
        }).resume()
        
    }
    
    func BbsCheckAPI(){
        // APIをたたく
        URLSession.shared.dataTask(with:urlBbsCheckAPI
                           , completionHandler: { (data, response, error) in
            // エラーがあるかどうかチェック
            if let error = error {
                print("レスポンスエラー: \(error.localizedDescription)")
                return
                
            }
            // データが空かどうかチェック
            guard let data = data, let response = response as? HTTPURLResponse else {
                print("レスポンスのデータが空です")
                return
                
            }
            // データの抽出
            if response.statusCode == 200 {
                do {
                    // 受け取ったデータをiPhoneで扱える形に変換する
                    let bbsCheck: BbsCheck = try JSONDecoder().decode(BbsCheck.self, from: data)
                    bbsCheck.result
                    
                    print("OK")
                    // 画面描画スレッド
                    DispatchQueue.main.sync {
                        // レスポンスのデータをリストに更新する
                        //self.tableView.reloadData()
                       
                        // ローディングを停止 ( storyboardでの設定によりアニメーションを停止させると自動的に非表示になる )
                        //self.loadingView.stopAnimating()
                        
                    }
                    
                } catch {
                    print("デコードエラー")
                    
                }
                
            } else {
                print("サーバー・エラー・ステータスコード: \(response.statusCode)")
                
            }
            
        }).resume()
        
    }
    
    func BbsDetallAPI(){
        // APIをたたく
        URLSession.shared.dataTask(with:urlBbsDetallAPI
                           , completionHandler: { (data, response, error) in
            // エラーがあるかどうかチェック
            if let error = error {
                print("レスポンスエラー: \(error.localizedDescription)")
                return
                
            }
            // データが空かどうかチェック
            guard let data = data, let response = response as? HTTPURLResponse else {
                print("レスポンスのデータが空です")
                return
                
            }
            // データの抽出
            if response.statusCode == 200 {
                do {
                    // 受け取ったデータをiPhoneで扱える形に変換する
                    let bbsDetall: BbsDetall = try JSONDecoder().decode(BbsDetall.self, from: data)
                    bbsDetall.list
                    
                    print("OK")
                    // 画面描画スレッド
                    DispatchQueue.main.sync {
                        // レスポンスのデータをリストに更新する
                        //self.tableView.reloadData()
                       
                        // ローディングを停止 ( storyboardでの設定によりアニメーションを停止させると自動的に非表示になる )
                        //self.loadingView.stopAnimating()
                        
                    }
                    
                } catch {
                    print("デコードエラー")
                    
                }
                
            } else {
                print("サーバー・エラー・ステータスコード: \(response.statusCode)")
                
            }
            
        }).resume()
        
    }
    
    func BbsEditAPI(){
        // APIをたたく
        URLSession.shared.dataTask(with:urlBbsEditAPI
                           , completionHandler: { (data, response, error) in
            // エラーがあるかどうかチェック
            if let error = error {
                print("レスポンスエラー: \(error.localizedDescription)")
                return
                
            }
            // データが空かどうかチェック
            guard let data = data, let response = response as? HTTPURLResponse else {
                print("レスポンスのデータが空です")
                return
                
            }
            // データの抽出
            if response.statusCode == 200 {
                do {
                    // 受け取ったデータをiPhoneで扱える形に変換する
                    let bbsEdit: BbsEdit = try JSONDecoder().decode(BbsEdit.self, from: data)
                    bbsEdit.result
                    
                    print("OK")
                    // 画面描画スレッド
                    DispatchQueue.main.sync {
                        // レスポンスのデータをリストに更新する
                        //self.tableView.reloadData()
                       
                        // ローディングを停止 ( storyboardでの設定によりアニメーションを停止させると自動的に非表示になる )
                        //self.loadingView.stopAnimating()
                        
                    }
                    
                } catch {
                    print("デコードエラー")
                    
                }
                
            } else {
                print("サーバー・エラー・ステータスコード: \(response.statusCode)")
                
            }
            
        }).resume()
        
    }
    
//    func BbsHistoryAPI(){
//        // APIをたたく
//        URLSession.shared.dataTask(with:urlBbsHistoryAPI
//                           , completionHandler: { (data, response, error) in
//            // エラーがあるかどうかチェック
//            if let error = error {
//                print("レスポンスエラー: \(error.localizedDescription)")
//                return
//                
//            }
//            // データが空かどうかチェック
//            guard let data = data, let response = response as? HTTPURLResponse else {
//                print("レスポンスのデータが空です")
//                return
//                
//            }
//            // データの抽出
//            if response.statusCode == 200 {
//                do {
//                    // 受け取ったデータをiPhoneで扱える形に変換する
//                    let bbsHistory: BbsHistory = try JSONDecoder().decode(BbsHistory.self, from: data)
//                    bbsHistory.result
//                    
//                    print("OK")
//                    // 画面描画スレッド
//                    DispatchQueue.main.sync {
//                        // レスポンスのデータをリストに更新する
//                        //self.tableView.reloadData()
//                       
//                        // ローディングを停止 ( storyboardでの設定によりアニメーションを停止させると自動的に非表示になる )
//                        //self.loadingView.stopAnimating()
//                        
//                    }
//                    
//                } catch {
//                    print("デコードエラー")
//                    
//                }
//                
//            } else {
//                print("サーバー・エラー・ステータスコード: \(response.statusCode)")
//                
//            }
//            
//        }).resume()
//        
//    }
    
    func BbsSearchAPI(){
        // APIをたたく
        URLSession.shared.dataTask(with:urlBbsSearchAPI
                           , completionHandler: { (data, response, error) in
            // エラーがあるかどうかチェック
            if let error = error {
                print("レスポンスエラー: \(error.localizedDescription)")
                return
                
            }
            // データが空かどうかチェック
            guard let data = data, let response = response as? HTTPURLResponse else {
                print("レスポンスのデータが空です")
                return
                
            }
            // データの抽出
            if response.statusCode == 200 {
                do {
                    // 受け取ったデータをiPhoneで扱える形に変換する
                    let bbsSearch: BbsSearch = try JSONDecoder().decode(BbsSearch.self, from: data)
                    bbsSearch.result
                    
                    print("OK")
                    // 画面描画スレッド
                    DispatchQueue.main.sync {
                        // レスポンスのデータをリストに更新する
                        //self.tableView.reloadData()
                       
                        // ローディングを停止 ( storyboardでの設定によりアニメーションを停止させると自動的に非表示になる )
                        //self.loadingView.stopAnimating()
                        
                    }
                    
                } catch {
                    print("デコードエラー")
                    
                }
                
            } else {
                print("サーバー・エラー・ステータスコード: \(response.statusCode)")
                
            }
            
        }).resume()
        
    }
    
    func LikeListAPI(){
        // APIをたたく
        URLSession.shared.dataTask(with:urlLikeListAPI
                           , completionHandler: { (data, response, error) in
            // エラーがあるかどうかチェック
            if let error = error {
                print("レスポンスエラー: \(error.localizedDescription)")
                return
                
            }
            // データが空かどうかチェック
            guard let data = data, let response = response as? HTTPURLResponse else {
                print("レスポンスのデータが空です")
                return
                
            }
            // データの抽出
            if response.statusCode == 200 {
                do {
                    // 受け取ったデータをiPhoneで扱える形に変換する
                    let likeList: LikeList = try JSONDecoder().decode(LikeList.self, from: data)
                    likeList.result
                    
                    print("OK")
                    // 画面描画スレッド
                    DispatchQueue.main.sync {
                        // レスポンスのデータをリストに更新する
                        //self.tableView.reloadData()
                       
                        // ローディングを停止 ( storyboardでの設定によりアニメーションを停止させると自動的に非表示になる )
                        //self.loadingView.stopAnimating()
                        
                    }
                    
                } catch {
                    print("デコードエラー")
                    
                }
                
            } else {
                print("サーバー・エラー・ステータスコード: \(response.statusCode)")
                
            }
            
        }).resume()
        
    }
    
    func LoginAPI(){
        // APIをたたく
        URLSession.shared.dataTask(with:urlLoginAPI
                           , completionHandler: { (data, response, error) in
            // エラーがあるかどうかチェック
            if let error = error {
                print("レスポンスエラー: \(error.localizedDescription)")
                return
                
            }
            // データが空かどうかチェック
            guard let data = data, let response = response as? HTTPURLResponse else {
                print("レスポンスのデータが空です")
                return
                
            }
            // データの抽出
            if response.statusCode == 200 {
                do {
                    // 受け取ったデータをiPhoneで扱える形に変換する
                    let login: Login = try JSONDecoder().decode(Login.self, from: data)
                    login.status
                    login.member
                    
                    print("OK")
                    // 画面描画スレッド
                    DispatchQueue.main.sync {
                        // レスポンスのデータをリストに更新する
                        //self.tableView.reloadData()
                       
                        // ローディングを停止 ( storyboardでの設定によりアニメーションを停止させると自動的に非表示になる )
                        //self.loadingView.stopAnimating()
                        
                    }
                    
                } catch {
                    print("デコードエラー")
                    
                }
                
            } else {
                print("サーバー・エラー・ステータスコード: \(response.statusCode)")
                
            }
            
        }).resume()
        
    }
    
    func MailFovoriteAPI(){
        // APIをたたく
        URLSession.shared.dataTask(with:urlMailFovoriteAPI
                           , completionHandler: { (data, response, error) in
            // エラーがあるかどうかチェック
            if let error = error {
                print("レスポンスエラー: \(error.localizedDescription)")
                return
                
            }
            // データが空かどうかチェック
            guard let data = data, let response = response as? HTTPURLResponse else {
                print("レスポンスのデータが空です")
                return
                
            }
            // データの抽出
            if response.statusCode == 200 {
                do {
                    // 受け取ったデータをiPhoneで扱える形に変換する
                    let mailFovorite: MailFovorite = try JSONDecoder().decode(MailFovorite.self, from: data)
                    mailFovorite.mail_favorite
                    
                    print("OK")
                    // 画面描画スレッド
                    DispatchQueue.main.sync {
                        // レスポンスのデータをリストに更新する
                        //self.tableView.reloadData()
                       
                        // ローディングを停止 ( storyboardでの設定によりアニメーションを停止させると自動的に非表示になる )
                        //self.loadingView.stopAnimating()
                        
                    }
                    
                } catch {
                    print("デコードエラー")
                    
                }
                
            } else {
                print("サーバー・エラー・ステータスコード: \(response.statusCode)")
                
            }
            
        }).resume()
        
    }
    
    func MailFileDeleteAPI(){
        // APIをたたく
        URLSession.shared.dataTask(with:urlMailFileDeleteAPI
                           , completionHandler: { (data, response, error) in
            // エラーがあるかどうかチェック
            if let error = error {
                print("レスポンスエラー: \(error.localizedDescription)")
                return
                
            }
            // データが空かどうかチェック
            guard let data = data, let response = response as? HTTPURLResponse else {
                print("レスポンスのデータが空です")
                return
                
            }
            // データの抽出
            if response.statusCode == 200 {
                do {
                    // 受け取ったデータをiPhoneで扱える形に変換する
                    let mailFileDelete: MailFileDelete = try JSONDecoder().decode(MailFileDelete.self, from: data)
                    mailFileDelete.file_delete
                    
                    print("OK")
                    // 画面描画スレッド
                    DispatchQueue.main.sync {
                        // レスポンスのデータをリストに更新する
                        //self.tableView.reloadData()
                       
                        // ローディングを停止 ( storyboardでの設定によりアニメーションを停止させると自動的に非表示になる )
                        //self.loadingView.stopAnimating()
                        
                    }
                    
                } catch {
                    print("デコードエラー")
                    
                }
                
            } else {
                print("サーバー・エラー・ステータスコード: \(response.statusCode)")
                
            }
            
        }).resume()
        
    }
    
    func MemoAPI(){
        // APIをたたく
        URLSession.shared.dataTask(with:urlMemoAPI
                           , completionHandler: { (data, response, error) in
            // エラーがあるかどうかチェック
            if let error = error {
                print("レスポンスエラー: \(error.localizedDescription)")
                return
                
            }
            // データが空かどうかチェック
            guard let data = data, let response = response as? HTTPURLResponse else {
                print("レスポンスのデータが空です")
                return
                
            }
            // データの抽出
            if response.statusCode == 200 {
                do {
                    // 受け取ったデータをiPhoneで扱える形に変換する
                    let memo: Memo = try JSONDecoder().decode(Memo.self, from: data)
                    memo.memo
                    
                    print("OK")
                    // 画面描画スレッド
                    DispatchQueue.main.sync {
                        // レスポンスのデータをリストに更新する
                        //self.tableView.reloadData()
                       
                        // ローディングを停止 ( storyboardでの設定によりアニメーションを停止させると自動的に非表示になる )
                        //self.loadingView.stopAnimating()
                        
                    }
                    
                } catch {
                    print("デコードエラー")
                    
                }
                
            } else {
                print("サーバー・エラー・ステータスコード: \(response.statusCode)")
                
            }
            
        }).resume()
        
    }
    
    func PasswordChangeAPI(){
        // APIをたたく
        URLSession.shared.dataTask(with:urlPasswordChangeAPI
                           , completionHandler: { (data, response, error) in
            // エラーがあるかどうかチェック
            if let error = error {
                print("レスポンスエラー: \(error.localizedDescription)")
                return
                
            }
            // データが空かどうかチェック
            guard let data = data, let response = response as? HTTPURLResponse else {
                print("レスポンスのデータが空です")
                return
                
            }
            // データの抽出
            if response.statusCode == 200 {
                do {
                    // 受け取ったデータをiPhoneで扱える形に変換する
                    let passwordChange: PasswordChange = try JSONDecoder().decode(PasswordChange.self, from: data)
                    passwordChange.password
                    passwordChange.password_change
                    
                    print("OK")
                    // 画面描画スレッド
                    DispatchQueue.main.sync {
                        // レスポンスのデータをリストに更新する
                        //self.tableView.reloadData()
                       
                        // ローディングを停止 ( storyboardでの設定によりアニメーションを停止させると自動的に非表示になる )
                        //self.loadingView.stopAnimating()
                        
                    }
                    
                } catch {
                    print("デコードエラー")
                    
                }
                
            } else {
                print("サーバー・エラー・ステータスコード: \(response.statusCode)")
                
            }
            
        }).resume()
        
    }
    
    func ObtainedByPrefectureAPI(){
        // APIをたたく
        URLSession.shared.dataTask(with:urlObtainedByPrefectureAPI
                           , completionHandler: { (data, response, error) in
            // エラーがあるかどうかチェック
            if let error = error {
                print("レスポンスエラー: \(error.localizedDescription)")
                return
                
            }
            // データが空かどうかチェック
            guard let data = data, let response = response as? HTTPURLResponse else {
                print("レスポンスのデータが空です")
                return
                
            }
            // データの抽出
            if response.statusCode == 200 {
                do {
                    // 受け取ったデータをiPhoneで扱える形に変換する
                    let obtainedByPrefecture: ObtainedByPrefecture = try JSONDecoder().decode(ObtainedByPrefecture.self, from: data)
                    obtainedByPrefecture.list
                    
                    print("OK")
                    // 画面描画スレッド
                    DispatchQueue.main.sync {
                        // レスポンスのデータをリストに更新する
                        //self.tableView.reloadData()
                       
                        // ローディングを停止 ( storyboardでの設定によりアニメーションを停止させると自動的に非表示になる )
                        //self.loadingView.stopAnimating()
                        
                    }
                    
                } catch {
                    print("デコードエラー")
                    
                }
                
            } else {
                print("サーバー・エラー・ステータスコード: \(response.statusCode)")
                
            }
            
        }).resume()
        
    }
    
    func ProfileSerchAPI(){
        // APIをたたく
        URLSession.shared.dataTask(with:urlProfileSerchAPI
                           , completionHandler: { (data, response, error) in
            // エラーがあるかどうかチェック
            if let error = error {
                print("レスポンスエラー: \(error.localizedDescription)")
                return
                
            }
            // データが空かどうかチェック
            guard let data = data, let response = response as? HTTPURLResponse else {
                print("レスポンスのデータが空です")
                return
                
            }
            // データの抽出
            if response.statusCode == 200 {
                do {
                    // 受け取ったデータをiPhoneで扱える形に変換する
                    let profileSerch: ProfileSerch = try JSONDecoder().decode(ProfileSerch.self, from: data)
                    profileSerch.list
                    
                    print("OK")
                    // 画面描画スレッド
                    DispatchQueue.main.sync {
                        // レスポンスのデータをリストに更新する
                        //self.tableView.reloadData()
                       
                        // ローディングを停止 ( storyboardでの設定によりアニメーションを停止させると自動的に非表示になる )
                        //self.loadingView.stopAnimating()
                        
                    }
                    
                } catch {
                    print("デコードエラー")
                    
                }
                
            } else {
                print("サーバー・エラー・ステータスコード: \(response.statusCode)")
                
            }
            
        }).resume()
        
    }
    
    func ProfileDeleteAPI(){
        // APIをたたく
        URLSession.shared.dataTask(with:urlProfileDeleteAPI
                           , completionHandler: { (data, response, error) in
            // エラーがあるかどうかチェック
            if let error = error {
                print("レスポンスエラー: \(error.localizedDescription)")
                return
                
            }
            // データが空かどうかチェック
            guard let data = data, let response = response as? HTTPURLResponse else {
                print("レスポンスのデータが空です")
                return
                
            }
            // データの抽出
            if response.statusCode == 200 {
                do {
                    // 受け取ったデータをiPhoneで扱える形に変換する
                    let profileDelete: ProfileDelete = try JSONDecoder().decode(ProfileDelete.self, from: data)
                    profileDelete.list
                    
                    print("OK")
                    // 画面描画スレッド
                    DispatchQueue.main.sync {
                        // レスポンスのデータをリストに更新する
                        //self.tableView.reloadData()
                       
                        // ローディングを停止 ( storyboardでの設定によりアニメーションを停止させると自動的に非表示になる )
                        //self.loadingView.stopAnimating()
                        
                    }
                    
                } catch {
                    print("デコードエラー")
                    
                }
                
            } else {
                print("サーバー・エラー・ステータスコード: \(response.statusCode)")
                
            }
            
        }).resume()
        
    }
    
    func ProfileEditAPI(){
        // APIをたたく
        URLSession.shared.dataTask(with:urlProfileEditAPI
                           , completionHandler: { (data, response, error) in
            // エラーがあるかどうかチェック
            if let error = error {
                print("レスポンスエラー: \(error.localizedDescription)")
                return
                
            }
            // データが空かどうかチェック
            guard let data = data, let response = response as? HTTPURLResponse else {
                print("レスポンスのデータが空です")
                return
                
            }
            // データの抽出
            if response.statusCode == 200 {
                do {
                    // 受け取ったデータをiPhoneで扱える形に変換する
                    let profileEdit: ProfileEdit = try JSONDecoder().decode(ProfileEdit.self, from: data)
                    profileEdit.list
                    
                    print("OK")
                    // 画面描画スレッド
                    DispatchQueue.main.sync {
                        // レスポンスのデータをリストに更新する
                        //self.tableView.reloadData()
                       
                        // ローディングを停止 ( storyboardでの設定によりアニメーションを停止させると自動的に非表示になる )
                        //self.loadingView.stopAnimating()
                        
                    }
                    
                } catch {
                    print("デコードエラー")
                    
                }
                
            } else {
                print("サーバー・エラー・ステータスコード: \(response.statusCode)")
                
            }
            
        }).resume()
        
    }
    
    func SmilListAPI(){
        // APIをたたく
        URLSession.shared.dataTask(with:urlSmilListAPI
                           , completionHandler: { (data, response, error) in
            // エラーがあるかどうかチェック
            if let error = error {
                print("レスポンスエラー: \(error.localizedDescription)")
                return
                
            }
            // データが空かどうかチェック
            guard let data = data, let response = response as? HTTPURLResponse else {
                print("レスポンスのデータが空です")
                return
                
            }
            // データの抽出
            if response.statusCode == 200 {
                do {
                    // 受け取ったデータをiPhoneで扱える形に変換する
                    let smilList: SmilList = try JSONDecoder().decode(SmilList.self, from: data)
                    smilList.smile
                    
                    print("OK")
                    // 画面描画スレッド
                    DispatchQueue.main.sync {
                        // レスポンスのデータをリストに更新する
                        //self.tableView.reloadData()
                       
                        // ローディングを停止 ( storyboardでの設定によりアニメーションを停止させると自動的に非表示になる )
                        //self.loadingView.stopAnimating()
                        
                    }
                    
                } catch {
                    print("デコードエラー")
                    
                }
                
            } else {
                print("サーバー・エラー・ステータスコード: \(response.statusCode)")
                
            }
            
        }).resume()
        
    }
    
    func TalkCommentAPI(){
        // APIをたたく
        URLSession.shared.dataTask(with:urlTalkCommentAPI
                           , completionHandler: { (data, response, error) in
            // エラーがあるかどうかチェック
            if let error = error {
                print("レスポンスエラー: \(error.localizedDescription)")
                return
                
            }
            // データが空かどうかチェック
            guard let data = data, let response = response as? HTTPURLResponse else {
                print("レスポンスのデータが空です")
                return
                
            }
            // データの抽出
            if response.statusCode == 200 {
                do {
                    // 受け取ったデータをiPhoneで扱える形に変換する
                    let talkComment: TalkComment = try JSONDecoder().decode(TalkComment.self, from: data)
                    talkComment.member
                    
                    print("OK")
                    // 画面描画スレッド
                    DispatchQueue.main.sync {
                        // レスポンスのデータをリストに更新する
                        //self.tableView.reloadData()
                       
                        // ローディングを停止 ( storyboardでの設定によりアニメーションを停止させると自動的に非表示になる )
                        //self.loadingView.stopAnimating()
                        
                    }
                    
                } catch {
                    print("デコードエラー")
                    
                }
                
            } else {
                print("サーバー・エラー・ステータスコード: \(response.statusCode)")
                
            }
            
        }).resume()
        
    }
    
    func TalkCommentHistoryAPI(){
        // APIをたたく
        URLSession.shared.dataTask(with:urlTalkCommentHistoryAPI
                           , completionHandler: { (data, response, error) in
            // エラーがあるかどうかチェック
            if let error = error {
                print("レスポンスエラー: \(error.localizedDescription)")
                return
                
            }
            // データが空かどうかチェック
            guard let data = data, let response = response as? HTTPURLResponse else {
                print("レスポンスのデータが空です")
                return
                
            }
            // データの抽出
            if response.statusCode == 200 {
                do {
                    // 受け取ったデータをiPhoneで扱える形に変換する
                    let talkCommentHistory: TalkCommentHistory = try JSONDecoder().decode(TalkCommentHistory.self, from: data)
                    talkCommentHistory.result                    
                    
                    print("OK")
                    // 画面描画スレッド
                    DispatchQueue.main.sync {
                        // レスポンスのデータをリストに更新する
                        //self.tableView.reloadData()
                       
                        // ローディングを停止 ( storyboardでの設定によりアニメーションを停止させると自動的に非表示になる )
                        //self.loadingView.stopAnimating()
                        
                    }
                    
                } catch {
                    print("デコードエラー")
                    
                }
                
            } else {
                print("サーバー・エラー・ステータスコード: \(response.statusCode)")
                
            }
            
        }).resume()
        
    }
    
    func TalkDeleteResultAPI(){
        // APIをたたく
        URLSession.shared.dataTask(with:urlTalkDeleteResultAPI
                           , completionHandler: { (data, response, error) in
            // エラーがあるかどうかチェック
            if let error = error {
                print("レスポンスエラー: \(error.localizedDescription)")
                return
                
            }
            // データが空かどうかチェック
            guard let data = data, let response = response as? HTTPURLResponse else {
                print("レスポンスのデータが空です")
                return
                
            }
            // データの抽出
            if response.statusCode == 200 {
                do {
                    // 受け取ったデータをiPhoneで扱える形に変換する
                    let talkDeleteResult: TalkDeleteResult = try JSONDecoder().decode(TalkDeleteResult.self, from: data)
                    talkDeleteResult.result
                    
                    
                    print("OK")
                    // 画面描画スレッド
                    DispatchQueue.main.sync {
                        // レスポンスのデータをリストに更新する
                        //self.tableView.reloadData()
                       
                        // ローディングを停止 ( storyboardでの設定によりアニメーションを停止させると自動的に非表示になる )
                        //self.loadingView.stopAnimating()
                        
                    }
                    
                } catch {
                    print("デコードエラー")
                    
                }
                
            } else {
                print("サーバー・エラー・ステータスコード: \(response.statusCode)")
                
            }
            
        }).resume()
        
    }
    
    func TalkSearchtAPI(){
        // APIをたたく
        URLSession.shared.dataTask(with:urlTalkSearchtAPI
                           , completionHandler: { (data, response, error) in
            // エラーがあるかどうかチェック
            if let error = error {
                print("レスポンスエラー: \(error.localizedDescription)")
                return
                
            }
            // データが空かどうかチェック
            guard let data = data, let response = response as? HTTPURLResponse else {
                print("レスポンスのデータが空です")
                return
                
            }
            // データの抽出
            if response.statusCode == 200 {
                do {
                    // 受け取ったデータをiPhoneで扱える形に変換する
                    let talkSearcht: TalkSearcht = try JSONDecoder().decode(TalkSearcht.self, from: data)
                    talkSearcht.result
                    
                    
                    print("OK")
                    // 画面描画スレッド
                    DispatchQueue.main.sync {
                        // レスポンスのデータをリストに更新する
                        //self.tableView.reloadData()
                       
                        // ローディングを停止 ( storyboardでの設定によりアニメーションを停止させると自動的に非表示になる )
                        //self.loadingView.stopAnimating()
                        
                    }
                    
                } catch {
                    print("デコードエラー")
                    
                }
                
            } else {
                print("サーバー・エラー・ステータスコード: \(response.statusCode)")
                
            }
            
        }).resume()
        
    }
    
    func FavoriteBbsListAPI(){
        // APIをたたく
        URLSession.shared.dataTask(with:urlFavoriteBbsListAPI
                           , completionHandler: { (data, response, error) in
            // エラーがあるかどうかチェック
            if let error = error {
                print("レスポンスエラー: \(error.localizedDescription)")
                return
                
            }
            // データが空かどうかチェック
            guard let data = data, let response = response as? HTTPURLResponse else {
                print("レスポンスのデータが空です")
                return
                
            }
            // データの抽出
            if response.statusCode == 200 {
                do {
                    // 受け取ったデータをiPhoneで扱える形に変換する
                    let favoriteBbsList: FavoriteBbsList = try JSONDecoder().decode(FavoriteBbsList.self, from: data)
                    favoriteBbsList.result
                    
                    
                    print("OK")
                    // 画面描画スレッド
                    DispatchQueue.main.sync {
                        // レスポンスのデータをリストに更新する
                        //self.tableView.reloadData()
                       
                        // ローディングを停止 ( storyboardでの設定によりアニメーションを停止させると自動的に非表示になる )
                        //self.loadingView.stopAnimating()
                        
                    }
                    
                } catch {
                    print("デコードエラー")
                    
                }
                
            } else {
                print("サーバー・エラー・ステータスコード: \(response.statusCode)")
                
            }
            
        }).resume()
        
    }
}

