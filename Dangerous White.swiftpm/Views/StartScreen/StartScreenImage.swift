import SwiftUI

struct StartScreenImage: View {
    var body: some View {
        Image("Fentanyl_Chemical")
            .resizable()
            .aspectRatio(contentMode: .fit)
    }
}

struct StartScreenImage_Preview: PreviewProvider {
    static var previews: some View {
        StartScreenImage()
    }
}
