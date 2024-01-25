import SwiftUI

struct AuthFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
        .font(.subheadline)
        .padding(12)
        .frame(width: UIScreen.main.bounds.width * 0.8) // 화면 너비의 80%로 너비 설정
        .background(Color.white.opacity(0.8))
        .clipShape(RoundedRectangle(cornerRadius: 10))
//        .padding(.horizontal, 20)
}
}
