import SwiftUI

struct TextFontModifier: ViewModifier{
    func body(content: Content) -> some View {
        content
            .font(.custom("Jalnan2", size :20))
            .foregroundStyle(.white)
            .frame(width: 352, height: 44)
            .background(.green)
            .clipShape(RoundedRectangle(cornerRadius: 8))
    }
}
