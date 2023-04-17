import SwiftUI

struct Ending: View {
    
    @Binding var isParticleView : Bool
    @Binding var isHomeBack : Bool
    
    var body: some View {
        ZStack {
            BlackBackground()
            VStack {
                Text("How to protect life\nand health from fentanyl")
                    .bold()
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .font(.system(size:32.5))
                Spacer()
                Image("heart")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.horizontal, 60.0)
                Spacer()
                Text("1.극심한 통증으로 인해\n반드시 필요한 것이 아니라면 펜타닐 사용하지 않기\n\n2.펜타닐에 이미 중독되었다면\n적극적으로 상담 요청하기\n\n3.만약 누군가가 펜타닐을 흡입하고 쓰러졌을 경우\n날록손이라는 약물로 응급처치가 가능.")
                    .foregroundColor(.white)
                    .font(.title3)
                    .multilineTextAlignment(.center)
                Spacer()
                    HStack {
                        Button(action: {isParticleView = false}, label:{ BackButtonView()})
                        Button(action: {isHomeBack = false}, label:{ Text("Home")
                                .padding(.init(top: 7, leading: 13.5, bottom: 7, trailing: 11.5))
                                .foregroundColor(.black)
                                .background(.white)
                                .clipShape(RoundedRectangle(cornerRadius: 15))
                                .font(.system(size:30, weight: .bold))})
                    }.padding(.bottom, 35.0)
            }
        }.navigationViewStyle(.stack)
        .navigationBarBackButtonHidden(true)
    }
}

struct Ending_Previews: PreviewProvider {
    static var previews: some View {
        Ending(isParticleView: .constant(false), isHomeBack: .constant(false))
    }
}
