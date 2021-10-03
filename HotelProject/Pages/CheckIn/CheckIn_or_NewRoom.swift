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
            Text("Style this page, I just needed this page to test all the other ui stuff")
            NavigationLink(destination: NewReservation(), label: {Text("New Reservation")})
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
