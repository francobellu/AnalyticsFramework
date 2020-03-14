//
//  FirebaseAnalyticsEngine.swift
//  AccountRequest
//
//  Created by franco bellu on 27/02/2020.
//  Copyright © 2020 franco bellu. All rights reserved.
//

import Foundation
import Firebase

/// A concrete AnalyticsEngine
public class FirebaseAnalyticsEngine: AnalyticsEngine {

  public init(){
    FirebaseApp.configure()
  }
  ///  Log some some data in Firebase Analitics
  /// - parameter name: The Firebase Analytics event name
  /// - parameter name: The Firebase Analytics events parameters
  public func sendAnalyticsEvent(named name: String, parameters: [String: String]?) {
    Analytics.logEvent(name, parameters: parameters)
  }
}
