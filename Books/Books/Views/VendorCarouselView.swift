//
//  VendorCarouselView.swift
//  Books
//
//  Created by azer on 10.08.26.
//

import SwiftUI

struct VendorCarouselView: View {
    let vendors = Vendor.vendors
    @State private var showAll = false
    
    var body: some View {
        TitleView(title: "Best vendors", btnTitle: "See all"){
            showAll = true
        }
        ScrollView(.horizontal,showsIndicators: false){
            LazyHStack(spacing:8){
                ForEach(vendors){ vendor in
                        VendorCard(vendor: vendor)
                }
            }
        }
        .padding(.horizontal,24)
        .navigationDestination(isPresented: $showAll){
            VendorsView()
        }
    }
}

#Preview {
    VendorCarouselView()
}
