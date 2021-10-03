//
//  RoomSelection.swift
//  HotelProject
//
//  Created by Joseph Torres on 9/30/21.
//

import SwiftUI

struct RoomSelection: View {
    @Binding var showProfile : Bool
    var body: some View {
        VStack {
            HStack {
                Text("Room Selection")
                    .font(.system(size: 30, weight: .bold))
                Spacer()
            }
            .padding(.horizontal)
            .padding(.top, 30)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 30) {
                    ForEach(0 ..< 4) { item in
                        SectionView()
                    }
                }
                .padding(40)
                .padding(.top, 80)
            }
            Spacer()
        }
    }
}


struct RoomSelection_Previews: PreviewProvider {
    static var previews: some View {
        RoomSelection(showProfile: .constant(false))
    }
}

struct SectionView: View {
    var body: some View {
        VStack (alignment: .center) {
            HStack (alignment: .top){
                Text("King Suite Room")
                    .font(.system(size: 34, weight: .bold))
                    .frame(width: 300)
                    .foregroundColor(.white)
                    .padding(.top, 15)
                    .padding(.bottom, 5)

                
            }
            Text("2 bed | 1 sofa".uppercased())
                .frame(maxWidth: .infinity, alignment: .center)
            Image("roomPhoto2")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 400)
                .cornerRadius(20)
            
        }
        .padding(.bottom, 40)
        .padding(.horizontal, 30)
        .frame(width:450, height: 400)
        .background(Color("card2"))
        .cornerRadius(30)
        .shadow(color: Color("card1").opacity(0.3), radius: 20, x: 0, y: 20)
    }
}
