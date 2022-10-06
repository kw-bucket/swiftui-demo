import SwiftUI

struct ChatsView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Background()
                
                Text("Chats")
                    .bold()
                    .foregroundColor(Color.gray)
            }
            .ignoresSafeArea(.all)
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct ChatsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            TabView {
                ChatsView()
                    .tabItem {
                        Image(systemName: "house")
                            .renderingMode(.original)
                    }
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}
