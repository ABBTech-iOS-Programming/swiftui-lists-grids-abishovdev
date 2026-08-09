//
//  Discount.swift
//  Books
//
//  Created by azer on 09.08.26.
//


import SwiftUI

struct Discount:Identifiable{
    let id:UUID = UUID()
    let percent: Int
    let image: ImageResource
}

extension Discount{
    static let cards : [Discount] = [
        Discount(percent: 25, image: .apollo),
        Discount(percent: 25, image: .apollo),
        Discount(percent: 25, image: .apollo),
    ]
}
