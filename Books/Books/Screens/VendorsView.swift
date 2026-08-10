//
//  VendorsView.swift
//  Books
//
//  Created by azer on 09.08.26.
//

import SwiftUI



struct VendorsView: View {

    static let categories = [
        "All", "Books", "Poems", "Special for you", "Stationary",
    ]
    @State private var selectedCategory = "All"
    
    let vendors = Vendor.vendors
    
    let columns = Array(repeating: GridItem(.flexible(), spacing: 16), count: 3)

    var body: some View {
        VStack {
            Text("Our vendors")
                .font(.system(size: 14))
                .foregroundStyle(.secondary)
            Text("Vendors")
                .font(.system(size: 20))
                .fontWeight(.bold)
                .foregroundStyle(.main)

        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.leading, 24)
        .padding(.bottom, 30)

        ScrollView {
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack(spacing: 24) {
                    ForEach(VendorsView.categories, id: \.self) { category in

                        Button {
                            selectedCategory = category
                        } label: {
                            
                            VStack{
                                Text(category)
                                    .font(.system(size: 18))
                                    .fontWeight(
                                        selectedCategory == category
                                            ? .bold : .regular
                                    )
                                    .foregroundStyle(
                                        selectedCategory == category
                                        ? .black : .secondary
                                    )

                                Rectangle()
                                    .fill(
                                        selectedCategory == category
                                            ? Color.main : Color.clear
                                    )
                                    .frame(height: 2)
                            }
                            .fixedSize()
                            
                        }

                    }
                }

            }
            .frame(maxWidth: .infinity)
            .padding(.bottom,28)
            
            VendorsGridView()
            
           

        }
        .navigationTitle("Vendors")
        .navigationBarTitleDisplayMode(.inline)
        .padding(.horizontal, 24)

    }
}

#Preview {
    VendorsView()
}
