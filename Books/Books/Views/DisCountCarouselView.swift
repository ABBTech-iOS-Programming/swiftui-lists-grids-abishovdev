//
//  DisCountCarouselView.swift
//  Books
//
//  Created by azer on 10.08.26.
//

import SwiftUI

struct DisCountCarouselView: View {
    @State private var selectedID: Discount.ID?
    let cards = Discount.cards
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack {
                ForEach(cards) { card in
                    DiscountCard(card: card)
                        .containerRelativeFrame(.horizontal)
                        .id(card.id)
                }
            }
            .scrollTargetLayout()
        }

        .contentMargins(.horizontal, 24, for: .scrollContent)
        .scrollTargetBehavior(.viewAligned)
        .scrollPosition(id: $selectedID)
        .padding(.bottom,16)

        LazyHStack {
            ForEach(cards) { card in
                let isSelected = card.id == selectedID
                Circle()
                    .fill(
                        isSelected
                            ? Color.main : Color.unselectedIndicator
                    )
                    .frame(
                        width: isSelected ? 10 : 5,
                        height: isSelected ? 10 : 5
                    )

            }
        }
        .onAppear {
            if selectedID == nil { selectedID = cards.first?.id }
        }
    }
}

#Preview {
    DisCountCarouselView()
}
