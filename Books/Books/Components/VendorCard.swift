//
//  VendorCard.swift
//  Books
//
//  Created by azer on 10.08.26.
//

import SwiftUI

struct VendorCard: View {
    let vendor : Vendor
    var body: some View {
        ZStack{
            Image(vendor.logo)
        }
        .frame(width: 80,height: 80)
        .background(.vendorCardBg)
        .clipShape(RoundedRectangle(cornerRadius: 8))
    }
}

#Preview {
    VendorCard(vendor:Vendor(name: "Wattpad", logo: .book, stars: 3,category: .books))
}
