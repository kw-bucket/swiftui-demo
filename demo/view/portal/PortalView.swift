import SwiftUI

struct PortalView: View {
    var body: some View {
        NavigationStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }.navigationBarBackButtonHidden(true)
    }
}

struct PortalView_Previews: PreviewProvider {
    static var previews: some View {
        PortalView()
    }
}
