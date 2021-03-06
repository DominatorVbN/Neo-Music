//
//  PlaylistsView.swift
//  Neo Music
//
//  Created by dominator on 08/03/20.
//  Copyright © 2020 dominator. All rights reserved.
//

import SwiftUI

struct PlaylistsView: View {
    @State var isPlaying = false
    
    var saprator: some View{
        Rectangle()
            .fill(Color.gray.opacity(0.2))
        .frame(height: 1)
        .frame(minWidth: 0,maxWidth: .infinity)
    }
    
    var recommended: some View{
        GeometryReader{ geo in
            VStack(alignment: .leading){
                Text("Recommended")
                    .font(.title)
                    .bold()
                    .padding(.horizontal)
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 30){
                        ForEach([1,2,3,4,5], id: \.self) { _ in
                            RecommendedView(title: "Title", genre: "Genre", icon: Image(systemName: "star.fill"), action: {
                                
                            })
                            .frame(
                                width: (geo.size.width - 60) * (2/3),
                                height: (geo.size.width - 60) * 0.5)
                                .padding(.vertical,30)
                        }
                        
                        
                    }
                    .padding(.horizontal,30)
                }
                
            }
        }
    }
    
    var body: some View {
        GeometryReader{ geo in
            NavigationView{
                ZStack(alignment: .center){
                    Color.backgroundColor
                        .edgesIgnoringSafeArea(.all)
                    ScrollView{
                        VStack{
                            FavouriteCard(userName: "Amit", songCount: 123) {
                            }
                            .frame(
                                width: geo.size.width - 60,
                                height: (geo.size.width - 60) * 0.5)
                                .padding(.vertical,30)
                            self.saprator
                            self.recommended
                        }
                        .padding(.top, 50)
                        .navigationBarTitle("Playlists")
                    }
                }
                .overlay(
                    VStack{
                        Spacer()
                        ZStack{
                            GeometryReader{ inGeo in
                                Capsule()
                                    .fill(LinearGradient(gradient: Gradient(colors: [Color.black,Color.black, Color.gray]), startPoint: .top, endPoint: .bottom))
                                        
                                Capsule()
                                    .fill(LinearGradient(Color.redStart, Color.redEnd))
                                    .frame(width: inGeo.size.width * 0.5)
                            }
                        }
                        .frame(width: geo.size.width - 40, height: 8)
                        .padding(.bottom, 20)
                        HStack{
                            VStack(alignment: .leading, spacing: 4){
                                Text("Song Name")
                                    .font(.headline)
                                Text("Artist name")
                                    .font(.callout)
                                    .foregroundColor(Color(UIColor.secondaryLabel))
                            }
                            Spacer()
                            HStack{
                                Button(action: {
                                    
                                }) {
                                    Image(systemName: "backward.fill")
                                        .foregroundColor(.gray)
                                }
                                Button(action: {
                                    self.isPlaying.toggle()
                                }) {
                                    Image(systemName: self.isPlaying ? "play.fill":"pause.fill")
                                        .foregroundColor(.white)
                                }
                                .buttonStyle(PrimaryButtonStyle(shape: Circle()))
                                Button(action: {
                                    
                                }) {
                                    Image(systemName: "forward.fill")
                                        .foregroundColor(.gray)
                                }
                            }
                        }
                        .padding()
                        .frame( height: 100)
                        .frame(minWidth: 0,  maxWidth: .infinity)
                        .background(
                            Rectangle()
                                .fill(Color.darkEnd)
                        )

                    }.edgesIgnoringSafeArea(.bottom)
                )
            }
        }
    }
}

struct PlaylistsView_Previews: PreviewProvider {
    static var previews: some View {
        PlaylistsView().colorScheme(.dark)
    }
}
/*
 
 */
