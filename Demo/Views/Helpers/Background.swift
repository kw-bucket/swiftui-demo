import SwiftUI

struct Background: View {
    var body: some View {
        Color("lightBlue#1")
            .ignoresSafeArea()

        Rectangle()
            .scale(1.2)
            .rotationEffect(Angle(degrees: 80))
            .foregroundColor(Color.black.opacity(0.03))

        Rectangle()
            .scale(1.2)
            .rotationEffect(Angle(degrees: 120))
            .foregroundColor(Color.white.opacity(0.05))
    }
}

struct Background_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Background()
        }
    }
}
