//
//  SocialNetworkApp.swift
//  SocialNetwork
//
//  Created by 古堅ニノスカ on 2022/12/14.
//

import SwiftUI

@main
struct SocialNetworkApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
