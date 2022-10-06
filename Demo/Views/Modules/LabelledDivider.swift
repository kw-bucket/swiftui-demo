import SwiftUI

struct LabelledDivider: View {
    
    let label: String
    var horizontalPadding: CGFloat = 5
    var color: Color = Color.gray
    
    var body: some View {
        HStack {
            line
            Text(label).foregroundColor(color).fontWeight(.light)
            line
        }
    }
    
    var line: some View {
        VStack {
            Divider().background(color)
        }
        .padding(horizontalPadding)
    }
}

struct LabelledDivider_Previews: PreviewProvider {
    static var previews: some View {
        LabelledDivider(label: "test")
    }
}
