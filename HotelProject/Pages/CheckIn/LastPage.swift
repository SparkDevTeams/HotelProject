//
//  LastPage.swift
//  HotelProject
//
// 
//

// This is the last page for both flows (Check in and Check Out)

// TODO: Add navigation destination (line 20)

import SwiftUI

struct LastPage: View {
    
    @State var navigateToNext: Bool = false
    
    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            Text("You have checked in! Your room is Room 219. Have a great stay at")
                .font(.system(size: 48)).fontWeight(.semibold)
            
            LinearGradient(gradient: Gradient(colors: [.orange, .red]),
                                   startPoint: .leading, endPoint: .trailing)
                        .mask(Text("Hotel SparkDev")
                            .font(.system(size: 80, weight: .bold, design: .rounded)))
                        .frame(width: .infinity, height: 90, alignment: .center)
                        .padding(.top, 20)
            
            
            Text("Please remember to use your fingerprint to unlock your room! Have a great stay and see you at check out!")
                .font(.system(size: 28))
                .padding()
                .frame(width:700)
                .multilineTextAlignment(.center)
            
            ZStack{
                Button (action: nextClicked, label: {
                    Text("Finish")
                        .font(.system(size: 24))
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 300, height: 100)
                        .background(
                            Color.black
                                .cornerRadius(20))
                        .padding()
                })
                
                NavigationLink("Finish", isActive: $navigateToNext, destination: {Root()}).hidden()
            }
            // On the navigation press, make sure to discard the data for the object. !!ONLY FOR THE NEW RESERVATION PAGE not the check in beause all the information is there already.
            
            // TODO: Make a function that resets ALL the data. Preferably in the struct file
            
        }
        
    }
    
    func nextClicked() -> Void {
            navigateToNext = !navigateToNext
        }
    
}

struct LastPage_Previews: PreviewProvider {
    static var previews: some View {
        LastPage()
    }
}
