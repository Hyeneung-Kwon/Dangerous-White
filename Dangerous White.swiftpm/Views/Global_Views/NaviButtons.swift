import SwiftUI

struct NaviButtons: View {
    
    @Binding var NaviViewIndex : Int
    
    var body: some View {
        ZStack {
            HStack{
                Text("Back")
                    .padding(.init(top: 7, leading: 21, bottom: 7, trailing: 21))
                    .foregroundColor(.black)
                    .background(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                    .font(.system(size:20, weight: .bold))
                    .padding(.trailing, 35.0)
                Text("Next")
                    .padding(.init(top: 7, leading: 21, bottom: 7, trailing: 21))
                    .foregroundColor(.black)
                    .background(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                    .font(.system(size:20, weight: .bold))
            }
        }
    }
}

struct NaviButtons_Previews: PreviewProvider {
    static var previews: some View {
        NaviButtons(NaviViewIndex: .constant(1))
    }
}
