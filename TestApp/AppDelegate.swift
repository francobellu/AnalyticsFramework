//
//  AppDelegate.swift
//  TestApp
//
//  Created by franco bellu on 13/03/2020.
//  Copyright © 2020 franco bellu. All rights reserved.
//

import UIKit
import Analytics

enum testAnalyticsEvent{
  case event1
  case event2(param1: String, param2: String)
}

extension testAnalyticsEvent: AnalyticsEvent{
  var name: String{
    switch self {
    case .event1:
      return String(describing: self)
    case .event2:
      return "event2"
    }
  }

  var parameters: [String: String]?{
    switch self {
    case .event1:
      return nil
    case .event2(let param1, let param2):
      return ["parameter1": "\(param1)", "parameter2": "\(param2)"]
    }
  }
}

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    // Override point for customization after application launch.

    let analyticsEngine = FirebaseAnalyticsEngine()
    let analyticsManager = AnalyticsManager(engine: analyticsEngine)

    analyticsManager.log(testAnalyticsEvent.event1)
    analyticsManager.log(testAnalyticsEvent.event2(
      param1: "test parameter1",
      param2: "test parameter 2"))
    return true
  }

  // MARK: UISceneSession Lifecycle

  func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
  }

  func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
  }


}

