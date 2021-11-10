//
//  NewReservation.swift
//  HotelProject
//
//  Created by vincent carrancho on 11/3/21.
//

import Foundation

class NewGuests: ObservableObject {
    
    @Published var mainGuestFN: String = ""
    @Published var mainGuestLN: String = ""
    @Published var mainGuestAddress: String = ""
    @Published var mainGuestZip: String = ""
    
    // Below are the fields for the other guests
    
    @Published var otherGuestFN: [String] = []
    @Published var otherGuestLN: [String] = []
    
    // below are the setters
    func setMainGuestFN(FN: String) -> Void {
        self.mainGuestFN = FN
    }
    func setMainGuestLN(LN: String) -> Void {
        self.mainGuestLN = LN
    }
    func setMainGuestAddress(ad: String) -> Void {
        self.mainGuestAddress = ad
    }
    func setMainGuestZip(zip: String) -> Void {
        self.mainGuestZip = zip
    }
   
    // below are the getters
    func getMainGuestFN() -> String {
        return self.mainGuestFN
    }
    func getMainGuestLN() -> String {
        return self.mainGuestLN
    }
    func getMainGuestAddress() -> String {
        return self.mainGuestAddress
    }
    func getMainGuestZip() -> String {
        return self.mainGuestZip
    }
    
    func writeToDatabase() -> Void {
        // TODO: use the functions to write to the database
        // use MongoDB methods to write to database.
    }
    
    func resetData() -> Void {
        // TODO: Make function to wipe the data from the object
    }
    
}
