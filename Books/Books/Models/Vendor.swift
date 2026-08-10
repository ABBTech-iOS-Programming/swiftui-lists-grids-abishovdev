//
//  Vendor.swift
//  Books
//
//  Created by azer on 09.08.26.
//


import SwiftUI


//"All", "Books", "Poems", "Special for you", "Stationary",

enum Category: String{
    case books = "Books"
    case poems = "Poems"
    case specialForYou = "Special for you"
    case stationary = "Stationary"
    
    
}





struct Vendor:Identifiable{
    let id:UUID = UUID()
    let name: String
    let logo: ImageResource
    let stars: Int
    let category:Category
}


extension Vendor{
    static let vendors: [Vendor] = [
        Vendor(name: "Wattpad", logo: .book, stars: 3,category: .books),
        Vendor(name: "GooDay", logo: .gooDay, stars: 5,category: .stationary),
        Vendor(name: "Wattpad", logo: .book, stars: 4,category: .stationary),
        Vendor(name: "GooDay", logo: .gooDay, stars: 3,category: .books),
        Vendor(name: "Wattpad", logo: .book, stars: 4,category: .books),
        Vendor(name: "Wattpad", logo: .gooDay, stars: 2,category: .poems),
        Vendor(name: "GooDay", logo: .book, stars: 4,category: .books),
    ]
}
