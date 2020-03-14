//
//  FirebaseCustomEvents.swift
//  RedOne
//
//  Created by franco bellu on 07/02/2020.
//  Copyright © 2020 franco bellu. All rights reserved.
//

import Foundation

/// Generic Event used for analytics
///
/// NB: analytics event names can't contain spaces and have max lenght = 40 characters
/// Some events use parameters
///
public protocol AnalyticsEvent {
  /// The event name
  var name: String { get }
  /// A dictionary of event parameters
  var parameters: [String: String]? { get }
}
