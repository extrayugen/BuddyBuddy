import SwiftUI

struct BuddyLogoModifier: ViewModifier {
    var width: CGFloat
    var height: CGFloat
    
    func body(content: Content) -> some View {
        content
            .scaledToFit()
            .frame(width: width, height: height)
            .padding()
    }
}
