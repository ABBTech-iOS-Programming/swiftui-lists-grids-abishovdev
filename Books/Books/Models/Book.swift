//
//  Book.swift
//  Books
//
//  Created by azer on 09.08.26.
//


import SwiftUI

struct Book:Identifiable{
    let id: UUID = UUID()
    let name: String
    let category:String
    let topOfWeek: Bool
    let image : ImageResource
    let price : Double
    let isFavorite:Bool
    let vendorID:UUID
    let description:String
    let rating:Int
    
}

extension Book{
    static let books: [Book] = [
        Book(

            name: "The Kite Runner",
            category: "dram",
            topOfWeek: true,
            image: .kiteRunner,
            price: 10.00,
            isFavorite: true,
            vendorID: Vendor.vendors[0].id,
            description: "safggeajasfdjasfdhjksa sfs",
            rating: 4
        ),
        Book(
            name: "The Kite Runner",
            category: "dram",
            topOfWeek: true,
            image: .book2,
            price: 10.00,
            isFavorite: true,
            vendorID: Vendor.vendors[1].id,
            description: "safggeajasfdjasfdhjksa sfs",
            rating: 4
        ),
        Book(
            name: "The Kite Runner",
            category: "dram",
            topOfWeek: true,
            image: .kiteRunner,
            price: 10.00,
            isFavorite: true,
            vendorID: Vendor.vendors[0].id,
            description: "safggeajasfdjasfdhjksa sfs",
            rating: 4
        ),
        Book(
            name: "The Kite Runner",
            category: "dram",
            topOfWeek: true,
            image: .kiteRunner,
            price: 10.00,
            isFavorite: true,
            vendorID: Vendor.vendors[2].id,
            description: "safggeajasfdjasfdhjksa sfs",
            rating: 4
        ),
    ]
}
