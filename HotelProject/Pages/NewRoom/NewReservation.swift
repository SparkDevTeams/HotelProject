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
    
    @EnvironmentObject var newReservation: NewGuests
    
    @State var navigateToNext: Bool = false
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
    
    func nextClicked() -> Void {
        
        newReservation.setMainGuestFN(FN: fName)
        newReservation.setMainGuestLN(LN: lName)
        newReservation.setEmailAddress(email: email)
        newReservation.setCountry(country: country)
        newReservation.setMainGuestAddress(ad: address)
        newReservation.setPhoneNumber(phone: phoneNumber)
        
        print("Hello" + newReservation.getMainGuestFN())
        
        navigateToNext = !navigateToNext
        
        // We need to save the data
        
    }
    
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
                
                // FN, LN, EMAIL, COUNTRY, ADDY, Phone
                // "person.crop.circle.fill", "envelope.fill", "pin.fill", "location.circle.fill", "phone.fill"
                
                HStack{
                    Image(systemName: "person.crop.circle.fill").padding()
                    TextField("First Name", text: $fName)
                }.padding(5)
                    .overlay(RoundedRectangle(
                        cornerRadius: 15).stroke(Color.black, lineWidth: lineWidth)).padding().frame(width:totalWidth, height: /*@START_MENU_TOKEN@*/50.0/*@END_MENU_TOKEN@*/).padding()
                
                HStack{
                    Image(systemName: "person.crop.circle.fill").padding()
                    TextField("Last Name", text: $lName)
                }.padding(5)
                    .overlay(RoundedRectangle(
                        cornerRadius: 15).stroke(Color.black, lineWidth: lineWidth)).padding().frame(width:totalWidth, height: /*@START_MENU_TOKEN@*/50.0/*@END_MENU_TOKEN@*/).padding()
                
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
                
                HStack{
                    Image(systemName: "envelope.fill").padding()
                    TextField("Email Address", text: $email)
                }.padding(5)
                    .overlay(RoundedRectangle(
                        cornerRadius: 15).stroke(Color.black, lineWidth: lineWidth)).padding().frame(width:totalWidth, height: /*@START_MENU_TOKEN@*/50.0/*@END_MENU_TOKEN@*/).padding()
                
                HStack{
                    Image(systemName: "pin.fill").padding()
                    TextField("Country/Region", text: $country)
                }.padding(5)
                    .overlay(RoundedRectangle(
                        cornerRadius: 15).stroke(Color.black, lineWidth: lineWidth)).padding().frame(width:totalWidth, height: /*@START_MENU_TOKEN@*/50.0/*@END_MENU_TOKEN@*/).padding()
                
                HStack{
                    Image(systemName: "location.circle.fill").padding()
                    TextField("Address", text: $address)
                }.padding(5)
                    .overlay(RoundedRectangle(
                        cornerRadius: 15).stroke(Color.black, lineWidth: lineWidth)).padding().frame(width:totalWidth, height: /*@START_MENU_TOKEN@*/50.0/*@END_MENU_TOKEN@*/).padding()
                
                HStack{
                    Image(systemName: "phone.fill").padding()
                    TextField("Phone Number", text: $phoneNumber)
                }.padding(5)
                    .overlay(RoundedRectangle(
                        cornerRadius: 15).stroke(Color.black, lineWidth: lineWidth)).padding().frame(width:totalWidth, height: /*@START_MENU_TOKEN@*/50.0/*@END_MENU_TOKEN@*/).padding()
                
                ZStack{
                    Button (action: nextClicked, label: {
                        Text("Next")
                            .font(.system(size: 24))
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .frame(width: 200, height: 75)
                            .background(
                                Color.black
                                    .cornerRadius(20))
                            .padding()
                    })
                    
                    NavigationLink("Next", isActive: $navigateToNext, destination: {RoomSelection().environmentObject(newReservation)}).hidden()
                }
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
