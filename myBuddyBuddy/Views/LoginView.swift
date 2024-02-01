import SwiftUI
import AVKit

struct LoginView: View {
    @State private var userName = ""
    @State private var password = ""
    @State private var isAlarmPlaying = false
    @State private var alarmPlayer: AVPlayer?
    @State private var isActive = false


    
    var body: some View {
        NavigationStack {
                ZStack {
                    VideoBackgroundView(videoName: "Background_8s_Loop", videoType: "mp4")
                        .scaledToFill()
                    
                    VStack {
                        Spacer()
                        
                        Image("buddy_logo_title")
                            .resizable()
                            .modifier(BuddyLogoModifier(width: 350, height: 250))
                        
                        VStack {
                            SecureField("Enter your username", text: $userName)
                                .modifier(AuthFieldModifier())

                            SecureField("Enter your password", text: $password)
                                .modifier(AuthFieldModifier())
                            
                        }
                        
                        NavigationLink {
                            Text("Placeholder")
                        } label: {
                            Text("Forgot password?")
                                .font(.footnote)
                                .fontWeight(.semibold)
                                .padding(.vertical)
                                .padding(.trailing, 28)
                                .foregroundStyle(.green)
                                .frame(maxWidth: .infinity, alignment: .trailing)
                            
                        }
                        
                        NavigationLink(destination: MainTabView().navigationBarBackButtonHidden(), isActive: $isActive) {
                            EmptyView()
                        }

                        Button(action: {
                            playAlarmSound()
                            // 상태 변수를 통해 NavigationLink를 활성화
                            isActive = true
                        }) {
                            Text("Login")
                                .modifier(AuthActionButtonModifier())
                        }

                        
                        Spacer()
                        
                        Divider()
                        
                        NavigationLink {
                            RegistrationView()
                                .navigationBarBackButtonHidden()
                            
                        } label: {
                            HStack(spacing: 3) {
                                Text("Don't have an account?")
                                Text("Sign Up")
                                    .fontWeight(.bold)
                            }
                            .font(.callout)
                            .foregroundStyle(.green)
                            .padding(.vertical, 16)
                        }
                    }
                }
            }
        }
    
    // 알람 소리를 재생하는 함수
    private func playAlarmSound() {
        if alarmPlayer == nil, let url = Bundle.main.url(forResource: "buddy_login", withExtension: "mp3") {
            alarmPlayer = AVPlayer(url: url)
        }
        alarmPlayer?.play()
    }
}
    #Preview {
        LoginView()
    }
