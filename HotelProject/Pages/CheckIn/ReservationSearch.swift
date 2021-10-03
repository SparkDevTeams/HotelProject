//
//  ReservationSearch.swift
//  HotelProject
//
//  Created by David Barcenas on 9/30/21.
//

import SwiftUI

struct ReservationSearch: View {
    
    @State var ReservationNumber: String = ""
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack(spacing: 50){
            HStack {
                Button {
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Label("Back", systemImage: "arrow.left.to.line.alt")
                        .font(.system(size: 30))
                        .foregroundColor(Color.black)
                        .padding()
                }
                Spacer()
            }
            Spacer()
            
            Text("What is your reservation number?")
                .font(.system(size: 48))
                .fontWeight(.medium)
                .padding()
    
            
            TextField("Tap here to enter your reservation number: ", text: $ReservationNumber)
                .padding()
                .background(
                    Color.gray.opacity(0.2)
                        .cornerRadius(10)
                )
                .font(.system(size: 24))
                .padding(.horizontal, 100)
                
            Button {
                self.ReservationNumber = "10" //Change in future. Need to make it go to another view. Add if statements and such.
            } label: {
                Text("Submit")
                    .font(.system(size: 24))
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .frame(width: 300, height: 100)
                    .background(
                        Color.black
                            .cornerRadius(20)
                    )
            }
            Spacer()
        }
        .padding()
        .navigationBarHidden(true)
    }
}

struct ReservationSearch_Previews: PreviewProvider {
    static var previews: some View {
        ReservationSearch()
            .previewDevice("iPad Pro (11-inch) (3rd generation)")
    }
}
