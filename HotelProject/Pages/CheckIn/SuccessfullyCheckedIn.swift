//
//  SuccessfullyCheckedIn.swift
//  HotelProject
//
//  Created by Vincent Carrancho on 10/6/21.
//

import SwiftUI

struct SuccessfullyCheckedIn: View {
    var body: some View {
        VStack{
            Text("you have sucessfully checked in!")
            NavigationLink(destination: Root(), label: {Text("Finish")})
        }
    }
}

struct SuccessfullyCheckedIn_Previews: PreviewProvider {
    static var previews: some View {
        SuccessfullyCheckedIn()
    }
}
