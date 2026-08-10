//
//  AuthorInfoCard.swift
//  Books
//
//  Created by azer on 10.08.26.
//

import SwiftUI

struct AuthorInfoCard: View {
    let author: Author
    var body: some View {
        HStack(alignment: .top, spacing: 12){
            Image(author.image)
                .resizable()
                .frame(width: 68,height: 68)
            VStack(alignment: .leading,spacing: 6){
                Text(author.fullname)
                    .font(.system(size: 18))
                    .fontWeight(.bold)
                    
                Text(author.bio)
                    .font(.system(size: 14))
                    .fontWeight(.medium)
                    .foregroundStyle(.secondary)
                    
                
            }
        
            
            
           
        }
        .frame(maxWidth: .infinity,alignment: .leading)
        
    }
}

#Preview {
    AuthorInfoCard(author: Author(fullname: "John Freeman", image: .author, bio: "American writer he  was the editor of the",type: "Writer"))
}
