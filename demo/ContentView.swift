
import SwiftUI

struct ContentView: View {
    
    @State private var username = ""
    @State private var password = ""
    
    var body: some View {
        ZStack {
            BackgroundView()

            VStack {
                LogoView()

                LoginFormView(username: $username, password: $password)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct BackgroundView: View {
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

struct LogoView: View {
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

struct LoginFormView: View {

    @Binding var username: String
    @Binding var password: String

    var body: some View {
        TextField("Username",text: $username)
            .padding()
            .frame(width: 300, height: 50)
            .background(Color.white)
            .cornerRadius(10)

        SecureField("Password", text: $password)
            .padding()
            .frame(width: 300, height: 50)
            .background(Color.white)
            .cornerRadius(10)

        Button {
            print("Login")
        } label: {
            LoginButton()
        }
    }
}

struct LoginButton: View {
    var body: some View {
        Text("Login")
            .frame(width: 300, height: 50)
            .foregroundColor(Color.white)
            .background(Color("yellow#1"))
            .font(.system(size: 20, weight: .bold, design: .default))
            .cornerRadius(10)
    }
}
