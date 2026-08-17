//
//  BookSheetView.swift
//  Books
//
//  Created by azer on 17.08.26.
//

import SwiftUI

struct BookSheetView: View {
    let book: Book
    @StateObject private var vendorVM = VendorViewModel()
    @State private var count = 1

    var body: some View {
        ScrollView {
        VStack(spacing: 16) {
            Image(book.image)
                .resizable()
                .frame(width: 237, height: 313)
                .clipShape(RoundedRectangle(cornerRadius: 16))
            
            
            VStack(alignment:.leading){
                HStack {
                    Text(book.name)
                        .font(.system(size:20))
                        .fontWeight(.bold)
                    
                    Spacer()
                    Image(systemName: book.isFavorite ? "heart.fill":"heart")
                        .resizable()
                        .frame(width: 20,height: 20)
                        .foregroundStyle(.main)
                }

                if let vendor = vendorVM.getVendorImageById(by: book.vendorID) {
                    VStack {
                        Image(vendor.logo)
                            .resizable()
                            .frame(width: 80, height: 22)
                        
                        
                    }
                }
                
                Text(book.description)
                    .font(.system(size: 14))
                    .foregroundStyle(.secondary)
                
            }

           
        }
        .padding(.bottom,24)
        
        VStack(alignment: .leading){
            Text("Review")
                .font(.system(size: 18))
                .fontWeight(.bold)
            HStack{
                StarRatingView(rating: book.rating)
                Text("(\(Double(book.rating),specifier:"%.1f"))")
                    .font(.system(size: 14))
                    .fontWeight(.semibold)
            }
            
            
            
            
            
            HStack{
                
                HStack{
                    
                  
                    Button{
                        if count>1 {
                            count -= 1
                        }
                        
                    }label: {
                        Image(systemName: "minus")
                            .tint(.secondary)
                    }
                    .frame(width: 20,height: 20)
                    .background(.gray)
                    .clipShape(.circle,)
                    
                    Spacer()
                    Text("\(count)")
                        .font(.system(size: 16))
                        .fontWeight(.semibold)
                    Spacer()
                    
                    Button{
                        count += 1
                    }label: {
                        Image(systemName: "plus")
                            .tint(.white)
                            
                    }
                    .frame(width: 20,height: 20)
                    .background(.main)
                    .clipShape(.circle)
                }
                
                .frame(width: 106,height: 40)
                .padding(.horizontal,8)
                .background(.vendorCardBg)
                .clipShape(RoundedRectangle(cornerRadius: 8))
                
                
                
                
                Text("$\(book.price * Double(count),specifier:"%.2f")")
                    .font(.system(size: 16))
                    .fontWeight(.semibold)
                    .foregroundStyle(.main)
                
                
                
            }
            .padding(.top,24)
            
            HStack{
                Button{
                    
                }label: {
                    Text("Continue shopping")
                        .font(.system(size: 16))
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                }
                .frame(width: 200,height: 48)
                .background(.main)
                .clipShape(RoundedRectangle(cornerRadius: 48))
                
                Spacer()
                
                Button{
                    
                }label: {
                    Text("View card")
                        .font(.system(size: 16))
                        .fontWeight(.bold)
                        .foregroundStyle(.main)
                }
                .frame(width: 170,height: 48)
                .background(.vendorCardBg)
                .clipShape(RoundedRectangle(cornerRadius: 48))
            }
        }
        .frame(maxWidth: .infinity,alignment: .leading)
        }
        .frame(maxHeight: .infinity, alignment: .top)
        .padding(.top,40)
    }
}

#Preview {
    BookSheetView(book: Book(
        name: "The Kite Runner",
        category: "dram",
        topOfWeek: true,
        image: .kiteRunner,
        price: 10.00,
        isFavorite: true,
        vendorID: Vendor.vendors[0].id,
        description: "safggeajasfdjasfdhjksa sfs",
        rating: 4
    ))
}
