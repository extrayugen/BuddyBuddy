import SwiftUI

struct ProfileTabView: View {
    @ObservedObject var viewModel: ProfileViewModel

    var body: some View {
        VStack {
            Text("Profile")
                .font(.largeTitle)
                .fontWeight(.black)
                .frame(width: 250.0, height: 250.0)
                .background(Color.green.opacity(0.3))
            
            // 사용자 정보 표시
            Text("이름: \(viewModel.user?.name ?? "-")")
            Text("나이: \(viewModel.user?.age ?? 0)")
            
            // 데이터 수정 버튼
            Button("Update User Info") {
                viewModel.updateUser()
            }
        }
    }
}

#Preview {
    ProfileTabView(viewModel: ProfileViewModel())
}
