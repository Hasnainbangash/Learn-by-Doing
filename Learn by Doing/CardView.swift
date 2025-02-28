//
//  CardView.swift
//  Learn by Doing
//
//  Created by Elexoft on 28/02/2025.
//

import SwiftUI

struct CardView: View {
    // MARK: - PROPERTIES
    
    var card: Card
    
    // Used for the sample data
    // var gradient : [Color] = [Color("Color01"), Color("Color02")]
    
    // MARK: - CARD
    
    var body: some View {
        ZStack {
            Image(card.imageName)
            
            VStack {
                Text(card.title)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                Text(card.headline)
                    .fontWeight(.light)
                    .foregroundColor(Color.white)
                    .italic()
            } //: VSTACK
            .offset(y: -218)
            
            Button(action: {
                print("Button was tapped.")
            }) {
                HStack {
                    Text(card.callToAction.uppercased())
                        .fontWeight(.heavy)
                        .foregroundColor(Color.white)
                        .accentColor(Color.white)
                    
                    Image(systemName: "arrow.right.circle")
                        .font(Font.title.weight(.medium))
                        .accentColor(Color.white)
                } //: HSTACK
                .padding(.vertical)
                .padding(.horizontal, 24)
                .background(LinearGradient(gradient: Gradient(colors: card.gradientColors), startPoint: .leading, endPoint: .trailing))
                .clipShape(Capsule())
                .shadow(color: Color("ColorShadow"), radius: 6, x: 0, y: 3)
            } //: BUTTON
            .offset(y: 210)
        } //: ZSTACK
        .frame(width: 335, height: 545)
        .background(LinearGradient(gradient: Gradient(colors: card.gradientColors), startPoint: .top, endPoint: .bottom))
        .cornerRadius(16)
        .shadow(radius: 8)
    }
}

#Preview {
    CardView(card: cardData[0])
        .previewLayout(.sizeThatFits)
}
