import SwiftUI

struct BackButtonView: View {
    var body: some View {
        Text("Back")
            .padding(.init(top: 6, leading: 18, bottom: 6, trailing: 18))
            .foregroundColor(.white)
            .background(.black)
            .clipShape(RoundedRectangle(cornerRadius: 15))
            .overlay{RoundedRectangle(cornerRadius: 15).stroke(.white,lineWidth: 2)}
            .font(.system(size:30, weight: .bold))
            .padding(.trailing, 35.0)
    }
}

struct BackButtonView_PreViews: PreviewProvider {
    static var previews: some View {
        BackButtonView()
    }
}
