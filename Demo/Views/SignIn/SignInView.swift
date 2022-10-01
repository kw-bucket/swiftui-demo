import SwiftUI

struct SignInView: View {
    
    @State private var username = ""
    @State private var password = ""
    @State private var isAuthenticationSucceed: Bool = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                Background()

                VStack {
                    Logo()

                    SignInForm(
                        username: $username,
                        password: $password,
                        isAuthenticationSucceed: $isAuthenticationSucceed)
                }
            }
        }.navigationBarBackButtonHidden(true)
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}

struct SignInForm: View {

    @Binding var username: String
    @Binding var password: String
    @Binding var isAuthenticationSucceed: Bool

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
            authenticateUser(username: username, password: password)
        } label: {
            SignInButton()
        }.navigationDestination(isPresented: $isAuthenticationSucceed) {
            Home()
        }
    }

    func authenticateUser(username: String, password: String) {
        isAuthenticationSucceed = true
    }
}

struct SignInButton: View {
    var body: some View {
        Text("Sign In")
            .frame(width: 300, height: 50)
            .foregroundColor(Color.white)
            .background(Color("yellow#1"))
            .font(.system(size: 20, weight: .bold, design: .default))
            .cornerRadius(10)
    }
}
