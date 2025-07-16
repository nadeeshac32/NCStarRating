//
//  StartRatingView.swift
//  StarRating
//
//  Created by Nadeesha Chandrapala on 14/07/2025.
//

import SwiftUI

public struct NCStarRating: View {
    
    var maxRating: Int
    @Binding var currentRating: Int
    var width:Int
    var color: Color
    var openSFSymbol:String
    var fillSFSymbol:String
    
    public init(maxRating: Int, currentRating: Binding<Int>, width: Int = 30, color: Color = Color.yellow, openSFSymbol: String = "star", fillSFSymbol: String = "star.fill") {
        self.maxRating = maxRating
        self._currentRating = currentRating
        self.width = width
        self.color = color
        self.openSFSymbol = openSFSymbol
        self.fillSFSymbol = fillSFSymbol
    }
    
    public var body: some View {
        HStack {
            ForEach(0..<maxRating, id: \.self) { rating in
                Image(systemName: rating < self.currentRating ? self.fillSFSymbol : self.openSFSymbol)
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(self.color)
                    .onTapGesture {
                        self.currentRating = rating+1
                }
            }
        }.frame(width: CGFloat(maxRating * width))
    }
}

#Preview {
    @Previewable @State var rating = 0
    NCStarRating(maxRating: 5, currentRating: $rating)
}
