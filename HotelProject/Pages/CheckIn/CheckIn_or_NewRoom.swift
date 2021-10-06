//
//  CheckIn_or_NewRoom.swift
//  HotelProject
//
//  Created by Vincent Carrancho on 10/3/21.
//

import SwiftUI

struct CheckIn_or_NewRoom: View {
    var body: some View {
        // TODO: Style this page Zeshan.
        VStack{
            NavigationLink(destination: NewReservation(), label: {
                Text("I Have a Reservation").font(.system(size: 24))
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .frame(width: 200, height: 75)
                    .background(
                        Color.black
                            .cornerRadius(20)
                    .multilineTextAlignment(.leading)
            )}).padding()
                
            NavigationLink(destination: ReservationSearch(), label: {Text("I have a reservation")})

        }
    }
}

struct CheckIn_or_NewRoom_Previews: PreviewProvider {
    static var previews: some View {
        CheckIn_or_NewRoom()
            .previewDevice("iPad Pro (11-inch) (3rd generation)")
    }
}
