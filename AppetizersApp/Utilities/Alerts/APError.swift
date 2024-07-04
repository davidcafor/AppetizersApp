//
//  APError.swift
//  AppetizersApp
//
//  Created by David Cardeña on 17/6/24.
//

import Foundation

enum APError: Error {
    case invalidURL
    case invalidResponse
    case invalidData
    case unableToComplete
}
