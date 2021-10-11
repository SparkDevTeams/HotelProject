//
//  LanguageSelection.swift
//  HotelProject
//
//  Created by Vincent Carrancho on 9/29/21.
//

import SwiftUI

struct LanguageSelection: View {
    var body: some View {
        
        VStack{
            Text("Select your language:")
                .font(.system(size: 48))
                .fontWeight(.medium)
            
            NavigationLink(destination: CheckIn_or_NewRoom(), label: {
                Text("🇬🇧 English")
                    .font(.system(size: 36))
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .frame(width: 400, height: 75)
                    .background(
                        Color.black
                            .cornerRadius(20)
            )}).padding()
            
            NavigationLink(destination: LanguageNotSupported(), label: {
                Text("Español")
                    .font(.system(size: 36))
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .frame(width: 400, height: 75)
                    .background(
                        Color.black
                            .cornerRadius(20)
            )}).padding()
            
            NavigationLink(destination: LanguageNotSupported(), label: {
                Text("Française")
                    .font(.system(size: 36))
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .frame(width: 400, height: 75)
                    .background(
                        Color.black
                            .cornerRadius(20)
            )}).padding()
            
            NavigationLink(destination: LanguageNotSupported(), label: {
                Text("普通话")
                    .font(.system(size: 36))
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .frame(width: 400, height: 75)
                    .background(
                        Color.black
                            .cornerRadius(20)
            )}).padding()
            
        }
        
    }
}

struct LanguageSelection_Previews: PreviewProvider {
    static var previews: some View {
        LanguageSelection()
    }
}
