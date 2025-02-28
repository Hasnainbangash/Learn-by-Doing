//
//  CardView.swift
//  Learn by Doing
//
//  Created by Elexoft on 28/02/2025.
//

import SwiftUI

struct CardView: View {
    
    // MARK: - CARD
    
    var body: some View {
        ZStack {
            Text("Card")
        }
        .frame(width: 335, height: 545)
        .background(Color.pink)
        .cornerRadius(16)
        .shadow(radius: 8)
    }
}

#Preview {
    CardView()
}
