//
//  MockAnalyticsEngine.swift
//  AnalyticsTests1
//
//  Created by franco bellu on 12/03/2020.
//  Copyright © 2020 franco bellu. All rights reserved.
//

import Foundation

@testable import Analytics

/// A Mocked concrete AnalyticsEngine. it is used in debug builds
class MockAnalyticsEngine: AnalyticsEngine {
  
  init(){
    print("MockAnalyticsEngine:init")
  }
  ///  Log some some data in Firebase Analitics
  /// - parameter name: A mock Analytics event name
  /// - parameter name: S mock Analytics events parameters
  func sendAnalyticsEvent(named name: String, parameters: [String: String]?) {
    print("MockAnalyticsEngine:sendAnalyticsEvent() \(name), parameters: \(String(describing: parameters))")
  }
}
