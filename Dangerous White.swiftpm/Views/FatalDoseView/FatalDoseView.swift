import SwiftUI

struct FatalDoseView: View {
    
    let ImgSize : Double
    let ImgNames : [String] = ["Fencil_big_2","tw_mg_big3"]
    @Binding var isPencilView : Bool
    @Binding var isHomeBack : Bool
    @State var isFatalDoseView : Bool = false
    @State var imgIndex : Int = 1
    
    var body: some View {
        NavigationView{
            ZStack {
                BlackBackground()
                VStack {
                    Text("This is the actual size of\na lethal dose of fentanyl.")
                        .bold()
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .font(.system(size:32.5))
                    
                    VStack {
                        Image(ImgNames[imgIndex-1]).resizable()
                                .aspectRatio(contentMode: .fit)
                            .frame(width: ImgSize)
                    }.frame(height:250)

                    Button(action: {imgIndex = imgIndex % 2 + 1}, label:{Text("Tap here to watch another image")
                            .padding(.init(top: 7, leading: 21, bottom: 7, trailing: 21))
                            .foregroundColor(.black)
                            .background(.white)
                            .clipShape(RoundedRectangle(cornerRadius: 15))
                        .font(.system(size:20, weight: .bold))})
                        .padding(.top)
                    
                    Spacer()
                    Text("Remember!")
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .font(.largeTitle)
                    Text("This is a lethal dose.\n")
                        .foregroundColor(.red)
                        .multilineTextAlignment(.center)
                        .font(.largeTitle.bold())
                    Text("Even smaller amounts\ncan lead to addiction.")
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .font(.title2)
                    Spacer()
                        HStack {
                            Button(action: {isPencilView = false}, label:{ BackButtonView()})
                            NavigationLink(destination: ParticleView(isFatalDoseView : $isFatalDoseView, isHomeBack: $isHomeBack,ImgSize: ImgSize), isActive: $isFatalDoseView, label: {NextButtonView()})
                        }.padding(.bottom, 35.0)
                }
            }
        }.navigationViewStyle(StackNavigationViewStyle())
            .navigationBarBackButtonHidden(true)
    }
}

struct FatalDoseView_Previews: PreviewProvider {
    static var previews: some View {
        PencilView(isWhatisFentanyl: .constant(false), isHomeBack: .constant(false))
    }
}
