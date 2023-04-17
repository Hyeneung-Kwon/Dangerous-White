import SwiftUI

struct BlackBackground: View {
    var body: some View {
        VStack{
            Color.black.edgesIgnoringSafeArea(.all)
        }
    }
}

struct BlackBackground_Previews: PreviewProvider {
    static var previews: some View {
        BlackBackground()
    }
}
