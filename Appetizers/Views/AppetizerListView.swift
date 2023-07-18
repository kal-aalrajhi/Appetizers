//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Dr Cpt Blackbeard on 7/18/23.
//

import SwiftUI

struct AppetizerListView: View {
    var body: some View {
        NavigationView {
            List(MockData.appetizers) { appetizer in
                HStack(spacing: 20) {
                    Image(appetizer.imageURL)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(10)
                        .frame(width: 100, height: 100)
                    
                    VStack(alignment: .leading, spacing: 5) {
                        Text(appetizer.name)
                            .font(.headline)
                        
                        Text(String(format: "$%.2f", appetizer.price))
                            .font(.subheadline)
                            .bold()
                            .foregroundColor(.gray)
                    }
                }
            }
            .navigationTitle("🍤 Appetizers")
        }
    }
}

struct AppetizerListView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerListView()
    }
}
