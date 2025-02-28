//
//  ContentView.swift
//  Learn by Doing
//
//  Created by Elexoft on 27/02/2025.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    
    var cards: [Card] = cardData
    
    // MARK: - CONTENT
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 20) {
                ForEach(cards) { item in
                    CardView(card: item)
                }
            } //: HSTACK
            .padding(20)
        } //: SCROLL
    }
}

// MARK: - PREVIEW

#Preview {
    ContentView()
}
