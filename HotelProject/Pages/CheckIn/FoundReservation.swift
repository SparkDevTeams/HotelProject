//
//  FoundReservation.swift
//  HotelProject
//
//  Created by Vincent Carrancho on 10/6/21.
//

import SwiftUI

struct FoundReservation: View {
    
    @State private var confPin = ""
    
    var body: some View {
        VStack{
            Text("We have found your reservation")
            // Insert line break
            Text("Summary of Reservation:")
            
            HStack{
                Text("Name:")
                Text("John Doe") // make vars
            }
            HStack{
                Text("Nights Staying:")
                Text("5") // make vars
            }
            HStack{
                Text("Confirmation ID:")
                Text("425987341-xxxx") // make vars
            }
            // insert line break
            
            Text("Please enter the last four digits of your confirmation code.")
            
            // TODO: Make the Pin input
            TextField("Your Pin Code", text: $confPin).keyboardType(.numberPad).padding()
            
            // TODO: Fill the other fields that are needed.
            NavigationLink(destination: Checkin_Fingerprint(), label: {Text("Next Page")})
        }
    }
}

struct FoundReservation_Previews: PreviewProvider {
    static var previews: some View {
        FoundReservation()
    }
}
