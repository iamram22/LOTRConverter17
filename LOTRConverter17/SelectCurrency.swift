import SwiftUI

struct SelectCurrency: View {

    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack{
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            //parchment background Image
            
            VStack {
                //text
                Text("Select the currency you are starting with")
                    .fontWeight(.bold)
                
                // Currency icons
                IconGrid(currency: .silverPenny)
             
                
                //text
                Text("Select the currency you would like to convert to: ")
                    .fontWeight(.bold)
                
                //currency icons
                IconGrid(currency: .goldPenny)

                
                //Done buttons
                Button("Done") {
                    dismiss()
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown)
                .font(.largeTitle)
                .padding()
            }
            .padding()
            .multilineTextAlignment(.center)
        }
    }
}

#Preview {
    SelectCurrency()
}
