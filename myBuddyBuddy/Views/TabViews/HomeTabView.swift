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
                            .font(.title2)
                            .fontWeight(.bold)
                            .padding(10.0)
                        
                        HStack() {
                            Spacer()
                            Image("Menu") // 25x25 크기의 사각형
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
                
                VStack {
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

                            }                                .padding(10)

                            
                        }
                        
                    VStack(alignment: .leading) {
                        Text("신진초 6-1 일짱 황주영")
                            .fontWeight(.bold)
                            .padding(.bottom, 1.0)
                        Text("음악口ざ○l    ㄴrㄹΓøłlnㅓ 허락㈛는 ")
//                            .fontWeight(.bold)
                        
                        Text("유일ㅎŁ ㅁト약○lLI까. ○lㄱㅓl  ズl금의 ㄴr⊂ト.   ")
//                            .fontWeight(.bold)
                    }
                    
                    // 일촌맺기 , 쪽지함
                    HStack{
                        Button(action: {}) {
                            Text("일촌맺기")
                                .font(Font.custom("Open Sans", size: 14).weight(.black))
                                .foregroundColor(.white)
                                .frame(width: 160, height: 30)
                                .background(
                                    ZStack {
                                        RoundedRectangle(cornerRadius: 8)
                                            .fill(Color.green.opacity(0.9))
                                        
                                        RoundedRectangle(cornerRadius: 8)
                                            .stroke(Color.green.opacity(0.8), lineWidth: 2)
                                    }
                                )
                        }
                        
                        Button(action: {}) {
                            Text("쪽지함")
                                .font(Font.custom("Open Sans", size: 14).weight(.heavy))
                                .foregroundColor(.black)
                                .padding(EdgeInsets(top: 6, leading: 43, bottom: 6, trailing: 43))
                                .frame(width: 160, height: 30)
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
                    .padding(10)
                    }
                        Divider()

                // Grid of items
                ScrollView {
                    LazyVGrid(columns: [GridItem(.adaptive(minimum: 100))], spacing: 16) {
                        ForEach(0..<12) { item in
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
    
        
//        Text("home")
//            .font(.largeTitle)
//            .fontWeight(.black)
//            .frame(width: 250.0, height: 250.0)
//            .background(.green.opacity(0.3))

//        Image("buddy_logo")
//        Image("buddy_ui")
//            .resizable()
//            .scaledToFit()


#Preview {
    HomeTabView()
}
