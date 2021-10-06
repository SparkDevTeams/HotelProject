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
                    //Loops through the sectionData array at the bottom
                    ForEach(sectionData) { item in
                        
                        //ToDo: I need to fix this and actually make it look good..., I only merely called the functions.
                        GeometryReader { geometry in
                            SectionView(section: item)
                                .rotation3DEffect(Angle(degrees: Double(geometry.frame(in: .global).minX - 30) / -50), axis: (x:20, y: 0, z: 0))
                        }.frame(width: 550, height: 400)
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
    static var previews: some View {
        RoomSelection()
    }
}


struct SectionView: View {
    var section: RoomCard
    var body: some View {
        VStack (alignment: .center) {
            HStack (alignment: .top){
                Text(section.title)
                    .font(.system(size: 34, weight: .bold))
                    .frame(width: 500)
                    .foregroundColor(.white)
                    .padding(.top, 20)
                    .padding(.bottom, 5)
            }
            Text(section.text.uppercased())
                .frame(maxWidth: .infinity, alignment: .center)
                .foregroundColor(.white)
            
            section.image
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 400)
                .cornerRadius(20)
        }
        .padding(.bottom, 40)
        .padding(.horizontal, 30)
        .frame(width:550, height: 400)
        .background(section.color)
        .cornerRadius(30)
        .shadow(color: section.color.opacity(0.3), radius: 20, x: 0, y: 20)
    }
}

//Properties of each room Card
struct RoomCard: Identifiable {
    var id = UUID()
    var title: String
    var text: String
    var image: Image
    var color: Color
}


//I need to set the color to grab from color literal for easy testing
//Image can also be set to uiImage.
let sectionData = [
    
    RoomCard(title: "King Suite Room", text: "2 BED | 1 SOFA", image: Image("roomPhoto2"), color: Color("secondary")),
    
    RoomCard(title: "Second Room Test", text: "1 bed | 1 sofa", image: Image("roomPhoto1"), color: Color("secondary")),
    
    RoomCard(title: "Third Room Test", text: "1 bed | 0 sofa", image: Image("roomPhoto1"), color: Color("secondary"))
    
]



