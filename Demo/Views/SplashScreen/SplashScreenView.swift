import SwiftUI

struct SplashScreenView: View {

    @State private var isActive : Bool = false
    @State private var size = 0.7
    @State private var opacity = 0.5

    var body: some View {
        if isActive {
            SignInView()
        } else {
            SplashScreen(isActive: $isActive, size: $size, opacity: $opacity)
        }
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}

private struct SplashScreen: View {
    
    @Binding var isActive: Bool
    @Binding var size: Double
    @Binding var opacity: Double
    
    var body: some View {
        NavigationStack {
            ZStack {
                Background()

                SplashText()
                    .scaleEffect(size)
                    .opacity(opacity)
                    .onAppear {
                        withAnimation(.easeIn(duration: 1.6)) {
                            size = 1
                            opacity = 1
                        }
                    }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
                    withAnimation {
                        isActive = true
                    }
                }
            }
        }
    }
}
