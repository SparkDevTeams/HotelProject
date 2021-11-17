//
//  NewReservation.swift
//  HotelProject
//
//  Created by vincent carrancho on 11/3/21.
//

import Foundation
import RealmSwift

@objcMembers class ChatMessage: Object, ObjectKeyIdentifiable {
    dynamic var _id = ObjectId.generate()
    dynamic var room = ""
    dynamic var time = Date()


    convenience init (room: String) {
        self.init()
        self.room = room
    }

override static func primaryKey() -> String? {
    return "_id"
}

}
class NewGuests: ObservableObject {
    
    @Published var mainGuestFN = ""
    @Published var mainGuestLN = ""
    @Published var mainGuestAddress = ""
    @Published var mainGuestZip = ""
    @Published var mainGuestEmailAddress = ""
    @Published var countryRegion = ""
    @Published var phoneNumber = ""
    
    // This is for the payment information
    @Published var cardNumber = ""
    @Published var CVC = ""
    @Published var expirationDate = ""
    
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
    func setEmailAddress(email: String) -> Void {
        self.mainGuestEmailAddress = email
    }
    func setCountry(country: String) -> Void {
        self.countryRegion = country
    }
    func setPhoneNumber(phone: String) -> Void {
        self.phoneNumber = phone
    }
    func setCardNumber(number: String) -> Void {
        self.cardNumber = number
    }
    func setCVC(cvc: String) -> Void {
        self.CVC = cvc
    }
    func setExpirationDate(date: String) -> Void {
        self.expirationDate = date
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
    func getEmailAddress() -> String {
        return self.mainGuestEmailAddress
    }
    func getCountry() -> String {
        return self.countryRegion
    }
    func getPhoneNumber() -> String {
        return self.phoneNumber
    }
    func getCardNum() -> String {
        return self.cardNumber
    }
    func getCVC() -> String {
        return self.CVC
    }
    func getExpirationDate() -> String {
        return self.expirationDate
    }
    
    func writeToDatabase() -> Void {
        // TODO: use the functions to write to the database
        // use MongoDB methods to write to database.
    }
    
    func resetData() -> Void {
        // TODO: Make function to wipe the data from the object
    }
    
}
