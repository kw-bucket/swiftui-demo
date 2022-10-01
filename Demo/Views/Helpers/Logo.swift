import SwiftUI

struct Logo: View {
    var body: some View {
        VStack {
            Text("DEMO")
                .font(.system(size: 32, weight: .bold))
                .foregroundColor(Color.white)

            Divider()
                .frame(width: 250, height: 1)
                .overlay(Color("yellow#1"))

            Text("Demo Application")
                .font(.system(size: 20, weight: .ultraLight))
                .foregroundColor(Color.white)
        }.padding(.bottom, 50)
    }
}

struct Logo_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Background()
            Logo()
        }
    }
}
