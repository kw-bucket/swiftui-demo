import SwiftUI

struct SplashScreenView: View {

    @State var isActive : Bool = false
    @State private var size = 0.7
    @State private var opacity = 0.5

    var body: some View {
        if isActive {
            SignInView()
        } else {
            NavigationStack {
                ZStack {
                    Background()

                    Logo()
                        .scaleEffect(size)
                        .opacity(opacity)
                        .onAppear {
                            withAnimation(.easeIn(duration: 1.6)) {
                                self.size = 1
                                self.opacity = 1
                            }
                        }
                }
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                        withAnimation {
                            self.isActive = true
                        }
                    }
                }
            }
        }
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
