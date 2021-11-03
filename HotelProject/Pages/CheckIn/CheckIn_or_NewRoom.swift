//
//  CheckIn_or_NewRoom.swift
//  HotelProject
//
//  Created by Vincent Carrancho on 10/3/21.
//

import SwiftUI

struct CheckIn_or_NewRoom: View {
    
    @State var navigateToReservationSearch: Bool = false
    @State var navigateToNewReservation: Bool = false
    
    func nextClickedReservation() -> Void {
        navigateToReservationSearch = !navigateToReservationSearch
    }
    
    func nextClickedNoReservation() -> Void {
        navigateToNewReservation = !navigateToNewReservation
    }
    
    var body: some View {
        VStack{
            Text("Do you have a reservation?")
                .font(.system(size: 48))
                .fontWeight(.semibold)
            
            ZStack{
                Button (action: nextClickedReservation, label: {
                    Text("I have a reservation")
                        .font(.system(size: 36))
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 400, height: 130)
                        .background(
                            Color.black
                                .cornerRadius(20))
                        .padding()
                })
                
                NavigationLink("Next", isActive: $navigateToReservationSearch, destination: {ReservationSearch()}).hidden()
            }
            
            ZStack{
                Button (action: nextClickedNoReservation, label: {
                    Text("I don't have a reservation")
                        .font(.system(size: 36))
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 400, height: 130)
                        .background(
                            Color.black
                                .cornerRadius(20))
                        .padding()
                })
                
                NavigationLink("Next", isActive: $navigateToNewReservation, destination: {NewReservation()}).hidden()
            }
        }
    }
}

struct CheckIn_or_NewRoom_Previews: PreviewProvider {
    static var previews: some View {
        CheckIn_or_NewRoom()
            .previewDevice("iPad Pro (11-inch) (3rd generation)")
    }
}

// TODO: Make text the same distance from the edge of the border in the button.

// TODO: make an environment object for each of the branches in here. We are going to need it in order to pass data through some views.
