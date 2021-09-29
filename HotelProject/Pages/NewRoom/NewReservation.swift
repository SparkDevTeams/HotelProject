//
//  NewReservation.swift
//  HotelProject
//
//  Created by Vincent Carrancho on 9/29/21.
//

// This is the start of the new reservation branch of the UI

import SwiftUI

struct NewReservation: View {
    
    // I do not know what to use for the dates.
    
    @State private var fName: String = ""
    @State private var lName: String = ""
    @State private var email: String = ""
    @State private var address: String = ""
    @State private var country: String = ""
    @State private var phoneNumber: String = ""
    
    var body: some View {
        
        VStack(alignment: .leading){
            Text("You are now reserving your room. Please enter your information below:")
                .font(.system(size: 36))
                .multilineTextAlignment(.leading)
            Text("* All fields are required.")
                .font(.system(size: 24))
            
            TextFieldComponent(labelString: "First Name", input: fName)
            TextFieldComponent(labelString: "Last Name", input: lName)
            
            // TODO: Do the check in and checkout date picker in here.
            
            
            
            TextFieldComponent(labelString: "Email Address", input: email)
            TextFieldComponent(labelString: "Address Line", input: address)
            TextFieldComponent(labelString: "Country/Region", input: country)
            TextFieldComponent(labelString: "Phone Number", input: phoneNumber)
            
            NavigationLink(destination: {Text("Awaiting next")}, label: {
                Text("Next")
                    .multilineTextAlignment(.leading)
            })
            
            Spacer()
        }
        .padding(.horizontal, 50.0)
    }
}

struct TextFieldComponent: View {
    
    var labelString: String
    @State var input: String
    
    var body: some View {
        TextField(labelString, text: $input)
    }
    
}

struct NewReservation_Previews: PreviewProvider {
    static var previews: some View {
        NewReservation()
    }
}
