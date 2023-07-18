//
//  Appetizer.swift
//  Appetizers
//
//  Created by Dr Cpt Blackbeard on 7/18/23.
//

import Foundation
/// We only need Decodable because we're parsing JSON, not encoding it.
struct Appetizer: Decodable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}

/// Mirrors the response of the given JSON
struct AppetizerResponse {
    let request: [Appetizer]
}


