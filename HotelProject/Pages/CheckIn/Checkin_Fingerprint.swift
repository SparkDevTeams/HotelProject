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
            Text("One last step! Please scan your fingerprint to confirm your reservation.")
                .font(.system(size: 48))
                .fontWeight(.semibold)
                .padding()
            
            Text("This fingerprint will serve as your keycard to your room while providing security for our guests!")
                .font(.system(size: 24))
                .padding()
            
            // Add the fingerprint functions
            
            HStack{
                Image("Fingerprint")
                    .resizable()
                    .frame(width: 200, height: 200, alignment: .center)
                
            }
            
            Text("It will start scanning once you put your finger to the scanner.")
                .font(.system(size: 24))
                .frame(width: 325, height: 75, alignment: .center)
                .padding()
            
            NavigationLink(destination: {Text("Replace With actual file")}, label: {
                Text("Check In!")
                    .font(.system(size: 36))
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .frame(width: 200, height: 75)
                    .background(
                        Color.black
                            .cornerRadius(20))
                    .padding()
            })
        }
    }
}

struct Checkin_Fingerprint_Previews: PreviewProvider {
    static var previews: some View {
        Checkin_Fingerprint()
    }
}
