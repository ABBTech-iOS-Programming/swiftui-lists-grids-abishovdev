//
//  ContentView.swift
//  Books
//
//  Created by azer on 09.08.26.
//

import SwiftUI

struct Home: View {
    @State private var selectedID: Discount.ID?
    var body: some View {
      

        NavigationStack {
            ScrollView {
               
                DisCountCarouselView()
            }
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(.inline)
            
        }

    }

}

#Preview {
    Home()
}
