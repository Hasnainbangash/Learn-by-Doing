//
//  CardView.swift
//  Learn by Doing
//
//  Created by Elexoft on 28/02/2025.
//

import SwiftUI

struct CardView: View {
    // MARK: - PROPERTIES
    
    var gradient : [Color] = [Color("Color01"), Color("Color02")]
    
    // MARK: - CARD
    
    var body: some View {
        ZStack {
            Image("developer-no1")
            
            VStack {
                Text("SwiftUI")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                Text("Better apps. Less code.")
                    .fontWeight(.light)
                    .foregroundColor(Color.white)
                    .italic()
            } //: VSTACK
            .offset(y: -218)
        } //: ZSTACK
        .frame(width: 335, height: 545)
        .background(LinearGradient(gradient: Gradient(colors: gradient), startPoint: .top, endPoint: .bottom))
        .cornerRadius(16)
        .shadow(radius: 8)
    }
}

#Preview {
    CardView()
        .previewLayout(.sizeThatFits)
}
