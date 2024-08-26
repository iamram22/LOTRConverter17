import SwiftUI

struct ExchangeInfo: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            //Background parchament Image
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            
            VStack {
                //title Text
                Text("Exchange Rate")
                    .font(.largeTitle)
                    .tracking(3)
                
                //Decription rates
                Text("Here at the Prancing Pony, we are happy to offer you a place where you can exchange all the known currencies in the entire world except one. We used to take Brandy Bucks, but after finding out that it was a person instead of a piece of paper, we realized it had no value to us. Below is a simple guide to our currency exchange rates:")
                    .font(.title2)
                    .padding()
                
                ExchangeRate(leftImage: .goldpiece, text: "1 Gold piece = 4 Gold pennies", rightImage: .goldpenny)
                
                ExchangeRate(leftImage: .goldpenny, text: "1 Gold penny = 4 silver pennies", rightImage: .silverpenny)
                
                ExchangeRate(leftImage: .silverpiece, text: "1 Silver piece = 4 silver pennies", rightImage: .silverpenny)

                ExchangeRate(leftImage: .silverpenny, text: "1 silver penny = 100 copper pennies", rightImage: .copperpenny)
                
                //done button
                Button("Done") {
                    dismiss()
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown)
                .font(.largeTitle)
                .padding()
                
            }.foregroundStyle(.black)
        }
    }
}

#Preview {
    ExchangeInfo()
}

