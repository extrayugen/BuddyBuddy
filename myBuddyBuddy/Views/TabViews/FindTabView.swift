import SwiftUI

struct FindTabView: View {
    var body: some View { 
        ZStack() {
        Group {
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 124, height: 124)
                .background(
                    AsyncImage(url: URL(string: "https://via.placeholder.com/124x124"))
                )
                .offset(x: -125.50, y: 258)
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 124, height: 124)
                .background(
                    AsyncImage(url: URL(string: "https://via.placeholder.com/124x124"))
                )
                .offset(x: -125.50, y: 6)
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 124, height: 124)
                .background(
                    AsyncImage(url: URL(string: "https://via.placeholder.com/124x124"))
                )
                .offset(x: -125.50, y: 132)
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 124, height: 124)
                .background(
                    AsyncImage(url: URL(string: "https://via.placeholder.com/124x124"))
                )
                .offset(x: 0.50, y: 132)
                .offset(x: 0.50, y: 6)
            ZStack() {
                ZStack() {

                }
                .frame(width: 22.50, height: 22.50)
                .offset(x: -125.25, y: 5)
            }
            .frame(width: 375, height: 32.50)
            .offset(x: 1, y: -84.75)
            ZStack() {
                HStack(spacing: 10) {
                    Text("Follow")
                        .font(Font.custom("Open Sans", size: 14).weight(.bold))
                        .foregroundColor(.white)
                    
                }
                .padding(EdgeInsets(top: 6, leading: 52, bottom: 6, trailing: 52))
                .frame(width: 150, height: 30)
                .background(Color(red: 0.22, green: 0.60, blue: 0.95))
                .cornerRadius(4)
                .offset(x: -97.50, y: 0)
                HStack(spacing: 10) {
                    Text("Message")
                        .font(Font.custom("Open Sans", size: 14).weight(.bold))
                        .foregroundColor(.black)
                }
                .padding(EdgeInsets(top: 6, leading: 43, bottom: 6, trailing: 43))
                .frame(width: 150, height: 30)
                .background(.white)
                .cornerRadius(4)
                .overlay(
                    RoundedRectangle(cornerRadius: 4)
                        .inset(by: 0.75)
                        .stroke(Color(red: 0.85, green: 0.85, blue: 0.85), lineWidth: 0.75)
                )
                .offset(x: 60.50, y: 0)
                ZStack() {
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 30, height: 30)
                        .background(.white)
                        .cornerRadius(4)
                        .overlay(
                            RoundedRectangle(cornerRadius: 4)
                                .inset(by: 0.75)
                                .stroke(Color(red: 0.85, green: 0.85, blue: 0.85), lineWidth: 0.75)
                        )
                        .offset(x: 0, y: 0)
                }
                .frame(width: 30, height: 30)
                .offset(x: 157.50, y: 0)
            }
            .frame(width: 345, height: 30)
            .offset(x: -1, y: -127)
            ZStack() {
                Text("spartacodingclub.kr")
                    .font(Font.custom("Open Sans", size: 14))
                    .foregroundColor(Color(red: 0.06, green: 0.27, blue: 0.49))
                    .offset(x: -112, y: 20)
                Text("iOS Developer 🍎")
                    .font(Font.custom("Open Sans", size: 14))
                    .foregroundColor(Color(red: 0.15, green: 0.15, blue: 0.15))
                    .offset(x: 0, y: 1)
                Text("르탄이")
                    .font(Font.custom("Open Sans", size: 14).weight(.bold))
                    .foregroundColor(Color(red: 0.15, green: 0.15, blue: 0.15))
                    .offset(x: -153.50, y: -20)
            }
            .frame(width: 345, height: 59)
            .offset(x: 0, y: -181.50)
        };Group {
            ZStack() {
                ZStack() {
                    Text("7")
                        .font(Font.custom("Open Sans", size: 16.50).weight(.bold))
                        .foregroundColor(.black)
                        .offset(x: 0, y: -9.50)
                    Text("post")
                        .font(Font.custom("Open Sans", size: 14))
                        .foregroundColor(.black)
                        .offset(x: 0, y: 11)
                }
                .frame(width: 28, height: 41)
                .offset(x: -88, y: 0)
                ZStack() {
                    Text("0")
                        .font(Font.custom("Open Sans", size: 16.50).weight(.bold))
                        .foregroundColor(.black)
                        .offset(x: -1.50, y: -9.50)
                    Text("follower")
                        .font(Font.custom("Open Sans", size: 14))
                        .foregroundColor(.black)
                        .offset(x: 0, y: 11)
                }
                .frame(width: 51, height: 41)
                .offset(x: -6.50, y: 0)
                ZStack() {
                    Text("0")
                        .font(Font.custom("Open Sans", size: 16.50).weight(.bold))
                        .foregroundColor(.black)
                        .offset(x: 0.50, y: -9.50)
                    Text("following")
                        .font(Font.custom("Open Sans", size: 14))
                        .foregroundColor(.black)
                        .offset(x: 0, y: 11)
                }
                .frame(width: 57, height: 41)
                .offset(x: 73.50, y: 0)
            }
            .frame(width: 204, height: 41)
            .offset(x: 57.50, y: -269.50)
            Ellipse()
                .foregroundColor(.clear)
                .frame(width: 88, height: 88)
                .background(
                    AsyncImage(url: URL(string: "https://via.placeholder.com/88x88"))
                )
                .offset(x: -129.50, y: -269)
            ZStack() {

            }
            .frame(width: 21, height: 17.50)
            .offset(x: 161, y: -339.25)
            Text("nabaecamp")
                .font(Font.custom("Open Sans", size: 18).weight(.bold))
                .foregroundColor(.black)
                .offset(x: 0, y: -339.50)
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 375, height: 44)
                .offset(x: 0, y: -384)
            ZStack() {

            }
            .frame(width: 134, height: 34)
            .offset(x: 1.50, y: 389)
        }
    }
    .frame(width: 375, height: 812)
    .background(.white)    }
        
}

#Preview {
    FindTabView()
}
