//
//  RoomSelection.swift
//  HotelProject
//
//  Created by Joseph Torres on 9/30/21.
//

import SwiftUI

struct RoomSelection: View {
    
    var body: some View {
        VStack {
            HStack {
                Text("Room Selection")
                    .font(.system(size: 30, weight: .bold))
                Spacer()
            }
            .padding(.horizontal, 300)
            .padding(.top, 30)
            
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 30) {
                    ForEach(0 ..< 4) { item in
                        SectionView()
                    }
                    .padding()
                }
                .padding()
                .padding(.top, 40)
            }
            Spacer()
        }
    }
}


struct RoomSelection_Previews: PreviewProvider {
    // why do we need parameter show profile
    static var previews: some View {
        RoomSelection()
    }
}

struct SectionView: View {
    var body: some View {
        VStack (alignment: .center) {
            HStack (alignment: .top){
                Text("King Suite Room")
                    .font(.system(size: 34, weight: .bold))
                    .frame(width: 500)
                    .foregroundColor(.white)
                    .padding(.top, 20)
                    .padding(.bottom, 5)
            }
            Text("2 bed | 1 sofa".uppercased())
                .frame(maxWidth: .infinity, alignment: .center)
                .foregroundColor(.white)
            Image("roomPhoto2")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 400)
                .cornerRadius(20)
        }
        .padding(.bottom, 40)
        .padding(.horizontal, 30)
        .frame(width:550, height: 400)
        .background(Color("secondary"))
        .cornerRadius(30)
        .shadow(color: Color("card1").opacity(0.3), radius: 20, x: 0, y: 20)
    }
}
