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
        HStack (spacing: 20) {
            Image("Haircut")
                .resizable()
                .frame(width: 100, height: 110)
                .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
            
            VStack (alignment: .leading, spacing: 15) {
                VStack {
                    Text("Haircut")
                        .font(.custom("Poppins-Semibold", size: 18))
                        .foregroundStyle(Color("textColor"))
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Text("Rs 100")
                        .font(.custom("Poppins-Light", size: 16))
                        .foregroundStyle(.gray)
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                
                VStack {
                    Text("Select Service")
                        .font(.custom("Poppins-Semibold", size: 18))
                        .foregroundStyle(Color("buttonColor"))
                }
            }
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color(.systemGray6).opacity(0.6))
        .cornerRadius(10)
    }
}

#Preview {
    ServiceView(service: "Facial", price: "Rs 40")
}

