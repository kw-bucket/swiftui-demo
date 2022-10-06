import SwiftUI

struct SignInView: View {
    
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var isAuthenticationSucceed: Bool = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                Background()

                VStack {
                    SplashText()

                    SignInForm(
                        username: $username,
                        password: $password,
                        isAuthenticationSucceed: $isAuthenticationSucceed
                    )
                    
                    LabelledDivider(label: "Or")
                        .padding(.vertical)
                        .frame(maxWidth: 300)
                    
                    SignUpLinkButton()
                }
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}

private struct SignInForm: View {

    @Binding var username: String
    @Binding var password: String
    @Binding var isAuthenticationSucceed: Bool
    
    var body: some View {
        TextField("Username",text: $username)
            .padding()
            .frame(width: 300, height: 50)
            .background(Color.white)
            .cornerRadius(30)

        SecureField("Password", text: $password)
            .padding()
            .frame(width: 300, height: 50)
            .background(Color.white)
            .cornerRadius(30)

        Button {
            authenticateUser(username: username, password: password)
        } label: {
            Text("Sign In")
                .frame(width: 300, height: 50)
                .font(.system(size: 20, weight: .bold, design: .default))
                .background(Color("custom-yellow--1"))
                .foregroundColor(Color.gray)
                .cornerRadius(30)
        }.navigationDestination(isPresented: $isAuthenticationSucceed) {
            MainScreenView()
        }
    }

    func authenticateUser(username: String, password: String) {
        isAuthenticationSucceed = true
    }
}

private struct SignUpLinkButton: View {
    var body: some View {
        NavigationLink(
            destination: MainScreenView()
        ) {
            Text("Sign Up")
                .frame(width: 300, height: 50)
                .font(.system(size: 20, weight: .bold, design: .default))
                .background(Color.gray)
                .foregroundColor(Color.white)
                .cornerRadius(30)
        }
    }
}
