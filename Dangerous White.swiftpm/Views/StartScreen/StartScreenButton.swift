import SwiftUI

struct StartScreenButton: View {
    var body: some View {
        Text("START")
            .padding(.init(top: 7, leading: 21, bottom: 7, trailing: 21))
            .foregroundColor(.black)
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 500))
            .font(.system(size:50, weight: .bold))
    }
}

struct StartScreenButton_Previews: PreviewProvider {
    static var previews: some View {
        StartScreenButton()
    }
}
