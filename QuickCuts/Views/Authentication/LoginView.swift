//
//  LoginView.swift
//  QuickCuts
//
//  Created by Amit Kumar Dhal on 07/09/24.
//

import SwiftUI

struct LoginView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var isPasswordVisible: Bool = false

    var body: some View {
        ScrollView (showsIndicators: false) {
            VStack(spacing: 30) {
               
                Text("Quick Cuts")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.init("textColor"))

                VStack(alignment: .leading, spacing: 5) {
                    Text("Email")
                        .foregroundColor(.init("textColor"))
                        .fontWeight(.medium)
                    
                    TextField("Enter your email", text: $email)
                        .padding()
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                }

                VStack(alignment: .leading, spacing: 5) {
                    Text("Password")
                        .foregroundColor(.init("textColor"))
                        .fontWeight(.medium)

                    HStack {
                        if isPasswordVisible {
                            TextField("Enter your password", text: $password)
                        } else {
                            SecureField("Enter your password", text: $password)
                        }
                        Button(action: {
                            isPasswordVisible.toggle()
                        }) {
                            Image(systemName: isPasswordVisible ? "eye" : "eye.slash")
                                .foregroundColor(.gray)
                        }
                    }
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                }

                Button(action: {}) {
                    Text("Login")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color(.init("buttonColor")))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                
                Button(action: {}) {
                    Text("Sign up")
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                        .padding()
                        .foregroundColor(.init("textColor"))
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                }
                
                HStack {
                    Rectangle()
                        .frame(height: 1)
                        .foregroundColor(Color.gray.opacity(0.5))
                    Text("OR")
                        .foregroundColor(.gray)
                    Rectangle()
                        .frame(height: 1)
                        .foregroundColor(Color.gray.opacity(0.5))
                }

                VStack(spacing: 10) {
                    Button(action: {}) {
                        HStack {
                            Image(systemName: "envelope.fill")
                                .foregroundColor(.black)
                            Spacer()
                            Text("Login with Email")
                                .foregroundColor(.init("textColor"))
                                .frame(maxWidth: .infinity, alignment: .center)
                            Spacer()
                        }
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                    }

                    Button(action: {}) {
                        HStack {
                            Image(systemName: "applelogo")
                                .foregroundColor(.black)
                            Spacer()
                            Text("Login with Apple")
                                .foregroundColor(.init("textColor"))
                                .frame(maxWidth: .infinity, alignment: .center)
                            Spacer()
                        }
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                    }

                    Button(action: {}) {
                        HStack {
                            Image(systemName: "globe")
                                .foregroundColor(.black)
                            Spacer()
                            Text("Login with Google")
                                .foregroundColor(.init("textColor"))
                                .frame(maxWidth: .infinity, alignment: .center)
                            Spacer()
                        }
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                    }
                }

                Spacer()
            }
            .padding(.horizontal, 30)
            .padding(.vertical, 20)
            .background(Color(.systemBackground))
            //.ignoresSafeArea(.all)
        }
        //.background(.red)
        .clipped()
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
