//
//  Appetizer.swift
//  Appetizers
//
//  Created by Dr Cpt Blackbeard on 7/18/23.
//

import Foundation
/// We only need Decodable because we're parsing JSON, not encoding it.
struct Appetizer: Decodable, Identifiable {
    var uuid = UUID()
    
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

struct MockData {
    static let sampleAppetizer = Appetizer(id: 19,
                                           name: "Skrimp Sando",
                                           description: "Yumm skrimpo for my rumbly tummo!",
                                           price: 4.99,
                                           imageURL: "",
                                           calories: 580,
                                           protein: 22,
                                           carbs: 800
    )
    
    static let appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer]
}
