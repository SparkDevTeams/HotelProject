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
            languageBtn(languageLabel: "English")
            languageBtn(languageLabel: "Spanish")
            languageBtn(languageLabel: "French")
            languageBtn(languageLabel: "Mandarin")
            
        }
        
    }
}


struct languageBtn: View {
    var languageLabel: String
    
    
    var body: some View {
        NavigationLink(destination: {
            Text(languageLabel == "English" ? "English" : "Language not yet supported")
            // !
            // !TODO: replace first ternary "English" (after ?) with another SwiftUI View
            // !
        }, label: {Text(languageLabel).font(.system(size: 36)).foregroundColor(Color.black)})
            .padding()
    }
}

struct LanguageSelection_Previews: PreviewProvider {
    static var previews: some View {
        LanguageSelection()
    }
}
