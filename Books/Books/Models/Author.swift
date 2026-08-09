//
//  Author.swift
//  Books
//
//  Created by azer on 09.08.26.
//

import SwiftUI

struct Author {
    let fullname: String
    let image: ImageResource
    let bio:String
    
}

extension Author{
    static let author: [Author] = [
        Author(fullname: "John Freeman", image: .author, bio: "American writer he  was the editor of the  "),
        Author(fullname: "John Freeman", image: .author, bio: "American writer he  was the editor of the  "),
        Author(fullname: "John Freeman", image: .author, bio: "American writer he  was the editor of the  "),
        Author(fullname: "John Freeman", image: .author, bio: "American writer he  was the editor of the  "),
        Author(fullname: "John Freeman", image: .author, bio: "American writer he  was the editor of the  "),
        Author(fullname: "John Freeman", image: .author, bio: "American writer he  was the editor of the  "),
    ]
}
