//
//  CheckIn_or_NewRoom.swift
//  HotelProject
//
//  Created by Vincent Carrancho on 10/3/21.
//

import SwiftUI

struct CheckIn_or_NewRoom: View {
    var body: some View {
        VStack{
            Text("Do you have a reservation?")
                .font(.system(size: 48))
                .fontWeight(.medium)
            
            NavigationLink(destination: NewReservation(), label: {
                Text("I have a reservation")
                    .font(.system(size: 36))
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .frame(width: 400, height: 100)
                    .background(
                        Color.black
                            .cornerRadius(20)
            )}).padding()
                
            NavigationLink(destination: NewReservation(), label: {
                Text("I don't have a reservation")
                    .font(.system(size: 36))
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .frame(width: 400, height: 100)
                    .background(
                        Color.black
                            .cornerRadius(20)
            )}).padding()

        }
    }
}

struct CheckIn_or_NewRoom_Previews: PreviewProvider {
    static var previews: some View {
        CheckIn_or_NewRoom()
            .previewDevice("iPad Pro (11-inch) (3rd generation)")
    }
}
