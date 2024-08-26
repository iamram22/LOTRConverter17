import SwiftUI

struct ExchangeRate: View {
    
    let leftImage: ImageResource
    let text: String
    let rightImage: ImageResource
    
    var body: some View {
        HStack {
            //left currency Image
            Image(leftImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
            
            //Exchange rate text
            Text(text)
            
            //right currency image
            Image(rightImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
        }
    }
}

//#Preview {
//    ExchangeRate()
//}
