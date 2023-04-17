import SwiftUI

struct NextButtonView: View {
    var body: some View {
        Text("Next")
            .padding(.init(top: 7, leading: 21, bottom: 7, trailing: 21))
            .foregroundColor(.black)
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 15))
            .font(.system(size:30, weight: .bold))
    }
}

struct NextButtonView_Previews: PreviewProvider {
    static var previews: some View {
        NextButtonView()
    }
}
