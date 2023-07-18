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
                Text(appetizer.name)
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
