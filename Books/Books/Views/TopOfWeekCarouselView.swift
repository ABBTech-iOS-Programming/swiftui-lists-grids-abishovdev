//
//  TopOfWeekCarouselView.swift
//  Books
//
//  Created by azer on 10.08.26.
//

import SwiftUI

struct TopOfWeekCarouselView: View {
    
    
    @StateObject private var viewModel = BookViewModel()
    var body: some View {
       
        TitleView(title: "Top of week", btnTitle: "See all")
        ScrollView(.horizontal,showsIndicators: false) {
            LazyHStack(spacing: 12){
                ForEach(viewModel.books){ book in
                    TopOfWeekCard(book: book)
                    
                }
            }
        }
        .padding(.horizontal,24)
    }
}

#Preview {
    TopOfWeekCarouselView()
}
