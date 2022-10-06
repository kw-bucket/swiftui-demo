import SwiftUI

struct MainScreenView: View {
    var body: some View {
        NavigationStack {
            TabView {
                HomeView()
                    .tabItem {
                        Label("Home", systemImage: "house")
                    }
                ChatsView()
                    .tabItem {
                        Label("Chats", systemImage: "bubble.left.and.bubble.right")
                    }
            }
            .tint(Color("custom-yellow--1"))
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct HMainScreenView_Previews: PreviewProvider {
    static var previews: some View {
        MainScreenView()
    }
}
