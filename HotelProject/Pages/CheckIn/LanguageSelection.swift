//
//  LanguageSelection.swift
//  HotelProject
//
// 
//

import SwiftUI

struct LanguageSelection: View {
    
    @State var navigateToCheckInOrNewRoom: Bool = false
    @State var navigateToNoLanguage: Bool = false
    
    func nextClickedCheckInOrNewRoom() -> Void {
        navigateToCheckInOrNewRoom = !navigateToCheckInOrNewRoom
    }
    
    func nextClickedNoLanguage() -> Void {
        navigateToNoLanguage = !navigateToNoLanguage
    }
    
    var body: some View {
        
        VStack{
            Text("Select your language:")
                .font(.system(size: 48))
                .fontWeight(.medium)
            
            ZStack{
                Button (action: nextClickedCheckInOrNewRoom, label: {
                    Text("English")
                        .font(.system(size: 36))
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 400, height: 75)
                        .background(
                            Color.black
                                .cornerRadius(20))
                        .padding()
                })
                
                NavigationLink("Next", isActive: $navigateToCheckInOrNewRoom, destination: {CheckIn_or_NewRoom()}).hidden()
            }
            
            ZStack{
                Button (action: nextClickedNoLanguage, label: {
                    Text("Español")
                        .font(.system(size: 36))
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 400, height: 75)
                        .background(
                            Color.black
                                .cornerRadius(20))
                        .padding()
                })
                
                NavigationLink("Next", isActive: $navigateToNoLanguage, destination: {LanguageNotSupported()}).hidden()
            }
            
            ZStack{
                Button (action: nextClickedNoLanguage, label: {
                    Text("Française")
                        .font(.system(size: 36))
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 400, height: 75)
                        .background(
                            Color.black
                                .cornerRadius(20))
                        .padding()
                })
                
                NavigationLink("Next", isActive: $navigateToNoLanguage, destination: {LanguageNotSupported()}).hidden()
            }
            
            ZStack{
                Button (action: nextClickedNoLanguage, label: {
                    Text("普通话")
                        .font(.system(size: 36))
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 400, height: 75)
                        .background(
                            Color.black
                                .cornerRadius(20))
                        .padding()
                })
                
                NavigationLink("Next", isActive: $navigateToNoLanguage, destination: {LanguageNotSupported()}).hidden()
            }
        }
        
    }
}

struct LanguageSelection_Previews: PreviewProvider {
    static var previews: some View {
        LanguageSelection()
    }
}
