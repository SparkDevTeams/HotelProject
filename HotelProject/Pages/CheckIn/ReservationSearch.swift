//
//  ReservationSearch.swift
//  HotelProject
//
//
//

import SwiftUI

struct ReservationSearch: View {
    
    @State var ReservationNumber: String = ""
    @State var navigateToNext: Bool = false
    
    
    var body: some View {
        VStack(alignment: .center, spacing: 50){
            Spacer()
            Text("What is your reservation number?")
                .font(.system(size: 48))
                .fontWeight(.medium)
                .padding()
            
            
            TextFieldComponent(sfSymbol: "lock.circle.fill", labelString: "Enter your reservation number here", input: ReservationNumber)
            
            ZStack{
                Button (action: nextClicked, label: {
                    Text("Search")
                        .font(.system(size: 24))
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 300, height: 100)
                        .background(
                            Color.black
                                .cornerRadius(20))
                        .padding()
                })
                
                NavigationLink("Next", isActive: $navigateToNext, destination: {FoundReservation()}).hidden()
            }
            
            
            /*
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
             */
            Spacer()
        }
        .padding()
        
    }
    
    func nextClicked() -> Void {
            navigateToNext = !navigateToNext
        }
    
}

struct ReservationSearch_Previews: PreviewProvider {
    static var previews: some View {
        ReservationSearch()
            .previewDevice("iPad Pro (11-inch) (3rd generation)")
    }
}
