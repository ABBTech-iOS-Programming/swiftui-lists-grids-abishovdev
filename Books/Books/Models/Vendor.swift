//
//  Vendor.swift
//  Books
//
//  Created by azer on 09.08.26.
//


import SwiftUI

struct Vendor:Identifiable{
    let id:UUID = UUID()
    let name: String
    let logo: ImageResource
    let stars: Int
    
}


extension Vendor{
    static let vendors: [Vendor] = [
        Vendor(name: "Wattpad", logo: .book, stars: 3),
        Vendor(name: "Wattpad", logo: .book, stars: 5),
        Vendor(name: "Wattpad", logo: .book, stars: 4),
        Vendor(name: "Wattpad", logo: .book, stars: 3),
        Vendor(name: "Wattpad", logo: .book, stars: 4),
        Vendor(name: "Wattpad", logo: .book, stars: 2),
        Vendor(name: "Wattpad", logo: .book, stars: 4),
    ]
}
