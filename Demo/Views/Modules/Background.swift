import SwiftUI

struct Background: View {
    var body: some View {
        ZStack {
            Color.white
                .ignoresSafeArea()

            Rectangle()
                .scale(1.2)
                .rotationEffect(Angle(degrees: 80))
                .foregroundColor(Color.black.opacity(0.04))

            Rectangle()
                .scale(1.2)
                .rotationEffect(Angle(degrees: 125))
                .foregroundColor(Color.black.opacity(0.06))
        }
        .ignoresSafeArea(.all)
    }
}

struct Background_Previews: PreviewProvider {
    static var previews: some View {
        Background()
    }
}
