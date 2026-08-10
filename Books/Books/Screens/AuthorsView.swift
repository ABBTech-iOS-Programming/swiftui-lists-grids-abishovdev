//
//  AuthorsView.swift
//  Books
//
//  Created by azer on 09.08.26.
//

import SwiftUI

struct AuthorsView: View {
    
    static let categories = [
        "All", "Poets", "Playwrights", "Novelists", "Journalists",
    ]
    @State private var selectedCategory = "All"
    
    
    var body: some View {
        
        VStack(alignment: .leading) {
            Text("Check the authors")
                .font(.system(size: 14))
                .foregroundStyle(.secondary)
            Text("Authors")
                .font(.system(size: 20))
                .fontWeight(.bold)
                .foregroundStyle(.main)

        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.leading, 24)
        .padding(.bottom, 30)
        
        
        ScrollView{
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack(spacing: 24) {
                    ForEach(AuthorsView.categories, id: \.self) { category in

                        Button {
                            selectedCategory = category
                        } label: {
                            
                            VStack{
                                Text(category)
                                    .font(.system(size: 18))
                                    .fontWeight(
                                        selectedCategory == category
                                            ? .bold : .regular
                                    )
                                    .foregroundStyle(
                                        selectedCategory == category
                                        ? .black : .secondary
                                    )

                                Rectangle()
                                    .fill(
                                        selectedCategory == category
                                            ? Color.main : Color.clear
                                    )
                                    .frame(height: 2)
                            }
                            .fixedSize()
                            
                        }

                    }
                }

            }
            .frame(maxWidth: .infinity)
            .padding(.bottom,28)
            
            AuthorListView()
            
        }
        .navigationTitle("Authors")
        .navigationBarTitleDisplayMode(.inline)
        .padding(.horizontal, 24)
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                Button {
                   
                } label: {
                    Image(systemName: "magnifyingglass")
                }
            }
        }
    }
}

#Preview {
    AuthorsView()
}
