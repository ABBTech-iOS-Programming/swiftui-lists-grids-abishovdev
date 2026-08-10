//
//  VendorsGridView.swift
//  Books
//
//  Created by azer on 10.08.26.
//

import SwiftUI

struct VendorsGridView: View {

    let vendors: [Vendor]

    let columns = Array(repeating: GridItem(.flexible(), spacing: 12), count: 3)

    var body: some View {
        ScrollView {
            if vendors.isEmpty {
                Text("No vendors found")
                    .font(.system(size: 16))
                    .foregroundStyle(.secondary)
                    .frame(maxWidth: .infinity)
                    .padding(.top, 60)
            } else {
                LazyVGrid(columns: columns, spacing: 16) {
                    ForEach(vendors) { vendor in
                        VendorGridCard(vendor: vendor)

                    }
                }
            }

        }
    }
}

#Preview {
    VendorsGridView(vendors: [
        Vendor(name: "Wattpad", logo: .book, stars: 3, category: .books)
    ])
}
