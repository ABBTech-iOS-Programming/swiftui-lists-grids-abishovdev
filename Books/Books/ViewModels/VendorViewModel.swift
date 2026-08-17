//
//  VendorViewModel.swift
//  Books
//
//  Created by azer on 17.08.26.
//

import SwiftUI
import Combine

final class VendorViewModel: ObservableObject {
    @Published var vendors: [Vendor] = Vendor.vendors

    func getVendorImageById(by id: UUID) -> Vendor? {
        vendors.first { $0.id == id }
    }
}

