//
//  RoomSelection.swift
//  HotelProject
//
// 
//

import SwiftUI



struct RoomSelection: View {
    
    @EnvironmentObject var newReservation: NewGuests
    
    // Add the environment object modifier to the destination
    
    @State var show = false
    @State var show2 = false
    @State var show3 = false
    @State var show4 = false
    var body: some View {
        
        ScrollView {
            Text("Select Your Room")
                .padding(30)
                .font(.system(size: 39, weight: .bold))
            VStack(spacing: 30) {
                
                    GeometryReader { geometry in
                        FirstRoom(show: self.$show)
                            .offset(y: self.show ? -geometry.frame(in: .global).minY: 0)
                    }
                    .frame(height: show ? screen.height: 500)
                    .frame(maxWidth: show ? .infinity : screen.width  - 200)
                    .padding(.bottom, 40)
                
                    GeometryReader { geometry in
                        SecondRoom(show: self.$show2)
                            .offset(y: self.show2 ? -geometry.frame(in: .global).minY: 0)
                    }
                    .frame(height: show2 ? screen.height: 500)
                    .frame(maxWidth: show2 ? .infinity : screen.width  - 200)
                    .padding(.bottom, 40)
                
                    GeometryReader { geometry in
                        ThirdRoom(show: self.$show3)
                            .offset(y: self.show3 ? -geometry.frame(in: .global).minY: 0)
                    }
                    .frame(height: show3 ? screen.height: 500)
                    .frame(maxWidth: show3 ? .infinity : screen.width  - 200)
                    .padding(.bottom, 40)
                
                    // Fourth Room
                    GeometryReader { geometry in
                        FourthRoom(show: self.$show4)
                            .offset(y: self.show4 ? -geometry.frame(in: .global).minY: 0)
                    }
                    .frame(height: show4 ? screen.height: 500)
                    .frame(maxWidth: show4 ? .infinity : screen.width  - 200)
                    .padding(.bottom, 40)
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




