import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Background()
                
                Text("Home")
                    .bold()
                    .foregroundColor(Color.gray)
            }
            .ignoresSafeArea(.all)
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            TabView {
                HomeView()
                    .tabItem {
                        Image(systemName: "house")
                            .renderingMode(.original)
                    }
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}
