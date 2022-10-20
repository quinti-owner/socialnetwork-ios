//
//  ViewController.swift
//  SocialNetwork
//
//  Created by 古堅ニノスカ on 2022/09/15.
//

import UIKit

class ViewController: UIViewController {
    
    var listAbuseAPI = [AbuseData]()
    var urlAbuseAPI = URL(string: "https://3cabjeo1uc.execute-api.ap-northeast-1.amazonaws.com/dev/")!
    
    var listAppVersionAPI = [AppVersionData]()
    var urlAppVersionAPI = URL(string: "https://3cabjeo1uc.execute-api.ap-northeast-1.amazonaws.com/dev/")!
    
    var listBbsAreaAPI = [BbsAreaData]()
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
    
    var listInformationPushListAPI = [Informationpushlist]()
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
    
    func AbuseAPI(){
        // APIをたたく
        URLSession.shared.dataTask(with:urlAbuseAPI
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
                    let abuse: Abuse = try JSONDecoder().decode(Abuse.self, from: data)
                    var abuseData = AbuseData()
                    abuseData.status = abuse.status
                
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
                    var appVersionData = AppVersionData()
                    appVersionData.status = appVersion.status
                    appVersionData.force = appVersion.force
                    appVersionData.version = appVersion.version
                
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
                    var bbsAreaData = BbsAreaData()
                    bbsAreaData.status = bbsArea.status
                
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
                    var bbsCuriousData = BbsCuriousData()
                    bbsCuriousData.status = bbsCurious.status
                
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
                    var bbsDeleteData = BbsDeleteData()
                    bbsDeleteData.status = bbsDelete.status
                
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
                    var prefectureData = PrefectureData()
                    prefectureData.status = prefecture.status
                
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
                    var denyData = DenyData()
                    denyData.status = deny.status
                    denyData.category = deny.category
                    denyData.comment = deny.comment
                    denyData.deny_status = deny.deny_status
                    denyData.is_rogue = deny.is_rogue
                    denyData.is_stop_later = deny.is_stop_later
                
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
                    var universalDeviceData = UniversalDeviceData()
                    universalDeviceData.status = universalDevice.status
                    universalDeviceData.universal_device_id = universalDevice.universal_device_id
                
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
                    var universalDeviceStatusData = UniversalDeviceStatusData()
                    universalDeviceStatusData.status = universalDeviceStatus.status
                    universalDeviceStatusData.device_status = universalDeviceStatus.device_status
                    universalDeviceStatusData.member_no = universalDeviceStatus.member_no
                    universalDeviceStatusData.member_rid = universalDeviceStatus.member_rid
                    universalDeviceStatusData.tel_add = universalDeviceStatus.tel_add
                    universalDeviceStatusData.usr_status = universalDeviceStatus.usr_status
                
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
                    var footprintDeleteData = FootprintDeleteData()
                    footprintDeleteData.status = footprintDelete.status
                
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
                    var myfootprintDeleteData = MyfootprintDeleteData()
                    myfootprintDeleteData.status = myfootprintDelete.status
                
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
                    var footprintSettingData = FootprintSettingData()
                    footprintSettingData.status = footprintSetting.status
                    footprintSettingData.accept = footprintSetting.accept
                    footprintSettingData.leave = footprintSetting.leave
                
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
                    var informationlist = informationData()
                    informationlist.info = information.info
                
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
                    let informationpushlist: Informationpushlist = try JSONDecoder().decode(Informationpushlist.self, from: data)
                    var informationpushlistData = InformationpushlistData()
                    informationpushlistData.status = informationpushlist.status
                    informationpushlistData.method = informationpushlist.method
                    informationpushlistData.list_judgment = informationpushlist.list_judgment
                    informationpushlistData.list_comm = informationpushlist.list_comm
                    informationpushlistData.list_member = informationpushlist.list_member
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
                    var likeAddData = LikeAddData()
                    likeAddData.status = likeAdd.status
                
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
                    var likeDeleteData = LikeDeleteData()
                    likeDeleteData.status = likeDelete.status
                
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
                    var mailgetData = MailgetData()
                    mailgetData.status = mailget.status
                    mailgetData.email = mailget.mail
                
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
                    var mailHistoryDeleteData = MailHistoryDeleteData()
                    mailHistoryDeleteData.status = mailHistoryDelete.status
                
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
                    var memoCategoryData = MemoCategoryData()
                    memoCategoryData.status = memoCategory.status
                    memoCategoryData.list_num = memoCategory.list_num
                    memoCategoryData.memo_list = memoCategory.memo_list
                
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
                    var memoDeleteData = MemoDeleteData()
                    memoDeleteData.status = memoDelete.status
                
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
                    var memoWriteData = MemoWriteData()
                    memoWriteData.status = memoWrite.status
                
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
                    var mytypeExecData = MytypeExecData()
                    mytypeExecData.status = mytypeExec.status
                    mytypeExecData.error_code = mytypeExec.error_code
                    mytypeExecData.error_description = mytypeExec.error_description
                    mytypeExecData.next_member = mytypeExec.next_member
                
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
                    var mytypeStatData = MytypeStatData()
                    mytypeStatData.status = mytypeStat.status
                    mytypeStatData.from_member = mytypeStat.from_member
                    mytypeStatData.from_partner = mytypeStat.from_partner
                
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
                    var notiflcationData = NotiflcationData()
                    notiflcationData.status = notiflcation.status
                    notiflcationData.footprint = notiflcation.footprint
                    notiflcationData.mail = notiflcation.mail
                    notiflcationData.like = notiflcation.like
                    notiflcationData.comment = notiflcation.comment
                    notiflcationData.type = notiflcation.type
                    notiflcationData.mutual = notiflcation.mutual
                    notiflcationData.board = notiflcation.board
                    notiflcationData.smile = notiflcation.smile
                
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
                    var notificationListData = NotificationListData()
                    notificationListData.status = notificationList.status
                    notificationListData.notiflcation = notificationList.notification
                    notificationListData.notiflcation_num = notificationList.notification_unm
                    notificationListData.total_notiflcation_num = notificationList.total_notification_unm
                
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
                    var profileDetailPhptoData = ProfileDetailPhptoData()
                    profileDetailPhptoData.status = profileDetailPhpto.status
                    profileDetailPhptoData.app_point = profileDetailPhpto.app_point
                    profileDetailPhptoData.contest = profileDetailPhpto.contest
                    profileDetailPhptoData.photos = profileDetailPhpto.photos
                    profileDetailPhptoData.service_point = profileDetailPhpto.service_point
                
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
                    var profileDetallData = ProfileDetallData()
                    profileDetallData.list = profileDetall.list
                            
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
                    var profilePhotoData = ProfilePhotoData()
                    profilePhotoData.status = profilePhoto.status
                    profilePhotoData.method_id = profilePhoto.method_id
                    profilePhotoData.method = profilePhoto.method
                    profilePhotoData.photos = profilePhoto.photos
                
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
                    var r18IsauthorizedData = R18IsauthorizedData()
                    r18IsauthorizedData.status = r18Isauthorized.status
                    r18IsauthorizedData.is_authorized = r18Isauthorized.is_authorized
                    r18IsauthorizedData.photo_status = r18Isauthorized.photo_status

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
                    var r18PhotoreceivedData = R18PhotoreceivedData()
                    r18PhotoreceivedData.status = r18Photoreceived.status
                    r18PhotoreceivedData.errors = r18Photoreceived.errors
    
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
                    var reRegisterData = ReRegisterData()
                    reRegisterData.errors = reRegister.errors
                    reRegisterData.member = reRegister.member
    
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
                    var resignData = ResignData()
                    resignData.status = resign.status
    
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
                    var smileDeleteData = SmileDeleteData()
                    smileDeleteData.status = smileDelete.status
    
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
                    var startupData = StartupData()
                    startupData.status = startup.status
                    startupData.login_bonus = startup.login_bonus
                    
    
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
                    var talkData = TalkData()
                    talkData.status = talk.status
                    talkData.photo_status = talk.photo_status
                    
    
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
                    var talkCommentDeleteData = TalkCommentDeleteData()
                    talkCommentDeleteData.status = talkCommentDelete.status
    
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
                    var smileData = SmileData()
                    smileData.status = smile.status
    
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
                    var talkCommentPostData = TalkCommentPostData()
                    talkCommentPostData.status = talkCommentPost.status
    
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
                    var talkDeleteData = TalkDeleteData()
                    talkDeleteData.status = talkDelete.status
    
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
                    var telGetData = TelGetData()
                    telGetData.status = telGet.status
                    telGetData.authorizde_tel = telGet.authorizde_tel
    
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
                    var accessData = AccessData()
                    accessData.status = access.status
    
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
                    var bbsNameListData = BbsNameListData()
                    bbsNameListData.status = bbsNameList.status
                    bbsNameListData.list = bbsNameList.list
                    bbsNameListData.bbs_num = bbsNameList.bbs_num
    
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
                    var bbsReceivedMailListData = BbsReceivedMailListData()
                    bbsReceivedMailListData.status = bbsReceivedMailList.status
                    bbsReceivedMailListData.member = bbsReceivedMailList.member
    
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
                    var denyListData = DenyListData()
                    denyListData.status = denyList.status
                    denyListData.list = denyList.list
                    denyListData.current_page = denyList.current_page
                    denyListData.list_num = denyList.list_num
                    denyListData.total_num = denyList.total_num
                    
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
                    var fotprintData = FotprintData()
                    fotprintData.status = fotprint.status
                    fotprintData.total_num = fotprint.total_num
                    fotprintData.list_num = fotprint.list_num
                    fotprintData.current_page = fotprint.current_page
                    fotprintData.list = fotprint.list
                    fotprintData.tody = fotprint.tody
                    
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
                    var mailBoxData = MailBoxData()
                    mailBoxData.cur_page = mailBox.cur_page
                    mailBoxData.member = mailBox.member
                    mailBoxData.err_code = mailBox.err_code
                    mailBoxData.total_member_num = mailBox.total_member_num
                    
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
                    var mailCheckData = MailCheckData()
                    mailCheckData.status = mailCheck.status
                    
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
                    var mailHistoryData = MailHistoryData()
                    mailHistoryData.status = mailHistory.status
                    mailHistoryData.mail_list = mailHistory.mail_list
                    
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
                    var mailSendData = MailSendData()
                    mailSendData.status = mailSend.status
                    mailSendData.service_point = mailSend.service_point
                    mailSendData.app_point = mailSend.app_point
                    mailSendData.lottery_ticket_status = mailSend.lottery_ticket_status
                    mailSendData.mobilers = mailSend.mobilers
                    mailSendData.point = mailSend.point
                    
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
                    var mytypeListData = MytypeListData()
                    mytypeListData.status = mytypeList.status
                    mytypeListData.cur_page = mytypeList.cur_page
                    mytypeListData.list = mytypeList.list
                    mytypeListData.list_num = mytypeList.list_num
                    mytypeListData.total_num = mytypeList.total_num
                    
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
                    var pushListData = PushListData()
                    pushListData.push_list = pushList.push_list
                    
                    
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
                    var pushSettingData = PushSettingData()
                    pushSettingData.status = pushSetting.status
                    
                    
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
                    var registerUpdateTelData = RegisterUpdateTelData()
                    registerUpdateTelData.status = registerUpdateTel.status
                    registerUpdateTelData.duplicate = registerUpdateTel.duplicate
                    registerUpdateTelData.free_tel = registerUpdateTel.free_tel
                    registerUpdateTelData.session_id = registerUpdateTel.session_id
                    
                    
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
                    var bbsChangeStatusData = BbsChangeStatusData()
                    bbsChangeStatusData.status = bbsChangeStatus.status
                    bbsChangeStatusData.list = bbsChangeStatus.list
                    
                    
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
                    var bbsCheckData = BbsCheckData()
                    bbsCheckData.status = bbsCheck.status
                    bbsCheckData.bbs = bbsCheck.bbs
                    bbsCheckData.result = bbsCheck.result
                    
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
                    var bbsDetallData = BbsDetallData()
                    bbsDetallData.statsu = bbsDetall.statsu
                    bbsDetallData.result = bbsDetall.result
                    bbsDetallData.bbs = bbsDetall.bbs
                    bbsDetallData.point = bbsDetall.point
                    bbsDetallData.app_point = bbsDetall.app_point
                    bbsDetallData.service_point = bbsDetall.service_point
                    
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
                    var bbsEditData = BbsEditData()
                    bbsEditData.status = bbsEdit.status
                    bbsEditData.bbs = bbsEdit.bbs
                    bbsEditData.errors = bbsEdit.errors
                    bbsEditData.edit = bbsEdit.edit
                    bbsEditData.failed_tag_kinds = bbsEdit.failed_tag_kinds
                    bbsEditData.uploed_result = bbsEdit.uploed_result
                    
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
    
    func BbsHistoryAPI(){
        // APIをたたく
        URLSession.shared.dataTask(with:urlBbsHistoryAPI
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
                    let bbsHistory: BbsHistory = try JSONDecoder().decode(BbsHistory.self, from: data)
                    var bbsHistoryData = BbsHistoryData()
                    bbsHistoryData.status = bbsHistory.status
                    bbsHistoryData.list = bbsHistory.list
                    bbsHistoryData.total_bbs_num = bbsHistory.total_bbs_num
                    
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
                    var bbsSearchData = BbsSearchData()
                    bbsSearchData.status = bbsSearch.status
                    
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
                    var likeListData = LikeListData()
                    likeListData.status = likeList.status
                    likeListData.members = likeList.members
                    likeListData.page = likeList.page
                    likeListData.rows = likeList.rows
                    
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
                    var loginData = LoginData()
                    loginData.status = login.status
                    loginData.member = login.member
                    
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
                    var mailFovoriteData = MailFovoriteData()
                    mailFovoriteData.status = mailFovorite.status
                    mailFovoriteData.maile_favorite_status = mailFovorite.maile_favorite_status
                    
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
                    var mailFileDeleteData = MailFileDeleteData()
                    mailFileDeleteData.status = mailFileDelete.status
                    
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
                    var memoData = MemoData()
                    memoData.status = memo.status
                    memoData.list = memo.list
                    memoData.total_num = memo.total_num
                    memoData.list_num = memo.list_num
                    memoData.current_page = memo.current_page
                    
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
                    var passwordChangeData = PasswordChangeData()
                    passwordChangeData.password = passwordChange.password
                    passwordChangeData.password_change = passwordChange.password_change
                    
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
                    var obtainedByPrefectureData = ObtainedByPrefectureData()
                    obtainedByPrefectureData.perf = obtainedByPrefecture.perf
                    obtainedByPrefectureData.colona_emergency_fla = obtainedByPrefecture.colona_emergency_fla
                    obtainedByPrefectureData.perf_id = obtainedByPrefecture.perf_id
                    
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
                    var profileSerchData = ProfileSerchData()
                    profileSerchData.list_num = profileSerch.list_num
                    profileSerchData.member = profileSerch.member
                    profileSerchData.stutas = profileSerch.stutas
                    
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
                    var profileDeleteData = ProfileDeleteData()
                    profileDeleteData.list = profileDelete.list
                    
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
                    var profileEditData = ProfileEditData()
                    profileEditData.stutas = profileEdit.stutas
                    profileEditData.nitice = profileEdit.nitice
                    
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
                    var smilListData = SmilListData()
                    smilListData.stutas = smilList.stutas
                    smilListData.list = smilList.list
                    smilListData.smiled_today = smilList.smiled_today
                    smilListData.smiled_total = smilList.smiled_total
                    
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
                    var talkCommentData = TalkCommentData()
                    talkCommentData.stutas = talkComment.stutas
                    talkCommentData.rows = talkComment.rows
                    talkCommentData.page = talkComment.page
                    talkCommentData.comment_num = talkComment.comment_num
                    talkCommentData.comments = talkComment.comments
                    talkCommentData.sort = talkComment.sort
                    talkCommentData.total_comment_num = talkComment.total_comment_num
                    
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
                    var talkCommentHistoryData = TalkCommentHistoryData()
                    talkCommentHistoryData.status = talkCommentHistory.status
                    talkCommentHistoryData.total_comment_num = talkCommentHistory.total_comment_num
                    talkCommentHistoryData.comments = talkCommentHistory.comments
                    talkCommentHistoryData.talk_comment_num = talkCommentHistory.talk_comment_num
                    
                    
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
                    var talkDeleteResultData = TalkDeleteResultData()
                    talkDeleteResultData.result = talkDeleteResult.result
                    
                    
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
                    var talkSearchtData = TalkSearchtData()
                    talkSearchtData.page = talkSearcht.page
                    talkSearchtData.stutas = talkSearcht.stutas
                    talkSearchtData.masseage_num = talkSearcht.masseage_num
                    talkSearchtData.masseages = talkSearcht.masseages
                    talkSearchtData.time = talkSearcht.time
                    talkSearchtData.total_masseage_num = talkSearcht.total_masseage_num
                    
                    
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
                    var favoriteBbsListData = FavoriteBbsListData()
                    favoriteBbsListData.stutas = favoriteBbsList.stutas
                    favoriteBbsListData.list = favoriteBbsList.list
                    favoriteBbsListData.total_bbs_num = favoriteBbsList.total_bbs_num
                    favoriteBbsListData.bbs_num = favoriteBbsList.bbs_num
                    favoriteBbsListData.total_mail_num = favoriteBbsList.total_mail_num
                    
                    
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


