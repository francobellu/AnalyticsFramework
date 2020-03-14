//
//  AnalyticsTests1.swift
//  AnalyticsTests1
//
//  Created by franco bellu on 12/03/2020.
//  Copyright © 2020 franco bellu. All rights reserved.
//

import XCTest

@testable import Analytics

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

class AnalyticsTests1: XCTestCase {

  override func setUp() {
    // Put setup code here. This method is called before the invocation of each test method in the class.
  }

  override func tearDown() {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
  }


  func testFirebaseEngine() {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    let analyticsEngine = FirebaseAnalyticsEngine()
    let analyticsManager = AnalyticsManager(engine: analyticsEngine)

    analyticsManager.log(testAnalyticsEvent.event1)
    analyticsManager.log(testAnalyticsEvent.event2(
      param1: "test parameter1",
      param2: "test parameter 2"))

  }

//  func testMockEngine() {
//    // This is an example of a functional test case.
//    // Use XCTAssert and related functions to verify your tests produce the correct results.
//    let analyticsManager = AnalyticsManager(engine: MockAnalyticsEngine())
//
//    analyticsManager.log(testAnalyticsEvent.event1)
//    analyticsManager.log(testAnalyticsEvent.event2(
//      param1: "test parameter1",
//      param2: "test parameter 2"))
//
//  }

  func testPerformanceExample() {
    // This is an example of a performance test case.
    measure {
      // Put the code you want to measure the time of here.
    }
  }

}
