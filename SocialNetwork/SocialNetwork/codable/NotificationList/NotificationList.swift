//
//  NotificationList.swift
//  SocialNetwork
//
//  Created by matsumotoyuina on 2022/09/28.
//

import Foundation

struct NotificationList: Codable {
    var status: String
    var notification_unm: String
    var total_notification_unm: String
    var notification: NotificationListNotification
    
}
