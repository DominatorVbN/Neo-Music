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
                            
                            Rectangle()
                                .fill(Color.gray.opacity(0.2))
                                .frame(width: geo.size.width, height: 1)
                            VStack(alignment: .leading){
                                Text("Recommended")
                                    .font(.title)
                                    .bold()
                                    .padding(.horizontal)
                                ScrollView(.horizontal, showsIndicators: false) {
                                    HStack(spacing: 30){
                                        ForEach([1,2,3,4,5], id: \.self) { _ in
                                            Button(action: {
                                                
                                            }) {
                                                HStack{
                                                    VStack{
                                                        Button(action: {
                                                            
                                                        }) {
                                                            Image(systemName: "star.fill")
                                                                .foregroundColor(.gray)
                                                        }
                                                        .buttonStyle(NeoDarkButtonStyle())
                                                        .padding(.horizontal)
                                                        Spacer()
                                                        VStack(alignment: .leading){
                                                            Text("Title")
                                                                .font(.headline)
                                                            Text("Genre")
                                                                .font(.subheadline)
                                                                .foregroundColor(Color(UIColor.secondaryLabel))
                                                        }
                                                        .padding(.leading)
                                                    }
                                                    
                                                    Spacer()
                                                }.padding(.vertical)
                                                
                                            }
                                            .buttonStyle(CardButtonStyle(shape: RoundedRectangle(cornerRadius: 20)))
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
