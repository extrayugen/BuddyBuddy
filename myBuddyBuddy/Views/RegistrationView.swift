import SwiftUI

struct RegistrationView: View {
    @State private var password = ""
    @State private var fullName = ""
    @State private var userName = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            Spacer()
            
            Image("buddy_logo")
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
                    .foregroundStyle(.black)
                    .frame(maxWidth: .infinity, alignment: .trailing)
            }
            
            Button {
                
            } label: {
                Text("Sign Up")
                    .modifier(AuthActionButtonModifier())
            }
            
            Spacer()
            
            Divider()
            
            Button {
                dismiss()
            } label: {
                HStack(spacing: 3) {
                    Text("Already have an account?")
                    Text("Log In")
                        .fontWeight(.semibold)
                }
                .font(.footnote)
                .foregroundStyle(.black)
                .padding(.vertical, 16)
            }
        }
    }
}

#Preview {
    RegistrationView()
}
