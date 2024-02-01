import SwiftUI

class ProfileViewModel: ObservableObject {
    @Published var user: User?

    init() {
        // 초기 사용자 데이터 설정 (예: John Doe, 30세)
        user = User(name: "주영", age: 26)
    }

    // 사용자 정보 업데이트 메서드
    func updateUser() {
        user = User(name: "유진", age: 31)
    }
}
