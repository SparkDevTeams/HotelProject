//
//  FoundReservation.swift
//  HotelProject
//
//  Created by Vincent Carrancho on 10/6/21.
//

import SwiftUI

struct FoundReservation: View {
    @State var name: String = "John Doe"
    @State var nightsStaying: Int = 0
    @State private var confPin = ""
    @State var confirmationID: String = ""
    @State var codeMatches = false

    
    var body: some View {
        VStack(alignment: .leading){
            
            Text("We have found your reservation")
                .font(.system(size: 60))
                .fontWeight(.light)
                .padding(.horizontal, 60.0)
            
            Text("---------------------------------")
                .font(.system(size: 48))
                .fontWeight(.light)
                .padding(.horizontal, 60)
            
            Text("Summary of Reservation:")
                .font(.system(size: 40))
                .fontWeight(.bold)
                .padding(.horizontal, 60)
                .padding(.bottom, 10)
            
            HStack{
                Text("Name:")                    .underline()
                    .font(.system(size: 40))
                    .fontWeight(.light)
                    .padding(.horizontal, 60)
                    .padding(.bottom, 10)
                    .padding(.trailing, 160)

                
                Text(name)
                    .font(.system(size: 40))
                    .fontWeight(.light)
                    .padding(.bottom, 10)
                
            }
            HStack{
                Text("Nights Staying:")
                    .underline()
                    .font(.system(size: 40))
                    .fontWeight(.light)
                    .padding(.horizontal, 60)
                    .padding(.bottom, 10)
                    .padding(.trailing, 20)
                
                Text(String(nightsStaying))
                    .font(.system(size: 40))
                    .fontWeight(.light)
                    .padding(.bottom, 10)
            }
            HStack{
                Text("Confirmation ID:")
                    .underline()
                    .font(.system(size: 40))
                    .fontWeight(.light)
                    .padding(.horizontal, 60)
                
                Text("425987341-xxxx")
                    .font(.system(size: 40))
                    .fontWeight(.light)
            }
            
            Text("---------------------------------")
                .font(.system(size: 48))
                .fontWeight(.light)
                .padding(.horizontal, 60)
            
            
            Text("Please enter the last four digits of your confirmation code.")
                .font(.system(size: 40))
                .fontWeight(.light)
                .padding(.horizontal, 60)
            
            //Pin input (change later)
            
            HStack {
                Spacer()
                TextFieldComponent(sfSymbol: "lock.circle.fill", labelString: "Last 4 digits of Pin Code", input: confirmationID)
                Spacer()
            }

            
            HStack {
                Spacer()
                Button {
                    codeMatches = true
                } label: {
                    Text("Next")
                        .font(.system(size: 24))
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 300, height: 100)
                        .background(
                            Color.black
                                .cornerRadius(20))
                        .padding(.vertical, 30)
            }
                Spacer()
            }
        }
    }
}





struct FoundReservation_Previews: PreviewProvider {
    static var previews: some View {
        FoundReservation()
    }
}

