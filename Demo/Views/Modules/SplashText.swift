import SwiftUI

struct SplashText: View {
    var body: some View {
        VStack {
            Text("DEMO")
                .font(.system(size: 32, weight: .bold))
                .foregroundColor(Color.gray)

            Divider()
                .frame(width: 250, height: 2)
                .overlay(Color("custom-yellow--1"))

            Text("SwiftUi Demo Application")
                .font(.system(size: 20, weight: .light))
                .foregroundColor(Color.gray)
        }.padding(.bottom, 50)
    }
}

struct SplashText_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Background()
            SplashText()
        }
    }
}
