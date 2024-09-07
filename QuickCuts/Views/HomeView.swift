//
//  HomeView.swift
//  QuickCuts
//
//  Created by Amit Kumar Dhal on 07/09/24.
//

import SwiftUI

struct HomeView: View {
    @State var searchText: String = ""
    let gridItems = [GridItem(.flexible(minimum: 240, maximum: 260))]
    
    var body: some View {
        NavigationView {
            ZStack {
                
                LinearGradient(
                    gradient: Gradient(colors: [
                        Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)),
                        Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 0.2990480132))
                    ]),
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
                .ignoresSafeArea(.all)
                
                ScrollView (showsIndicators: false) {
                    
                    CustomSearchBar(searchText: $searchText, placeholder: "Search for salons")
                        .padding(.top, 20)
                    
                    VStack (spacing: 15) {
                        
                        Text("Top Salons")
                            .font(.custom("Poppins-Bold", size: 26))
                            .foregroundColor(.init("textColor"))
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        ScrollView (.horizontal, showsIndicators: false) {
                            LazyHGrid(rows: gridItems, spacing: 15) {
                                ForEach (0...5, id: \.self) { _ in
                                    SalonCard()
                                }
                            }
                        }
                        
                        Text("Nearby Salons")
                            .font(.custom("Poppins-Bold", size: 26))
                            .foregroundColor(.init("textColor"))
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        ScrollView (.horizontal, showsIndicators: false) {
                            LazyHGrid(rows: gridItems, spacing: 15) {
                                ForEach (0...5, id: \.self) { _ in
                                    SalonCard()
                                }
                            }
                        }
                    }
                    .padding(.top, 10)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    
                }
                .padding(.horizontal, 16)
                .clipped()                
            }
        }
    }
}

#Preview {
    HomeView()
}
