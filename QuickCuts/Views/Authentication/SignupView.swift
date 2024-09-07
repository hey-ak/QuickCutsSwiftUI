//
//  SignupView.swift
//  QuickCuts
//
//  Created by Akshay Jha on 07/09/24.
//

import SwiftUI

struct SignUpView: View {
    @State private var fullName: String = ""
    @State private var email: String = ""
    @State private var phoneNumber: String = ""
    @State private var password: String = ""
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
             
                Text("Sign Up")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.top, 30)
                
             
                VStack(alignment: .leading) {
                    Text("Full Name")
                        .font(.headline)
                        .foregroundColor(.black)
                    TextField("Full Name", text: $fullName)
                        .padding()
                        .background(Color(UIColor.systemGray6))
                        .cornerRadius(10)
                }
                
       
                VStack(alignment: .leading) {
                    Text("Email")
                        .font(.headline)
                        .foregroundColor(.black)
                    TextField("Email", text: $email)
                        .padding()
                        .background(Color(UIColor.systemGray6))
                        .cornerRadius(10)
                        .keyboardType(.emailAddress)
                }
                
            
                VStack(alignment: .leading) {
                    Text("Phone Number")
                        .font(.headline)
                        .foregroundColor(.black)
                    TextField("Phone Number", text: $phoneNumber)
                        .padding()
                        .background(Color(UIColor.systemGray6))
                        .cornerRadius(10)
                        .keyboardType(.phonePad)
                }
                
                
                VStack(alignment: .leading) {
                    Text("Password")
                        .font(.headline)
                        .foregroundColor(.black)
                    SecureField("Password", text: $password)
                        .padding()
                        .background(Color(UIColor.systemGray6))
                        .cornerRadius(10)
                }
                
        
                Button(action: {
                  
                }) {
                    Text("Sign Up")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color("buttonColor"))
                        .cornerRadius(10)
                }
                .padding(.top, 10)
                

              
                HStack {
                    Text("Already have an account?")
                        .foregroundColor(.black)
                    Button(action: {
                       
                    }) {
                        Text("Log In")
                            .fontWeight(.bold)
                            .foregroundColor(Color("buttonColor"))
                    }
                }
                .padding(.top, 30)
            }
            .padding(.horizontal, 20)
            .padding(.bottom, 50)
        }.clipped()
        .background(Color.white)
        .ignoresSafeArea(.keyboard, edges: .bottom)
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}

