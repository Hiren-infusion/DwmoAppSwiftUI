//
//  ContentView.swift
//  DemoAppLoginAlertValidation
//
//  Created by IOSDEV1 on 05/08/21.
//

import SwiftUI

struct ContentView: View {
    
    let emailPredicated =  NSPredicate(format: "SELF MATCHES %@", "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,6}")
    let passwordPredicated = NSPredicate(format: "SELF MATCHES %@", "^(?=.*\\d)(?=.*[a-z])(?=.*[A-Z])[0-9a-zA-Z!@#$%^&*()\\-_=+{}|?>.<,:;~`’]{8,}$")
    
    @State private var alertType: AlertType? = nil
    @State var txtEmail: String = ""
    @State var txtPassword: String = ""
    @State var passwordIconChanging:Bool = false
    @State var selection: Int? = nil
    
    var body: some View {
        NavigationView {
            
            VStack(alignment: .center) {
                
                Text("Login")
                    .font(.largeTitle).bold()
                    .padding(.top)
                
                VStack(alignment: .leading){
                    
                    Text("Email")
                        .foregroundColor(.blue)
                        .padding(.bottom,-10)
                        .transition(AnyTransition.opacity.animation(.easeIn))
                    TextField("Enter email", text: $txtEmail)
                        .frame(height: 40)
                    Rectangle()
                        .frame(height: 1)
                        .foregroundColor(.gray)
                    
                    
                    Text("Password")
                        .foregroundColor(.blue)
                        .padding(.bottom,-10)
                        .transition(AnyTransition.opacity.animation(.easeIn))
                    
                    SecureField("Enter password", text: $txtPassword)
                        .frame(height: 40)
                        .overlay(
                            HStack {
                                Spacer()
                                Button(action: {
                                    self.passwordIconChanging.toggle()
                                }, label: {
                                    Image(systemName: self.passwordIconChanging ? "eye.fill" : "eye.slash.fill")
                                        .foregroundColor(.gray)
                                        .transition(AnyTransition.opacity.animation(.easeIn))
                                })
                            }
                        )
                    Rectangle()
                        .frame(height: 1)
                        .foregroundColor(.gray)
                }.padding(.horizontal)
                .padding(.bottom, 40)
                
                .alert(item: $alertType) { $0.alert}
                
                Button(action: {
                    print("login tapped")
                    validation()
                }, label: {
                    
                    Text("Login")
                        
                        .font(.title2).fontWeight(.medium).bold()
                }).frame(width: 200, height: 50, alignment: .center)
                .background(Color.blue)
                .foregroundColor(Color.white)
                .cornerRadius(20)
                .padding(.bottom,20)
                .transition(AnyTransition.opacity.animation(.easeIn))
                
                
                NavigationLink(destination: SignUpView(), tag: 1, selection: $selection) {
                    Button(action: {
                        print("SignUp tapped")
                        self.selection = 1
                    }) {
                        HStack {
                            Spacer()
                            Text("SignUp")
                                .font(.title2).fontWeight(.medium).bold()
                            Spacer()
                        }
                    }.frame(width: 200, height: 50, alignment: .center)
                    .background(Color.blue)
                    .foregroundColor(Color.white)
                    .cornerRadius(20)
                    .padding(.bottom,20)
                    .transition(AnyTransition.opacity.animation(.easeIn))
                    
                    
                }
            }.padding(.horizontal)
            .padding(.bottom, 240)
            
        }.navigationBarTitle(Text("Login Form"), displayMode: .inline)
    }
    
    func validation() {
        if txtEmail.isEmpty {
            alertType = .ok(title: "Enter email")
        } else if !emailPredicated.evaluate(with: txtEmail) {
            alertType = .ok(title: "Enter valid email")
        }else if txtPassword.isEmpty {
            alertType = .ok(title: "Enter password")
        } else if !passwordPredicated.evaluate(with: txtPassword) && !txtPassword.isEmpty {
            alertType = .ok(title: "Enter valid password")
        } else {
            alertType = .ok(title: "Login")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
