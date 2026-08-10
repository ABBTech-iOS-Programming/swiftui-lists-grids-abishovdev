//
//  AuthorCard.swift
//  Books
//
//  Created by azer on 10.08.26.
//

import SwiftUI

struct AuthorCard: View {
    let author: Author
    var body: some View {
        VStack(alignment: .leading){
            Image(author.image)
                .resizable()
                .frame(width: 102,height: 102)
                .padding(.bottom,15)
            
            Text(author.fullname)
                .font(.system(size: 16))
                .fontWeight(.medium)
                .padding(.bottom,4)
            Text(author.type)
                .font(.system(size: 14))
                .foregroundStyle(.secondary)
            
        }
    }
}

#Preview {
    AuthorCard(author:  Author(fullname: "John Freeman", image: .author, bio: "American writer he  was the editor of the",type:"Writer",profession: .journalists))
}
