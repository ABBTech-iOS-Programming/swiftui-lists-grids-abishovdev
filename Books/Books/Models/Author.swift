//
//  Author.swift
//  Books
//
//  Created by azer on 09.08.26.
//

import SwiftUI

struct Author:Identifiable {
    let id:UUID = UUID()
    let fullname: String
    let image: ImageResource
    let bio:String
    let type: String
    
}

extension Author{
    static let authors: [Author] = [
        Author(fullname: "John Freeman", image: .author, bio: "American writer he  was the editor of the",type: "Writer"),
        Author(fullname: "John Freeman", image: .author, bio: "American writer he  was the editor of the",type: "Novelist"),
        Author(fullname: "John Freeman", image: .author, bio: "American writer he  was the editor of the",type: "Writer"),
        Author(fullname: "John Freeman", image: .author, bio: "American writer he  was the editor of the",type: "Writer"),
        
    ]
}
