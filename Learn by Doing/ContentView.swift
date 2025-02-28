//
//  ContentView.swift
//  Learn by Doing
//
//  Created by Elexoft on 27/02/2025.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    
    // MARK: - CONTENT
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 20) {
                ForEach(0 ..< 6) { item in
                    // CardView()
                    Text("Card")
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
