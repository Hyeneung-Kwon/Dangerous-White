import SwiftUI

struct PencilView: View {
    
    @State private var ImgSize : Double = 150.0
    @Binding var isWhatisFentanyl : Bool
    @Binding var isHomeBack : Bool
    @State var isPencilView : Bool = false
    @State var ImgNameStr : String = "pencil"
    @State var PencilIndex : Int = 1
    
    let ImgStrArr : [String] = ["pencil", "ApplePencil"]
    let DisplayImgStrArr : [String] = ["pencil", "Apple Pencil"]
    
    var body: some View {
        NavigationView{
            ZStack {
                BlackBackground()
                VStack(alignment: .center) {
                    Text("Visually check the\ntoxicity of fentanyl.")
                        .bold()
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .font(.system(size:32.5))
                    VStack{
                        ZStack {
                            Color.gray
                            VStack {
                                Image(ImgStrArr[PencilIndex % 2])
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: ImgSize)
                            }
                        }
                    }.frame(height : 250)
                    
                    HStack{
                        Button(action: {PencilIndex = PencilIndex % 2 + 1}, label:{Text("Change image to " + DisplayImgStrArr[PencilIndex-1])
                                .padding(.init(top: 7, leading: 21, bottom: 7, trailing: 21))
                                .foregroundColor(.black)
                                .background(.white)
                                .clipShape(RoundedRectangle(cornerRadius: 15))
                                .font(.system(size:20, weight: .bold))
                        })
                    }.padding(.top)
                    
                    Spacer()
                    Text("To view images close to the real size, adjustments are needed.\n\nPlease change the size of the image\nto your real Apple Pencil or pencil\nby using slider below.")
                        .foregroundColor(.white)
                        .padding(.top, -14)
                        .font(.title2)
                    Spacer()
                    Slider(value: $ImgSize, in: 0...300, step: 0.1)
                        .padding([.leading, .trailing], 10)
                        .padding(.top, -10)
                    Spacer()
                    HStack {
                        Button(action: {isWhatisFentanyl = false}, label:{ BackButtonView()})
                        NavigationLink(destination: FatalDoseView(ImgSize: ImgSize, isPencilView : $isPencilView, isHomeBack: $isHomeBack),isActive: $isPencilView, label: {NextButtonView()})
                    }                    .padding(.bottom, 35.0)

                }
            }
        }.navigationViewStyle(StackNavigationViewStyle())
            .navigationBarBackButtonHidden(true)
    }
}

struct PencilView_Previews: PreviewProvider {
    static var previews: some View {
        PencilView(isWhatisFentanyl: .constant(false), isHomeBack: .constant(false))
    }
}
