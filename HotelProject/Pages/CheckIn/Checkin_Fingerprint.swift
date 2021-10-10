//
//  Checkin_Fingerprint.swift
//  HotelProject
//
//  Created by Vincent Carrancho on 10/6/21.
//

import SwiftUI

struct Checkin_Fingerprint: View {
    var body: some View {
        VStack {
            Text("One last step! Please put one of your fingers on the fingerprint scanner below.")
            Text("This fingerprint will serve as your keycard to your room while providing security for our guests!")
            
            // Add the fingerprint functions
            
            HStack{
                    
                
            }
            
            Text("It will start scanning once you put your finger to the scanner.")
            NavigationLink(destination: {Text("Replace With actual file")}, label: {Text("Check in!")})
        }
    }
}

struct Checkin_Fingerprint_Previews: PreviewProvider {
    static var previews: some View {
        Checkin_Fingerprint()
    }
}
