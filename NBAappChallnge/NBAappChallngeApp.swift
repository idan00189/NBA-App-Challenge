//
//  NBAappChallngeApp.swift
//  NBAappChallnge
//
//  Created by idan Cohen on 06/05/2022.
//

import SwiftUI

@main
struct NBAappChallngeApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(ContentModel())
        }
    }
}
