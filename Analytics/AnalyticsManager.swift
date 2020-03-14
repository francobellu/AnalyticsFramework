//
//  AnalyticsManager.swift
//  AccountRequest
//
//  Created by franco bellu on 06/03/2020.
//  Copyright © 2020 franco bellu. All rights reserved.
//

import Foundation

/// This class  is used to log analytics events. Now it makes itself available as a singleton
///
/// It hides a concrete AnalyticsEngine
public class AnalyticsManager {

  /// The singleton instance
  public static var shared = AnalyticsManager(engine: AnalyticsManager.analyticsEngine)

  /// A concrete analytics engine used in release
  private static let analyticsEngine = FirebaseAnalyticsEngine()

  /// A concrete analytics engine
  public let engine: AnalyticsEngine

  /// Constructor
  public init(engine: AnalyticsEngine) {
    self.engine = engine
  }

  /// Logs an AnalyticsEvent
  /// - parameter event: The AnalyticsEvent to be logged
  public func log(_ event: AnalyticsEvent?) {
    guard let event = event else { return }
    engine.sendAnalyticsEvent(named: event.name, parameters: event.parameters)
  }
}
