import SwiftUI

struct AuthActionButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.headline)
            .fontWeight(.semibold)
            .foregroundStyle(.white)
            .frame(width: 352, height: 44)
            .background(.green)
            .clipShape(RoundedRectangle(cornerRadius: 8))
    }
}
