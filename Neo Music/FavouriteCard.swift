//
//  FavouriteCard.swift
//  Neo Music
//
//  Created by dominator on 08/03/20.
//  Copyright © 2020 dominator. All rights reserved.
//

import SwiftUI
struct FavouriteCard: View {
    let userName: String
    let songCount: Int
    let action: ()->Void
    var body: some View{
        Button(action: action) {
            VStack{
                HStack{
                    Button(action: {
                        
                    }) {
                        Image(systemName: "heart.fill")
                            .foregroundColor(.red)
                    }
                    .buttonStyle(NeoDarkButtonStyle())
                    Spacer()
                }
                .padding()
                
                Spacer()
                HStack{
                    VStack(alignment: .leading){
                        Text("Favorites")
                            .font(.title)
                        Text("\(userName)")
                            .font(.subheadline)
                            .foregroundColor(Color(UIColor.secondaryLabel))
                    }
                    Spacer()
                    VStack(alignment: .leading){
                        Text("\(songCount)")
                            .font(.headline)
                        Text("Songs")
                            .font(.subheadline)
                            .foregroundColor(Color(UIColor.tertiaryLabel))
                    }
                }
                .padding()
            }
        }
        .buttonStyle(CardButtonStyle(shape: RoundedRectangle(cornerRadius: 20)))
        .colorScheme(.dark)
    }
}

struct FavouriteCard_Previews: PreviewProvider {
    static var previews: some View{
        FavouriteCard.init(userName: "Name", songCount: 0, action: {} )
            .frame(width: 300, height: 200, alignment: .center).colorScheme(.dark)
    }
}
