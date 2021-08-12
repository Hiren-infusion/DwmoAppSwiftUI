//
//  ContentView.swift
//  DemoAppFormCreate
//
//  Created by IOSDEV1 on 12/08/21.
//

import SwiftUI

struct ContentView: View {
    
    @State  var txtFirstName = ""
    @State  var txtLastName = ""
    @State  var txtPassword = ""
    @State  var txtStreet = ""
    @State  var txtCity = ""
    @State  var txtState = ""
    @State  var txtPostalCode = ""
    @State  var txtPasswordAgain = ""
    @State  var txtCountry = ""
    
    
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    Section {
                        TextField("First Name", text: $txtFirstName)
                        TextField("Last Name", text: $txtLastName)
                    }
                    Section(footer: Text("Your pass must be 8 char")){
                        SecureField("Password", text: $txtPassword)
                        SecureField("Password Again", text: $txtPasswordAgain)
                    }
                    Section(footer: Text("Mail Address")){
                        TextField("Street Adress", text: $txtStreet)
                        TextField("City", text: $txtCity)
                        TextField("State", text: $txtState)
                        TextField("PostalCode", text: $txtPostalCode)
                        TextField("Country", text: $txtCountry)	
                    }
                    
                }
            }
            .navigationTitle("Select your cheese")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
