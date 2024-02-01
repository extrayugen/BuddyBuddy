import SwiftUI


class UserViewModel: ObservableObject {
    @Published var user: User

    init(user: User) {
        self.user = user
    }

}
