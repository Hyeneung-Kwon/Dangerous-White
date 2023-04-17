import SwiftUI

struct WhatIsFentanyl: View {
    
    @Binding var isHomeBack : Bool
    @State var isWhatisFentanyl : Bool = false
    
    var body: some View {
        NavigationView(){
            ZStack{
                BlackBackground()
                VStack {
                    Spacer()
                    Image("Fentanyl_dust")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(.horizontal, 60.0)
                        .frame(height: 250)
                    WhatIsFentanyl_Text()
                        .padding(.bottom, 45.0)
                    Spacer()
                    HStack {
                        Button(action: {isHomeBack = false}, label:{ BackButtonView()})
                        NavigationLink(destination: PencilView(isWhatisFentanyl: $isWhatisFentanyl, isHomeBack:$isHomeBack), isActive: $isWhatisFentanyl, label: {NextButtonView()})
                    }
                    .padding(.bottom, 35.0)
                }
            }
        }.navigationViewStyle(.stack)
        .navigationBarBackButtonHidden(true)
    }
}

struct WhatIsFentanyl_Previews: PreviewProvider {
    static var previews: some View {
        WhatIsFentanyl(isHomeBack : .constant(false))
    }
}
