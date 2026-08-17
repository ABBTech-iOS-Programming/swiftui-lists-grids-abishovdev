//
//  BookViewModel.swift
//  Books
//
//  Created by azer on 17.08.26.
//


import SwiftUI
import Combine

final class BookViewModel:ObservableObject{
    @Published var books:[Book] = Book.books
}
