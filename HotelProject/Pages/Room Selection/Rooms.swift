//
//  Rooms.swift
//  HotelProject
//
//  Created by Joseph Torres on 11/15/21.
//

import SwiftUI

struct Rooms: View {
    @State var show = false
    
    var body: some View {
        
        
        //To Change the room you want to view just change FirstRoom | SecondRoom | ThirdRoom | FourthRoom
        
        GeometryReader { geometry in
            FirstRoom(show: self.$show)
                .offset(y: self.show ? -geometry.frame(in: .global).minY: 0)
        }
        .frame(height: show ? screen.height: 500)
        .frame(maxWidth: show ? .infinity : screen.width  - 200)
        .padding(.bottom, 40)
        
    }
}

struct Rooms_Previews: PreviewProvider {
    static var previews: some View {
        Rooms()
    }
}

struct FirstRoom: View {
    @Binding var show: Bool
    
    @State var nextPage: Bool = false
    
    @EnvironmentObject var newReservation: NewGuests

    func navNext() -> Void {
        nextPage = !nextPage
        
        print("First Name: " + newReservation.mainGuestFN)
    }
    
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
                Button(action: navNext, label: {Text("Select This room!").padding(.horizontal, 40)
                        .font(.system(size: 24))
                        .font(.system(size: 24, weight: .medium))
                        .foregroundColor(.white)
                        .frame(width: 200, height: 75)
                        .background(
                            Color.black
                                .cornerRadius(20)
                        .multilineTextAlignment(.leading)
                )})
                NavigationLink("", destination: PaymentPage(), isActive: $nextPage)
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

struct SecondRoom: View {
    @Binding var show: Bool
    
    @State var nextPage: Bool = false
    
    @EnvironmentObject var newReservation: NewGuests

    func navNext() -> Void {
        nextPage = !nextPage
    }
    
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
                Button(action: navNext, label: {Text("Select This room!").padding(.horizontal, 40)
                        .font(.system(size: 24))
                        .font(.system(size: 24, weight: .medium))
                        .foregroundColor(.white)
                        .frame(width: 200, height: 75)
                        .background(
                            Color.black
                                .cornerRadius(20)
                        .multilineTextAlignment(.leading)
                )})
                NavigationLink("", destination: PaymentPage(), isActive: $nextPage)
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
                        Text("Double Bed from $499")
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
                
                Image("roomPhoto2")
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

struct ThirdRoom: View {
    @Binding var show: Bool
    
    @State var nextPage: Bool = false
    
    @EnvironmentObject var newReservation: NewGuests

    func navNext() -> Void {
        nextPage = !nextPage
    }
    
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
                Button(action: navNext, label: {Text("Select This room!").padding(.horizontal, 40)
                        .font(.system(size: 24))
                        .font(.system(size: 24, weight: .medium))
                        .foregroundColor(.white)
                        .frame(width: 200, height: 75)
                        .background(
                            Color.black
                                .cornerRadius(20)
                        .multilineTextAlignment(.leading)
                )})
                NavigationLink("", destination: PaymentPage(), isActive: $nextPage)
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
                        Text("Double Bed from $499")
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
                
                Image("roomPhoto3")
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

struct FourthRoom: View {
    @Binding var show: Bool
    
    @State var nextPage: Bool = false
    
    @EnvironmentObject var newReservation: NewGuests

    func navNext() -> Void {
        nextPage = !nextPage
    }
    
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
                Button(action: navNext, label: {Text("Select This room!").padding(.horizontal, 40)
                        .font(.system(size: 24))
                        .font(.system(size: 24, weight: .medium))
                        .foregroundColor(.white)
                        .frame(width: 200, height: 75)
                        .background(
                            Color.black
                                .cornerRadius(20)
                        .multilineTextAlignment(.leading)
                )})
                NavigationLink("", destination: PaymentPage(), isActive: $nextPage)
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
                        Text("Double Bed from $499")
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
                
                Image("roomPhoto4")
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
