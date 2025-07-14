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
    var width:Int = 30
    //  var color: UIColor = UIColor.systemYellow
    var openSFSymbol:String = "star"
    var fillSFSymbol:String = "star.fill"
    
    public init(maxRating: Int, currentRating: Binding<Int>, width: Int = 30, openSFSymbol: String = "star", fillSFSymbol: String = "star.fill") {
        self.maxRating = maxRating
        self._currentRating = currentRating
        self.width = width
        self.openSFSymbol = openSFSymbol
        self.fillSFSymbol = fillSFSymbol
    }
    
    public var body: some View {
        HStack {
            ForEach(0 ..< maxRating) { rating in
                Image(systemName: rating < self.currentRating ? self.fillSFSymbol : self.openSFSymbol)
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(.yellow)
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
