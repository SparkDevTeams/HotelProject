//
//  Checkin_Fingerprint.swift
//  HotelProject
//
// 
//

import SwiftUI

struct Checkin_Fingerprint: View {
    
    @EnvironmentObject var newReservation: NewGuests
    
    @State var navigateToNext: Bool = false
    
    func nextClicked() -> Void {
        navigateToNext = !navigateToNext
    }
    
    var body: some View {
        VStack {
            Text("One last step!")
                .font(.system(size: 48))
                .fontWeight(.semibold)
                .padding()
            
            Text("Please put one of your fingers on the fingerprint scanner.")
                .font(.system(size: 42))
                .frame(width: 700, height: 150, alignment: .center)
            
            Text("This fingerprint will serve as your keycard to your room while providing security for our guests!")
                .font(.system(size: 24))
                .frame(width: 700, height: 100, alignment: .center)
            
            // Add the fingerprint functions
            
            HStack{
                Image("Fingerprint")
                    .resizable()
                    .frame(width: 200, height: 200, alignment: .center)
                
                Image(systemName: "plus.circle.fill")
                    .resizable()
                    .frame(width: 50, height: 50, alignment: .center)
                
            }
            
            Text("It will start scanning once you put your finger to the scanner.")
                .font(.system(size: 24))
                .frame(width: 325, height: 75, alignment: .center)
                .padding()
            
            ZStack{
                Button (action: nextClicked, label: {
                    Text("Check In!")
                        .font(.system(size: 36))
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 200, height: 75)
                        .background(
                            Color.black
                                .cornerRadius(20))
                        .padding()
                })
                
                NavigationLink("Next", isActive: $navigateToNext, destination: {LastPage()}).hidden()
            }
        }
    }
}

struct Checkin_Fingerprint_Previews: PreviewProvider {
    static var previews: some View {
        Checkin_Fingerprint()
    }
}
