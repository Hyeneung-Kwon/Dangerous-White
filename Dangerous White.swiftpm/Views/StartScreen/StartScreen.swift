import SwiftUI

struct StartScreen: View {
    
    @State var isHomeBack : Bool = false
    
    var body: some View {
        NavigationView{
            ZStack {
                BlackBackground()
                VStack {
                    Spacer()
                    StartScreenImage()
                    StartScreenText()
                    Spacer()
                    NavigationLink(destination: WhatIsFentanyl(isHomeBack : $isHomeBack), isActive: $isHomeBack){
                        StartScreenButton()
                    }
                    Spacer()
                }
            }
        }.navigationViewStyle(.stack)
    }
}

struct StartScreen_Previews: PreviewProvider {
    static var previews: some View {
        StartScreen()
    }
}
