//
//  NewReservation.swift
//  HotelProject
//
//  Created by Vincent Carrancho on 9/29/21.
//

// This is the start of the new reservation branch of the UI

import SwiftUI

var totalWidth: CGFloat = 600
var lineWidth: CGFloat = 2.5

struct NewReservation: View {
    
    @State private var fName: String = ""
    @State private var lName: String = ""
    @State private var email: String = ""
    @State private var address: String = ""
    @State private var country: String = ""
    @State private var phoneNumber: String = ""
    @State private var zipcode: Int = 000000
    // only if the person lives in the united states. If they do then an extra text field will pop up.
    
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
                
                HStack {
                    // Do I want to move this whole H-stack to the bottom making it
                    DatePicker(
                        "Check-in",
                        selection: $checkin,
                        displayedComponents: [.date]
                    ).padding().datePickerStyle(.compact).overlay(RoundedRectangle(
                        cornerRadius: 15).stroke(Color.black, lineWidth: lineWidth)).padding()
                    
                    DatePicker(
                        "Check-out",
                        selection: $checkout,
                        displayedComponents: [.date]
                    ).padding().datePickerStyle(.compact).overlay(RoundedRectangle(
                        cornerRadius: 15).stroke(Color.black, lineWidth: lineWidth)).padding()
                }.frame(width: totalWidth)
                // TODO: Make the check-in time selectors in another h stack
                
                
                
                TextFieldComponent(sfSymbol: "envelope.fill", labelString: "Email Address", input: email)
                TextFieldComponent(sfSymbol: "pin.fill", labelString: "Country/Region", input: country)
                // country == "United States" ? TextFieldComponent(sfSymbol: "pin.full", labelString: "Zip Code", input: String(zipcode)) : nil
                TextFieldComponent(sfSymbol: "location.circle.fill", labelString: "Address Line", input: address)
                TextFieldComponent(sfSymbol: "phone.fill", labelString: "Phone Number", input: phoneNumber)
                NavigationLink(destination: RoomSelection(), label: {
                    Text("Next").font(.system(size: 24))
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 200, height: 75)
                        .background(
                            Color.black
                                .cornerRadius(20)
                        .multilineTextAlignment(.leading)
                )}).padding()
                
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
            Image(systemName: sfSymbol).padding()
            TextField(labelString, text: $input)
        }.padding(5)
            .overlay(RoundedRectangle(
                cornerRadius: 15).stroke(Color.black, lineWidth: lineWidth)).padding().frame(width:totalWidth, height: /*@START_MENU_TOKEN@*/50.0/*@END_MENU_TOKEN@*/).padding()
        
    }
    
}

struct NewReservation_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            if #available(iOS 15.0, *) {
                NewReservation()
                    .previewDevice("iPad Pro (11-inch) (3rd generation)")
                    .previewInterfaceOrientation(.portrait)
            } else {
                // Fallback on earlier versions
            }
        }
    }
}
