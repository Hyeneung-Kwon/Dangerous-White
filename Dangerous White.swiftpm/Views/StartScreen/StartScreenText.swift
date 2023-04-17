import SwiftUI

struct StartScreenText: View {
    var body: some View {
        VStack {
            Text("Dangerous\nWhite").font(.system(size:60))
                .foregroundColor(.white)
                .bold()
                .multilineTextAlignment(.center)
                .padding(.bottom, -20)
            
            Text("- The dangers of fentanyl -")
                .font(.system(size:30))
                    .foregroundColor(.white)
                    .bold()
                    .multilineTextAlignment(.center)
                    .padding(.top, 15.0)
        }
    }
}

struct StartScreenText_Previews: PreviewProvider {
    static var previews: some View {
        StartScreenText()
    }
}
