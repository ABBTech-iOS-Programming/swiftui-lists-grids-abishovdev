//
//  DiscountViewModel.swift
//  Books
//
//  Created by azer on 17.08.26.
//

import SwiftUI
import Combine


final class DiscountViewModel:ObservableObject{
    @Published var cards:[Discount] = Discount.cards
}
