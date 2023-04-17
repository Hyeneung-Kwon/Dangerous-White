import SwiftUI

struct ParticleView: View {

    @State var isParticleView : Bool = false
    @State var HumanKills : Int = 1
    @Binding var isFatalDoseView : Bool
    @Binding var isHomeBack : Bool
    let ImgSize : Double

    var body: some View {
        NavigationView{
            ZStack{
                BlackBackground()
                Spacer()
                VStack{
                    Text("Small but deadly.")
                        .font(.system(size:45))
                        .foregroundColor(.white)
                        .bold()
                        .multilineTextAlignment(.center)
                    
                    FentanylParticleView(imgSize: ImgSize)
                        .frame(width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height/1.8)
                    
                    Spacer()
                    
                    VStack {
                        Text("This amount of fentanyl")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        HStack {
                            Text("can kill")
                                .font(.largeTitle)
                                .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                            
                            Text(String(HumanKills))
                                .font(.largeTitle.bold())
                                .foregroundColor(.red)
                                .multilineTextAlignment(.center)
                            
                            Text("People!")
                                .font(.largeTitle)
                                .foregroundColor(.white)
                                .multilineTextAlignment(.center)
                        }
                    }
                    
                    Spacer()
    
                    HStack {
                        Button(action: {isFatalDoseView = false}, label:{ BackButtonView()})
                        NavigationLink(destination: Ending(isParticleView: $isParticleView, isHomeBack: $isHomeBack),isActive: $isParticleView, label: {NextButtonView()})
                    }.padding(.bottom, 35.0)
                }
            }.onAppear{
                Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { _ in
                    if HumanKills < 100{
                        HumanKills += 1
                    }
                }
            }
        }.navigationViewStyle(.stack)
        .navigationBarBackButtonHidden(true)
    }
}

struct ParticleView_Previews: PreviewProvider {
    static var previews: some View {
        ParticleView(isFatalDoseView: .constant(false),isHomeBack: .constant(false), ImgSize:100)
    }
}
