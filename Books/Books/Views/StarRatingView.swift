//
//  StarRatingView.swift
//  Books
//
//  Created by azer on 10.08.26.
//

import SwiftUI

struct StarRatingView: View {
    let rating: Int
    let maxRating = 5
    var body: some View {
        HStack(spacing: 4) {
                   ForEach(1...maxRating, id: \.self) { index in
                       Image(systemName: "star.fill")
                           .foregroundStyle(index <= rating ? .yellow : Color(.black))
                           .font(.system(size: 14))
                   }
               }
    }
}

#Preview {
    StarRatingView(rating: 4)
}
