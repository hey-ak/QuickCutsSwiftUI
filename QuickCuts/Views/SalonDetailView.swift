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
            ScrollView {
                VStack {
                    Image("food_14")
                        .resizable()
                        .clipShape(Circle())
                        .frame(width: 120, height: 120)
                    
                    Text("Salon Luxe")
                        .font(.custom("Poppins-Semibold", size: 22))
                        .foregroundColor(.init("textColor"))
                    
                    Text("4.5 starts")
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
                        // service
                        Text("Services")
                            .font(.custom("Poppins-Bold", size: 24))
                            .foregroundColor(.init("textColor"))
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.top, 20)
                        
//                        ForEach (0...2, id: \.self) { _ in
//                            ServiceView(service: "Facial", price: "$20")
//                        }
                        ServiceView(service: "Haircut", price: "$100")
                        Divider()
                            .opacity(0.7)
                        ServiceView(service: "Facial", price: "$20")
                        Divider()
                            .opacity(0.7)
                        ServiceView(service: "Beard", price: "$40")
                        Divider()
                            .opacity(0.7)
                        ServiceView(service: "Nail Extension", price: "$200")
                        
                    } else if selectedSegment == 1 {
                        // Reviews
                        
                    } else {
                        // Gallery
                        
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
