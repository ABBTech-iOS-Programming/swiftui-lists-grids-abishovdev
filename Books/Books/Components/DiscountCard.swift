//
//  DiscountCard.swift
//  Books
//
//  Created by azer on 10.08.26.
//

import SwiftUI

struct DiscountCard: View {
    let card: Discount
    var body: some View {
        HStack{
            VStack(alignment: .leading){
                Text("Special Offer")
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                Text("Discount \(card.percent)%")
                    .font(.system(size: 14))
                    .foregroundStyle(.secondary)
                
                Button{
                    
                }label: {
                    Text("Order now")
                        .font(.system(size: 14))
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                }
                .frame(width: 118,height: 36)
                .background(Color(.main))
                .clipShape(RoundedRectangle(cornerRadius: 40))
            }
            .padding(24)
            Spacer()
            Image(card.image)
                .resizable()
                .frame(width: 140,height: 146)
                .clipShape(RoundedRectangle(cornerRadius: 8))
            
        }
        .frame(maxWidth: .infinity)
        .frame(height: 146)
        .background(.cardBg)
        .clipShape(RoundedRectangle(cornerRadius: 8))
        
    }
}

#Preview {
    DiscountCard(card: Discount(percent: 25, image: .apollo))
}
