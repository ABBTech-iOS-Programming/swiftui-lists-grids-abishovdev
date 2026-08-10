//
//  TitleView.swift
//  Books
//
//  Created by azer on 10.08.26.
//

import SwiftUI

struct TitleView: View {
    var title:String
    var btnTitle:String
    var onPress: () -> Void = {}
    var body: some View {
        HStack{
            Text(title)
                .font(.system(size: 18))
                .fontWeight(.bold)
            Spacer()
            Button{
                onPress()
            }label: {
                Text(btnTitle)
                    .font(.system(size: 14))
                    .fontWeight(.bold)
                    .foregroundStyle(.main)
                
            }
        }
        .padding(.horizontal,24)
    }
}

#Preview {
    TitleView(title: "Top of week", btnTitle: "See all")
}
