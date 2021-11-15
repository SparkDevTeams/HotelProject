//
//  RoomSelection.swift
//  HotelProject
//
//  Created by Joseph Torres on 9/30/21.
//

import SwiftUI

let backgroundColor = Color("secondary")


struct RoomSelection: View {
    
    @EnvironmentObject var newReservation: NewGuests
    
    @State var show = false
    @State var show2 = false
    var body: some View {
        
        // Not working for some reason
    //        ScrollView {
    //            VStack(spacing: 30) {
    //                IndividualRoom(show : $show)
    //                GeometryReader { geometry in
    //                    IndividualRoom(show: self.$show2)
    //                }
    //                .frame(height: 500)
    //                .frame(maxWidth: .infinity)
    //            }
    //            .frame(width: screen.width)
    //        }
            
    //        ScrollView {
    //            Text("Testing")
    //            VStack {
    //                IndividualRoom(show: $show)
    //                    .frame(width: show ? screen.width : 800, height: show ? screen.height : 500)
    //                    .edgesIgnoringSafeArea(.bottom)
    //                    .padding(.bottom, 30)
    //                IndividualRoom(show: $show2)
    //            }
    //            .frame(width: screen.width, height: screen.height)
    //
    //        }
        
        ScrollView {
            VStack(spacing: 30) {
                
                    GeometryReader { geometry in
                        IndividualRoom(show: self.$show)
                            .offset(y: self.show ? -geometry.frame(in: .global).minY: 0)
                    }
                    .frame(height: show ? screen.height: 500)
                    .frame(maxWidth: show ? .infinity : screen.width  - 200)
                
                    GeometryReader { geometry in
                        IndividualRoom(show: self.$show2)
                            .offset(y: self.show2 ? -geometry.frame(in: .global).minY: 0)
                    }
                    .frame(height: show2 ? screen.height: 500)
                    .frame(maxWidth: show2 ? .infinity : screen.width  - 200)
                }
                .frame(width: screen.width)
            
        }
        
        
        
    }
}
struct RoomSelection_Previews: PreviewProvider {
    static var previews: some View {
        RoomSelection()
        
    }
}

struct IndividualRoom: View {
    @Binding var show: Bool

    var body: some View {
        ZStack(alignment: .top ) {
            VStack(alignment: .center, spacing: 30.0) {
                Text("Testing this out this room is very nice")
                    .font(.system(size: 24, weight: .medium))
                Text("About this Room")
                    .font(.title).bold()
                Text("This is a very nice room it comes with blabablablabla. This is a very nice room it comes with blabablablabla, it comes with a lot of amenities. This is a very nice room it comes with blabablablabla, it comes with a lot of amenities. This is a very nice room it comes with blabablablabla, it comes with a lot of amenities. This is a very nice room it comes with blabablablabla, it comes with a lot of amenities. This is a very nice room it comes with blabablablabla, it comes with a lot of amenities.")
                    .font(.system(size: 24, weight: .medium))

                Text("This is a very nice room it comes with blabablablabla, it comes with a lot of amenities. This is a very nice room it comes with blabablablabla, it comes with a lot of amenities.This is a very nice room it comes with blabablablabla, it comes with a lot of amenities. This is a very nice room it comes with blabablablabla, it comes with a lot of amenities")
                    .font(.system(size: 24, weight: .medium))
                NavigationLink(destination: PaymentPage(), label: {
                    Text("Select Room")
                        .padding(.horizontal, 40)
                        .font(.system(size: 24))
                        .font(.system(size: 24, weight: .medium))
                        .foregroundColor(.white)
                        .frame(width: 200, height: 75)
                        .background(
                            Color.black
                                .cornerRadius(20)
                        .multilineTextAlignment(.leading)
                )}).padding()
            }
            .padding(30)
            .frame(maxWidth: show ? .infinity : screen.width - 300, maxHeight: show ? .infinity : 500, alignment: .top)
            .offset(y: show ? 500 : 0)
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
            .shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 20)
            .opacity(show ? 1 : 0)
            .edgesIgnoringSafeArea(.top)
            

            VStack {
                HStack(alignment: .top) {

                    VStack(alignment: .leading, spacing: 8.0) {
                        Text("Suite from $499")
                            .font(.system(size: 34, weight: .bold))
                            .foregroundColor(.white)
                    }
                    Spacer()
                    ZStack {
                        Text("Tap for more Information")
                            .font(.system(size: 14, weight: .medium))
                            .foregroundColor(.white)
                            .frame(width: 100)
                            .opacity(show ? 0 : 1)

                        VStack {
                        Image(systemName: "xmark")
                                .font(.system(size: 26, weight: .medium))
                                .foregroundColor(.white)
                        }
                        .frame(width: 36, height: 36)
                        .background(Color.black)
                        .clipShape(Circle())
                        .opacity(show ? 1 : 0)
                    }
                    
                    
                }
                .frame(width: 540)
                
                Image("roomPhoto1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(30)
                    .frame(maxWidth: .infinity)
                    .frame(width: 550, alignment: .top)
                    
            }
            .padding(show ? 30 : 20)
            .padding(.top, show ? 30 : 0)
            //.frame(width: show ? screen.width : screen.width - 300, height: show ? screen.height : 500)
            .frame(maxWidth: show ? .infinity : screen.width - 200, maxHeight: show ? 500 : 500)
            .background(backgroundColor)
            .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
            .shadow(color: backgroundColor.opacity(0.3), radius: 20, x: 0, y: 20)
            .onTapGesture {
                self.show.toggle()
            }

        }
        .animation(.spring(response: 0.5, dampingFraction: 0.6, blendDuration: 0))
        .edgesIgnoringSafeArea(.top)
    }
}


// ----------------------

//
//struct RoomSelection: View {
//
//    var body: some View {
//        VStack {
//            HStack {
//                Text("What type of room would you like ?")
//                    .font(.system(size: 35, weight: .bold))
//                    .frame(width: 800, height: 100, alignment: .center)
//                Spacer()
//            }
//            .padding(.horizontal, 500)
//            .padding(.top, 10)
//            .padding(.bottom, 10)
//
//
//            ScrollView(.vertical, showsIndicators: false) {
//                VStack(spacing: 30) {
//                    //Loops through the sectionData array at the bottom
//                    ForEach(sectionData) { item in
//
//                        //ToDo: I need to fix this and actually make it look good..., I only merely called the functions.
//                        GeometryReader { geometry in
//                            SectionView(section: item)
//                                .padding(.top, 20)
//
//                        }.frame(width: 600, height: 400)
//                    }
//                    .padding(.bottom, 100)
//
//                }
//                .padding()
//                .padding(.top, 200)
//            }
//            Spacer()
//        }
//    }
//}
//
//
//struct RoomSelection_Previews: PreviewProvider {
//    static var previews: some View {
//        RoomSelection()
//    }
//}
//
//
//struct SectionView: View {
//    var section: RoomCard
//    var body: some View {
//        VStack (alignment: .center) {
//            HStack (alignment: .top){
//                Text(section.title + " from " + section.price + " a night.")
//                    .font(.system(size: 20, weight: .bold))
//                    .frame(width: 400)
//                    .foregroundColor(.white)
//                    .padding(.top, 20)
//                    .padding(.bottom, 5)
//            }
//            Text(section.text.uppercased())
//                .frame(maxWidth: .infinity, alignment: .center)
//                .foregroundColor(.white)
//
//            section.image
//                .resizable()
//                .aspectRatio(contentMode: .fit)
//                .frame(width: 450)
//                .cornerRadius(30)
//        }
//        .frame(width: 500, height: 400)
//        .padding(.bottom, 10)
//        .padding(.horizontal, 40)
//        .background(section.color)
//        .cornerRadius(50)
//        .shadow(color: section.color.opacity(0.3), radius: 20, x: 0, y: 20)
//
//
//    }
//}
//
//
////Properties of each room Card
//struct RoomCard: Identifiable {
//    var id = UUID()
//    var title: String
//    var text: String
//    var image: Image
//    var color: Color
//    var price: String
//}
//
//
////I need to set the color to grab from color literal for easy testing
////Image can also be set to uiImage.
//let sectionData = [
//
//
//    RoomCard(title: "Double King Suite", text: "2 BED | 1 SOFA", image: Image("roomPhoto2"), color: Color("background2"), price: "$329"),
//
//    RoomCard(title: "Suite", text: "1 bed | 1 sofa", image: Image("roomPhoto1"), color: Color("background2"), price: "$329"),
//
//    RoomCard(title: "Double Suite", text: "1 bed | 0 sofa", image: Image("roomPhoto1"), color: Color("card4"), price: "$149"),
//
//    RoomCard(title: "King Suite", text: "1 bed | 0 sofa", image: Image("roomPhoto1"), color: Color("card4"), price: "$169")
//
//]
//
//




