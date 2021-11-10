//
//  Root.swift
//  HotelProject
//
//  Created by Vincent Carrancho on 9/29/21.
//

import SwiftUI

struct Root: View {
    
    @State var navigateToNext: Bool = false
    
    func nextClicked() -> Void {
        navigateToNext = !navigateToNext
    }
    
    var body: some View {
        NavigationView {
            // This is the root naviagtion view.
            // The navigation is controlled by this view.
            VStack(alignment: .leading){
                Text("Welcome to Hotel {Name}!").font(.system(size: 72)).fontWeight(.bold).multilineTextAlignment(.leading)
                
                Button (action: nextClicked, label: {
                    Text("Tap here to begin Check-In or Room Reservation Process.")
                        .font(.system(size: 36))
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.leading)
                })
                
                NavigationLink("Next", isActive: $navigateToNext, destination: {LanguageSelection()}).hidden()
                    .navigationBarBackButtonHidden(true)
                
            }
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

struct Root_Previews: PreviewProvider {
    static var previews: some View {
        Root().previewDevice("iPad Pro (11-inch) (3rd generation)")
    }
}

// TODO: (GLOBAL) Make all navigationLinks hidden and invisible while also taking the isActive binding boolean paramenter. Use a button to activate the navigation instead. For every view with a navigatorLink add a @State var nextPage: Bool = false. Make a function that switches the page while also doing other things such as modifying environment object.
