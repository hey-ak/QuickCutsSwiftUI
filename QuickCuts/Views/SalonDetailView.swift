//
//  SalonDetailView.swift
//  QuickCuts
//
//  Created by Amit Kumar Dhal on 07/09/24.
//

import SwiftUI

struct SalonDetailView: View {
    @State var selectedSegment: Int = 0
    let segmentOptions: [String] = ["Services", "Reviews", "Gallery"]
    
    var body: some View {
        NavigationView {
            ScrollView (showsIndicators: false) {
                VStack {
                    Image("food_14")
                        .resizable()
                        .clipShape(Circle())
                        .frame(width: 120, height: 120)
                    
                    Text("Salon Luxe")
                        .font(.custom("Poppins-Semibold", size: 22))
                        .foregroundColor(.init("textColor"))
                    
                    Text("4.5 stars")
                        .font(.custom("Poppins-Light", size: 14))
                        .foregroundStyle(Color(.systemGray))
                    
                    Picker("Options", selection: $selectedSegment) {
                        ForEach(0..<segmentOptions.count, id: \.self) { index in
                            Text(self.segmentOptions[index])
                                .tag(index)
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    .padding(.top, 10)
                    
                    if selectedSegment == 0 {
                        // Services
                        Text("Services")
                            .font(.custom("Poppins-Bold", size: 24))
                            .foregroundColor(.init("textColor"))
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.top, 20)
                        
                        ForEach(0...3, id: \.self) { _ in
                            ServiceView(service: "Haircut", price: "Rs 100")
                                .padding(.bottom, 8)
                        }
                        
                    } else if selectedSegment == 1 {
                        // Reviews
                        Text("Reviews")
                            .font(.custom("Poppins-Bold", size: 24))
                            .foregroundColor(.init("textColor"))
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.top, 20)
                        
                        VStack(spacing: 20) {
                            ForEach(0...2, id: \.self) { _ in
                                ReviewCard()
                            }
                        }
                        
                    } else {
                        // Gallery
                        Text("Gallery")
                            .font(.custom("Poppins-Bold", size: 24))
                            .foregroundColor(.init("textColor"))
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.top, 20)
                        
                        LazyVGrid (columns: [GridItem(.adaptive(minimum: 150), spacing: 16)]) {
                            ForEach (0...5, id: \.self) { _ in
                                Image("food_14")
                                    .resizable()
                                    .frame(height: 150)
                                    .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                                    .padding(.bottom, 8)
                            }
                        }
                    }
                }
            }
            .background(Color(.systemBackground))
            .padding(.horizontal, 16)
            .clipped()
        }
    }
}

#Preview {
    SalonDetailView()
}
