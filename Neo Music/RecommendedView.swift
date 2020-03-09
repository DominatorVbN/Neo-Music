//
//  RecommendedView.swift
//  Neo Music
//
//  Created by dominator on 09/03/20.
//  Copyright © 2020 dominator. All rights reserved.
//

import SwiftUI

struct RecommendedView: View {
    let title: String
    let genre: String
    let icon: Image
    let action: ()->Void
    var body: some View {
        Button(action: action) {
            HStack{
                VStack{
                    Button(action: {
                        
                    }) {
                        icon
                            .foregroundColor(.gray)
                    }
                    .buttonStyle(NeoDarkButtonStyle())
                    .padding(.horizontal)
                    Spacer()
                    VStack(alignment: .leading){
                        Text(title)
                            .font(.headline)
                        Text(genre)
                            .font(.subheadline)
                            .foregroundColor(
                                Color(UIColor.secondaryLabel))
                    }
                    .padding(.leading)
                }
                
                Spacer()
            }.padding(.vertical)
            
        }
        .buttonStyle(CardButtonStyle(shape: RoundedRectangle(cornerRadius: 20)))
    }
}

struct RecommendedView_Previews: PreviewProvider {
    static var previews: some View {
        RecommendedView(title: "Title", genre: "Genre", icon: Image(systemName: "star.fill"), action: {}).colorScheme(.dark)
    }
}
