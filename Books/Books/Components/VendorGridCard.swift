//
//  VendorGridCard.swift
//  Books
//
//  Created by azer on 10.08.26.
//

import SwiftUI

struct VendorGridCard: View {
    
    let vendor: Vendor
    
    var body: some View {
        VStack(alignment: .leading,spacing: 8){
            
            ZStack{
                Image(vendor.logo)
            }
            .frame(width: 101,height: 101)
            .background(.vendorCardBg)
            .clipShape(RoundedRectangle(cornerRadius: 8))
            
            Text(vendor.name)
            
            StarRatingView(rating: vendor.stars)
            
            
        }
    }
}

#Preview {
    VendorGridCard(vendor: Vendor(name: "Wattpad", logo: .book, stars: 4))
}
