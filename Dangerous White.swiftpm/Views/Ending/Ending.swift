import SwiftUI

struct Ending: View {
    
    @State var textidx : Int = 0
    @State var leftOpacity : Double = 0.0
    @State var rightOpacity : Double = 100.0
    @Binding var isParticleView : Bool
    @Binding var isHomeBack : Bool
    
    let maintext : [String] = [
        "1. Don't take fentanyl out of curiosity.\n\nFentanyl is a highly addictive drug.\nUnless you have been prescribed\nfentanyl for a severe pain-causing\nillness, taking fentanyl can make\nyou addicted.",
        
        "2. Excessive exposure to\nlethal amounts of fentanyl\ncan be counteracted with a drug \ncalled naloxone.\n\nNaloxone can be purchased\nwithout a prescription at pharmacies\nin certain countries, like as USA.",
        
        "3. Do not consume\nany food, drink,or medication\nfrom unknown sources.\n\nThere is a risk of exposure\nto fentanyl through this route\nwithout your knowledge.\n\nIn the worst case scenario,\nthis can result in loss of life\nor fentanyl addiction.",
        
        "4. Spread the word about the\ndangers of fentanyl\nand emergency response methods\nto your loved ones around you.\n\nAlso, keep in mind that\nusing fentanyl inappropriately\nwith friends is not a cool action,\nand saving everyone from fentanyl addiction\nis truly a cool action."
    ]
    
    let imgnames : [String] = ["chem_1024", "Spray", "Medicine", "heart"]
    
    var body: some View {
        ZStack {
            BlackBackground()
            VStack(alignment: .center) {
                Text("How to protect life\nand health from fentanyl")
                    .bold()
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .font(.system(size:32.5))
                ZStack {
                    RoundedRectangle(cornerRadius:15)
                        .fill(Color.white)
                    VStack(alignment: .center) {
                        Image(imgnames[textidx])
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding(.vertical,8.0)
                            .padding(.top,2.7)
                            .frame(height: 165)
                        Divider()
                            .padding(.top, -3.5)
                        Spacer()
                        Text(maintext[textidx])
                            .foregroundColor(.black)
                            .font(.title3)
                            .padding(.horizontal)
                        Spacer()
                        HStack{
                            Button(action:{rightOpacity=100.0
                                if(textidx != 0){textidx = textidx - 1
                                    if(textidx == 0){leftOpacity = 0.0}}}, label:{ Text("<").font(.largeTitle).foregroundColor(.black)})
                            .padding(.trailing)
                            .opacity(leftOpacity)
                            
                            HStack {
                                Text(String(textidx+1)).font(.title).foregroundColor(.black)
                            }.frame(width: 16.5)
                            Text(" / ").font(.title).foregroundColor(.black)
                            HStack {
                                Text("4").font(.title).foregroundColor(.black)
                            }.frame(width: 16.5)
                            
                            Button(action:{leftOpacity = 100.0
                                if(textidx != 3){textidx = textidx + 1
                                    if(textidx == 3){rightOpacity = 0.0}}}, label:{Text(">").font(.largeTitle).foregroundColor(.black)})
                            .padding(.leading)
                            .opacity(rightOpacity)
                        }
                        .padding(.bottom)
                    }
                }.padding([.top,.leading,.trailing])
                .padding(.bottom,35.0)

                    Spacer()

                HStack(alignment: .center) {
                        Button(action: {
                            isParticleView = false}, label:{ BackButtonView()})
                        Button(action: {isHomeBack = false},label:{ Text("Home")
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

