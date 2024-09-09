//
//  LoginView.swift
//  QuickCuts
//
//  Created by Akshay Jha on 07/09/24.
//


import SwiftUI

struct LoginView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var isPasswordVisible: Bool = false

    var body: some View {
        ScrollView (showsIndicators: false) {
            VStack(spacing: 20) {
               
                VStack(spacing: 16) {
                    Text("Login")
                        .font(.custom("Poppins-Bold", size: 26))
                        .foregroundColor(.init("textColor"))
                }

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

                VStack (spacing: 20) {
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
                }
                .padding(.top, 20)
                
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
                                .foregroundColor(Color("textColor"))
                                .font(.system(size: 15))
                            Spacer()
                            Text("Login with Email")
                                .font(.custom("Poppins-Regular", size: 15))
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
                                .foregroundColor(Color("textColor"))
                                .font(.system(size: 22))
                            Spacer()
                            Text("Login with Apple")
                                .font(.custom("Poppins-Regular", size: 15))
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
                                .foregroundColor(Color("textColor"))
                                .font(.system(size: 18))
                            Spacer()
                            Text("Login with Google")
                                .font(.custom("Poppins-Regular", size: 15))
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
            .padding(.horizontal, 16)
            .background(Color(.systemBackground))
        }
        .clipped()
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
