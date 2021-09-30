//
//  NewReservation.swift
//  HotelProject
//
//  Created by Vincent Carrancho on 9/29/21.
//

// This is the start of the new reservation branch of the UI

import SwiftUI

struct NewReservation: View {
    
    @State private var fName: String = ""
    @State private var lName: String = ""
    @State private var email: String = ""
    @State private var address: String = ""
    @State private var country: String = ""
    @State private var phoneNumber: String = ""
    
    @State var checkin = Date()
    @State var checkout =  Date()
    
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
                
                HStack{
                    // Do I want to move this whole H-stack to the bottom making it
                    DatePicker(
                            "Check-in Date",
                            selection: $checkin,
                            displayedComponents: [.date]
                    ).padding(.trailing, 20.0).datePickerStyle(.compact)
                    
                    DatePicker(
                            "Check-out date",
                            selection: $checkout,
                            displayedComponents: [.date]
                    ).padding(.leading, 20.0).datePickerStyle(.compact)
                }.frame(width: 500)
                
                
                
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
                .frame(width: 500, height: /*@START_MENU_TOKEN@*/50.0/*@END_MENU_TOKEN@*/)
        }.padding(.vertical, 2.5).textFieldStyle(RoundedBorderTextFieldStyle())
        
    }
    
}

struct NewReservation_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            NewReservation()
                .previewDevice("iPad Pro (11-inch) (3rd generation)")
        }
    }
}
