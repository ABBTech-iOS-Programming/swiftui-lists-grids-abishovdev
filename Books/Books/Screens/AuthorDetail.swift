//
//  AuthorDetail.swift
//  Books
//
//  Created by azer on 18.08.26.
//

import SwiftUI

struct AuthorDetail: View {
    let author: Author
    
    @State private var isPresented = false
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        
    ]
    
    var body: some View {
        ScrollView {
            VStack(spacing: 0) {
                
                Image(author.image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 124, height: 124)
                    .clipShape(RoundedRectangle(cornerRadius: 16))
                    .padding(.bottom, 8)

               
                Text(author.type)
                    .font(.system(size: 14))
                    .foregroundStyle(.secondary)
                    .padding(.bottom, 6)

                
                Text(author.fullname)
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                    .padding(.bottom, 16)

                
                HStack(spacing: 4) {
                    StarRatingView(rating: 4)
                    Text("(4.0)")
                        .font(.system(size: 14))
                        .fontWeight(.semibold)
                }
                .padding(.bottom, 24)

                
                VStack(alignment: .leading, spacing: 8) {
                    Text("About")
                        .font(.system(size: 16))
                        .fontWeight(.bold)
                    Text(author.bio)
                        .font(.system(size: 14))
                        .foregroundStyle(.secondary)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.bottom, 24)

                
                VStack(alignment: .leading, spacing: 12) {
                    Text("Products")
                        .font(.system(size: 16))
                        .fontWeight(.bold)

                    LazyVGrid(columns: columns, spacing: 16) {
                        ForEach(author.products) { product in
                            VStack(alignment: .leading, spacing: 4) {
                                Image(product.image)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(maxWidth: .infinity)
                                    .frame(height: 158)
                                    .clipShape(RoundedRectangle(cornerRadius: 12))
                                    .clipped()

                                Text(product.name)
                                    .font(.system(size: 14))
                                    .fontWeight(.medium)

                                Text("$\(product.price, specifier: "%.2f")")
                                    .font(.system(size: 12))
                                    .fontWeight(.bold)
                                    .foregroundStyle(.main)
                            }
                            .onTapGesture {
                                isPresented = true
                            }
                            .sheet(isPresented: $isPresented){
                                BookSheetView(book: product)
                                    .padding(.horizontal,24)
                            }
                        }
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal, 24)
        }
        .navigationTitle("Author Detail")
    }
}

#Preview {
    AuthorDetail(author: Author.authors.first!)
}
