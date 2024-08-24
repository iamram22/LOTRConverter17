import SwiftUI

struct CurrencyIcons: View {
        
    let currencyImage: ImageResource
    let currencyName: String
    
    var body: some View {
        ZStack(alignment: .bottom) {
            //currency image
            Image(currencyImage)
                .resizable()
                .scaledToFit()
            
            //Currency name
            Text(currencyName)
                .padding(3)
                .font(.caption)
                .frame(maxWidth: .infinity)
                .background(.brown.opacity(0.75))
        }
        .padding(3)
        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
        .background(.brown)
        .clipShape(.rect(cornerRadius: 10))
    }
}

#Preview {
    CurrencyIcons(currencyImage: .goldpiece, currencyName: "Gold")
}
