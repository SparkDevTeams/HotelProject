//
//  PaymentPage.swift
//  HotelProject
//
// 
//

import SwiftUI

// change

struct PaymentPage: View {
    
    @EnvironmentObject var newReservation: NewGuests
    
    @State var navigateToNext: Bool = false
    @State var amountOfNights: String = ""
    @State var email: String = ""
    @State var confirmEmail: String = ""
    @State var cardNumber: String = ""
    @State var CVC: String = ""
    @State var cardholderName: String = ""
    @State var locationName: String = ""
    @State var zipCode: String = ""
    @State var expirationDate = Date()
    
    func nextClicked() -> Void {
        navigateToNext = !navigateToNext
    }
    
    func submitData() -> Void {
        
    }
    
    var body: some View {
        VStack{
            PaymentPageTextfieldView(amountOfNights: $amountOfNights, email: $email, confirmEmail: $confirmEmail, cardNumber: $cardNumber, CVC: $CVC, cardholderName: $cardholderName, locationName: $locationName, zipCode: $zipCode, expirationDate: $expirationDate)
            
            ZStack{
                Button (action: nextClicked, label: {
                    Text("Next")
                        .font(.system(size: 24))
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 300, height: 100)
                        .background(
                            Color.black
                                .cornerRadius(20))
                        .padding()
                })
                
                NavigationLink("Next", isActive: $navigateToNext, destination: {Checkin_Fingerprint()}).hidden()
            }
    }
}

struct PaymentPageTextfieldView: View {
    
    @Binding var amountOfNights: String
    @Binding var email: String
    @Binding var confirmEmail: String
    @Binding var cardNumber: String
    @Binding var CVC: String
    @Binding var cardholderName: String
    @Binding var locationName: String
    @Binding var zipCode: String
    @Binding var expirationDate: Date

    
    var body: some View{
        VStack{
            Text("Your total is $499.99 for a" +  amountOfNights + " night.")
                .font(.system(size: 48))
                .fontWeight(.medium)
                .padding()
            
            // sfsymbols: "envelope.fill", "creditcard.fill"
            // TODO: Extract from TextFieldComponents
            
            HStack{
                Image(systemName: "envelope.fill").padding()
                TextField("Email", text: $email)
            }.padding(5)
                .overlay(RoundedRectangle(
                    cornerRadius: 15).stroke(Color.black, lineWidth: lineWidth)).padding().frame(width:totalWidth, height: /*@START_MENU_TOKEN@*/50.0/*@END_MENU_TOKEN@*/).padding()
                
            TextFieldComponent(sfSymbol: "envelope.fill", labelString: "Confirm email", input: confirmEmail)
            
            Text("Payment Information")
                .font(.system(size: 30))
                .fontWeight(.medium)
            
            TextFieldComponent(sfSymbol: "creditcard.fill", labelString: "Card number", input: cardNumber)
            
            HStack{
                
                DatePicker(
                    "Expiration Date",
                    selection: $expirationDate,
                    displayedComponents: [.date]
                )   .frame(height:70)
                    .padding()
                    .datePickerStyle(.compact).overlay(RoundedRectangle(
                    cornerRadius: 15)
                    .stroke(Color.black, lineWidth: lineWidth))
                    .padding()
                    
                
                TextField("CVC: ", text:$CVC)
                    .frame(height: 70)
                    .padding(15)
                        .overlay(RoundedRectangle(
                            cornerRadius: 15).stroke(Color.black, lineWidth: lineWidth))
                        .padding()
                    
                
            }.frame(width:totalWidth)
            
            TextFieldComponent(sfSymbol: "person.crop.circle.fill", labelString: "Name on Card", input: cardholderName)
            
            Text("Country or Region")
                .font(.system(size: 30))
                .fontWeight(.medium)
            
            TextFieldComponent(sfSymbol: "mappin.and.ellipse", labelString: "Country/Region", input: locationName)
            
            TextFieldComponent(sfSymbol: "mappin.and.ellipse", labelString: "Zip Code", input: locationName)
            
        }
    }
}



struct PaymentPage_Previews: PreviewProvider {
    static var previews: some View {
        PaymentPage()
    }
}

}
