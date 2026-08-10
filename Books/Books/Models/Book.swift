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
}

extension Book{
    static let books: [Book] = [
        Book(name: "The Kite Runner", category: "dram", topOfWeek: true, image: .kiteRunner,price: 10.00),
        Book(name: "The Kite Runner", category: "dram", topOfWeek: true, image: .book2,price: 10.00),
        Book(name: "The Kite Runner", category: "dram", topOfWeek: true, image: .kiteRunner,price: 10.00),
        Book(name: "The Kite Runner", category: "dram", topOfWeek: true, image: .kiteRunner,price: 10.00),
    ]
}
