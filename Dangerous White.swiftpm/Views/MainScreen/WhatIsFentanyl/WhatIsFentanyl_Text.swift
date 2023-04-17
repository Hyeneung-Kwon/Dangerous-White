import SwiftUI

struct WhatIsFentanyl_Text: View {
    var body: some View {
        VStack {
            Spacer()
            Text("What is fentanyl?")
                .bold()
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                .font(.system(size:32.5))
            Text("Fentanyl is a synthetic opioid.\nIt is used for patients \nwith severe pain.\n\nHowever, fentanyl is being \nincreasingly misused \nfor inappropriate purposes.\n\nThis ruins many people's\nlives and health.") /* \n\nThis has become a societal issue\nin many countries.")*/
                .foregroundColor(.white)
                .multilineTextAlignment(.leading)
                .font(.title3)
                .padding(.horizontal)
                .padding(.top)
            Spacer()
        }
    }
}

struct WhatIsFentanyl_Text_Previews: PreviewProvider {
    static var previews: some View {
        WhatIsFentanyl(isHomeBack: .constant(false))
    }
}
