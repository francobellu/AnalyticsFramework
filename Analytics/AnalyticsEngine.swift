//
//  AnalyticsEngine.swift
//  AccountRequest
//
//  Created by franco bellu on 06/03/2020.
//  Copyright © 2020 franco bellu. All rights reserved.
//

import Foundation

/// Generic type for an analytics engine.
/// We want a concrete AnalyticsEngine to be of a classes type so that the same instance
/// can be shared without duplications
public protocol AnalyticsEngine: class {
    /// Generic funcion for  logging analytics data
    func sendAnalyticsEvent(named name: String, parameters: [String: String]?)
}
