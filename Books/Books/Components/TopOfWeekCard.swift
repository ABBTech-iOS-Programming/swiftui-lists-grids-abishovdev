//
//  TopOfWeekCard.swift
//  Books
//
//  Created by azer on 10.08.26.
//

import SwiftUI

struct TopOfWeekCard: View {
    let book: Book
    @State private var isPrsented = false
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Image(book.image)
                .resizable()
                .frame(width: 130, height: 180)
                .clipShape(RoundedRectangle(cornerRadius: 12))
            Text(book.name)
                .font(.system(size: 14))
                .fontWeight(.medium)

            Text("$\(book.price, specifier: "%.2f")")
                .font(.system(size: 12))
                .fontWeight(.bold)
                .foregroundStyle(.main)
        }
        .onTapGesture {
            isPrsented = true
        }
        .sheet(isPresented: $isPrsented){
            BookSheetView(book: book)
                .padding(.horizontal,24)
        }
    }
        
}

#Preview {
    TopOfWeekCard(
        book:
            Book(
                name: "The Kite Runner",
                category: "dram",
                topOfWeek: true,
                image: .kiteRunner,
                price: 10.00,
                isFavorite: true,
                vendorID: UUID(),
                description: "safggeajasfdjasfdhjksa sfs",
                rating: 4
            )
    )
}
