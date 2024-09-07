//
//  ServiceView.swift
//  QuickCuts
//
//  Created by Amit Kumar Dhal on 07/09/24.
//

import SwiftUI

struct ServiceView: View {
    var service: String
    var price: String
    
    var body: some View {
        HStack {
            Text(service)
                .font(.custom("Poppins-Medium", size: 18))
            
            Spacer()
            
            Text(price)
                .font(.custom("Poppins-Medium", size: 18))
        }
        .padding([.top, .bottom])
        .foregroundColor(.init("textColor"))
        // .background(Color(.systemGray6))
        .cornerRadius(10)
    }
}

#Preview {
    ServiceView(service: "Facial", price: "$40")
}
