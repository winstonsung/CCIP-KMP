//
//  OPassApp.swift
//  OPass
//
//  Created by Brian Chang on 2024/8/18.
//  2024 OPass.
//

import OSLog
import SwiftUI
import OneSignalFramework

@main
struct OPassApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) private var appDelegate

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
    private let logger = Logger(subsystem: "OPassApp", category: "AppDelegate")

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        // MARK: - Configure OneSignal
        OneSignal.initialize("b6213f49-e356-4b48-aa9d-7cf10ce1904d", withLaunchOptions: launchOptions)
        OneSignal.Notifications.requestPermission({ accepted in
            self.logger.info("User accepted notifications: \(accepted)")
        }, fallbackToSettings: false)
       return true
    }
}
