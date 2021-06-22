//
//  AllVideosApp.swift
//  AllVideos
//
//  Created by LJ Jacobs on 22/06/2021.
//

import SwiftUI

@main
struct AllVideosApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(ContentModel())
        }
    }
}
