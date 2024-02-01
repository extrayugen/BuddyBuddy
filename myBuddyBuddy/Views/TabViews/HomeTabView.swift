import SwiftUI

struct HomeTabView: View {
    var body: some View {
        VStack {
            HStack {
                Spacer()
                
                ZStack {
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 375, height: 44)
                    Text("nabaecamp")
                        .font(.custom("Jalnan2", size :20))
                        .fontWeight(.bold)
                        .padding(10.0)
                    
                    HStack() {
                        Spacer()
                        Image("Menu")
                            .frame(width: 25, height: 25)
                            .foregroundColor(.blue)
                            .padding(16)
                            .alignmentGuide(.trailing) {
                                _ in
                                -15
                            }
                    }
                }
            }
            HStack{
                // Profile image
                Circle()
                    .foregroundColor(.clear)
                    .frame(width: 110, height: 110)
                    .background(
                        Image("sc1-modified") // 에셋에 있는 이미지 파일명을 사용
                            .resizable()
                            .scaledToFill()
                    )
                    .aspectRatio(contentMode: .fit) // 이미지를 비율을 유지하며 원 모양으로 나타냄
                    .padding([.leading, .bottom, .trailing], 28)
                
                
                // User Info
                HStack {
                    VStack {
                        Text("12")
                            .fontWeight(.bold)
                        Text("글")
                    }
                    Spacer()
                    VStack {
                        Text("521")
                            .fontWeight(.bold)
                        Text("일촌")
                    }
                    Spacer()
                    
                    VStack {
                        Text("3442")
                            .fontWeight(.bold)
                        Text("방명록")
                    }
                    Spacer()
                    
                }
                .padding(.bottom, 35)
                
                
            }
            
            VStack(alignment: .leading) {
                Text("신진초 6-1 일짱 황주영")
                    .font(.custom("Pretendard-SemiBold", size :15))
                Text("음악만○l    ㄴrㄹΓ에ㅅㅓ 허락㈛는 ")
                    .font(.custom("Pretendard-SemiBold", size :15))
                Text("유일ㅎŁ ㅁト약이LI까,, 이게 ズl금의 ㄴrㄷㅏ,,           ")
                    .font(.custom("Pretendard-SemiBold", size :15))
                
            }
            
            // 일촌맺기 , 쪽지함
            HStack{
                Button(action: {}) {
                    Text("일촌 신청")
                        .font(.custom("Pretendard-SemiBold", size: 14).weight(.heavy))
                    
                        .foregroundColor(.white.opacity(2.0))
                        .frame(width: 150, height: 30)
                        .background(
                            ZStack {
                                RoundedRectangle(cornerRadius: 8)
                                    .fill(Color.green.opacity(0.9))
                                
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(Color.green.opacity(0.8), lineWidth: 2)
                            })
                    
                }
                
                Button(action: {}) {
                    Text("쪽지함")
                        .font(.custom("Pretendard-SemiBold", size: 14).weight(.heavy))
                        .foregroundColor(.black)
                        .padding(EdgeInsets(top: 6, leading: 43, bottom: 6, trailing: 43))
                        .frame(width: 150, height: 30)
                        .background(
                            ZStack {
                                RoundedRectangle(cornerRadius: 8)
                                    .fill(Color.white)
                                    .blendMode(.overlay)
                                
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(Color.green.opacity(0.8), lineWidth: 2)
                            }
                        )
                }
                
                
                Button(action: {}) {
                    Image("More")
                        .font(Font.custom("Open Sans", size: 14).weight(.bold))
                        .foregroundColor(.black)
                        .frame(width: 30, height: 30)
                        .background(Color.white)
                        .cornerRadius(4)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .inset(by: 0.75)
                                .stroke(Color(red: 0.85, green: 0.85, blue: 0.85), lineWidth: 0.75)
                        )
                }
            }
            Divider()
            
            // Grid of items
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 100))], spacing: 16) {
                    ForEach(0..<10) { item in
                        Rectangle()
                            .foregroundColor(.gray)
                            .aspectRatio(1, contentMode: .fit)
                    }
                }
                .padding()
            }
            Spacer()
            
        }
        
    }
}




#Preview {
    HomeTabView()
}
