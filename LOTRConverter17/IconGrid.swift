import SwiftUI

struct IconGrid: View {
    
    @State var currency: Currency
    
    var body: some View {
        LazyVGrid(columns: [GridItem(), GridItem(), GridItem()]) {
            ForEach(Currency.allCases) {currency in
                if self.currency == currency {
                    CurrencyIcons(currencyImage: currency.image, currencyName: currency.name)
                } else {
                    CurrencyIcons(currencyImage: currency.image, currencyName: currency.name)
                        .onTapGesture {
                            self.currency = currency
                        }
                }
            }
        }
    }
}
    
    #Preview {
        IconGrid(currency: .goldPiece)
    }

