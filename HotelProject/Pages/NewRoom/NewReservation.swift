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
        
        VStack{
            
            VStack(alignment: .leading){
                Text("You are now reserving your room. Please enter your information below:")
                    .font(.system(size: 36))
                    .multilineTextAlignment(.leading)
                Text("* All fields are required.")
                    .font(.system(size: 24))
            }
            
            VStack(alignment: .center){
                
                
                TextFieldComponent(sfSymbol: "person.crop.circle.fill", labelString: "First Name", input: fName)
                TextFieldComponent(sfSymbol: "person.crop.circle.fill", labelString: "Last Name", input: lName)
                
                // TODO: Do the check in and checkout date picker in here.
                
                
                
                TextFieldComponent(sfSymbol: "envelope.fill", labelString: "Email Address", input: email)
                TextFieldComponent(sfSymbol: "location.circle.fill", labelString: "Address Line", input: address)
                TextFieldComponent(sfSymbol: "pin.fill", labelString: "Country/Region", input: country)
                TextFieldComponent(sfSymbol: "phone.fill", labelString: "Phone Number", input: phoneNumber)
                
                NavigationLink(destination: {Text("Awaiting next")}, label: {
                    Text("Next")
                        .multilineTextAlignment(.leading)
                })
                
            }
            Spacer()
        }
    }
}

struct TextFieldComponent: View {
    
    var sfSymbol: String
    
    var labelString: String
    @State var input: String
    
    var body: some View {
        HStack{
            Image(systemName: sfSymbol)
            TextField(labelString, text: $input)
                .frame(width: /*@START_MENU_TOKEN@*/400.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/50.0/*@END_MENU_TOKEN@*/)
        }.padding(.vertical, 2.5).textFieldStyle(RoundedBorderTextFieldStyle())
        
    }
    
}

struct NewReservation_Previews: PreviewProvider {
    static var previews: some View {
        NewReservation()
            .previewDevice("iPad Pro (11-inch) (3rd generation)")
    }
}
