//
//  AppetizerListCell.swift
//  Appetizers
//
//  Created by Dr Cpt Blackbeard on 7/18/23.
//

import SwiftUI

struct AppetizerListCell: View {
    let appetizer: Appetizer
    
    var body: some View {
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
}

struct AppetizerListCell_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerListCell(appetizer: MockData.sampleAppetizer)
    }
}
