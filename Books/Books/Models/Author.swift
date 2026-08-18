//
//  Author.swift
//  Books
//
//  Created by azer on 09.08.26.
//

import SwiftUI


//All
//Poets
//Playwrights
//Novelists
//Journalists
//journalists

enum Profession:String{
    case poets = "Poets"
    case playwrights = "Playwrights"
    case novelists = "Novelists"
    case journalists = "Journalists"
}




struct Author:Identifiable, Hashable {
    let id:UUID = UUID()
    let fullname: String
    let image: ImageResource
    let bio:String
    let type: String
    let profession: Profession
    let products: [Book]
    
    static func == (lhs: Author, rhs: Author) -> Bool {
        lhs.id == rhs.id
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}

extension Author{
    static let authors: [Author] = [
        Author(
            fullname: "John Freeman",
            image: .author,
            bio: "American writer he  was the editor of the",
            type: "Writer",
            profession: .poets,
            products: Array(Book.books.prefix(4))
        ),
        Author(
            fullname: "Tess Gunty",
            image: .author2,
            bio: "American writer he  was the editor of the",
            type: "Novelist",
            profession: .novelists,
            products: Array(Book.books.prefix(3))
        ),
        Author(
            fullname: "John Freeman",
            image: .author,
            bio: "American writer he  was the editor of the",
            type: "Writer",
            profession: .poets,
            products: Array(Book.books.prefix(4))
        ),
        Author(
            fullname: "Tess Gunty",
            image: .author2,
            bio: "American writer he  was the editor of the",
            type: "Writer",
            profession: .playwrights,
            products: Array(Book.books.prefix(3))
        ),
        Author(
            fullname: "John Freeman",
            image: .author,
            bio: "American writer he  was the editor of the",
            type: "Writer",
            profession: .novelists,
            products: Array(Book.books.prefix(4))
        ),
        
    ]
}
