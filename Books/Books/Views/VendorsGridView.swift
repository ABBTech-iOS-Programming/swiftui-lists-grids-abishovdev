//
//  VendorsGridView.swift
//  Books
//
//  Created by azer on 10.08.26.
//

import SwiftUI

struct VendorsGridView: View {
    
    let vendors = Vendor.vendors
    
    let columns = Array(repeating: GridItem(.flexible(), spacing: 12), count: 3)
    
    
    var body: some View {
        ScrollView{
            LazyVGrid(columns: columns,spacing: 16){
                ForEach(vendors){ vendor in
                    VendorGridCard(vendor: vendor)
                    
                }
            }
        }
    }
}

#Preview {
    VendorsGridView()
}
