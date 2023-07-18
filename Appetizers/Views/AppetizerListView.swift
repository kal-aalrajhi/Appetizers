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
                        .frame(width: 120, height: 90)
                        .cornerRadius(6)
                    
                    VStack(alignment: .leading, spacing: 5) {
                        Text(appetizer.name)
                            .font(.title2)
                        
                        Text("$\(appetizer.price, specifier: "%.2f")")
                            .font(.title3)
                            .bold()
                            .foregroundColor(.secondary)
                    }
                }
            }
            .navigationTitle("🍤 Appetizers")
            .listStyle(.plain)
        }
    }
}

struct AppetizerListView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerListView()
    }
}
