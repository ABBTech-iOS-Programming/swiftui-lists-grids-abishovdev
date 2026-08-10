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




struct Author:Identifiable {
    let id:UUID = UUID()
    let fullname: String
    let image: ImageResource
    let bio:String
    let type: String
    let profession: Profession
    
}

extension Author{
    static let authors: [Author] = [
        Author(fullname: "John Freeman", image: .author, bio: "American writer he  was the editor of the",type: "Writer",profession: .poets),
        Author(fullname: "Tess Gunty", image: .author2, bio: "American writer he  was the editor of the",type: "Novelist",profession: .novelists),
        Author(fullname: "John Freeman", image: .author, bio: "American writer he  was the editor of the",type: "Writer",profession: .poets),
        Author(fullname: "Tess Gunty", image: .author2, bio: "American writer he  was the editor of the",type: "Writer",profession: .playwrights),
        Author(fullname: "John Freeman", image: .author, bio: "American writer he  was the editor of the",type: "Writer",profession: .novelists),
        
    ]
}
