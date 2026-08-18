//
//  ContentView.swift
//  Books
//
//  Created by azer on 09.08.26.
//

import SwiftUI

struct Home: View {
    
    var body: some View {
      

        NavigationStack {
            ScrollView{
                
                VStack(spacing: 32){
                    DisCountCarouselView()
                    TopOfWeekCarouselView()
                    VendorCarouselView()
                    AuthorCarouselView()
                }
               
               
                
            }
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(.inline)
            .background(.white)
            .navigationDestination(for: Author.self) { author in
                AuthorDetail(author: author)
            }
            
            
            
        }

    }

}

#Preview {
    Home()
}
