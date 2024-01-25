import SwiftUI
import AVKit

class VideoBackgroundViewModel: ObservableObject {
    @Published var isReversed = false
    var player: AVQueuePlayer?
    var playerLooper: AVPlayerLooper?

    init(videoName: String, videoType: String) {
        if let url = Bundle.main.url(forResource: videoName, withExtension: videoType) {
            let playerItem = AVPlayerItem(url: url)
            let playerQueue = AVQueuePlayer(items: [playerItem])
            self.player = playerQueue
            self.playerLooper = AVPlayerLooper(player: playerQueue, templateItem: playerItem)
            self.player?.isMuted = true

            NotificationCenter.default.addObserver(
                forName: .AVPlayerItemDidPlayToEndTime,
                object: playerItem,
                queue: .main) { _ in
                    if let player = self.player {
                        if self.isReversed == false {
                            player.rate = -1.0 // 역방향 재생
                            self.isReversed = true
                        } else {
                            player.rate = 1.0 // 정방향 재생
                            self.isReversed = false
                        }
                    }
                }
        }
    }
}

struct VideoBackgroundView: View {
    @ObservedObject private var viewModel: VideoBackgroundViewModel

    init(videoName: String, videoType: String) {
        self.viewModel = VideoBackgroundViewModel(videoName: videoName, videoType: videoType)
    }

    var body: some View {
        if let player = viewModel.player {
            VideoPlayer(player: player)
                .onAppear {
                    print("VideoBackgroundView appeared")
                    player.play()
                }
                .onDisappear {
                    print("VideoBackgroundView disappeared")
                    player.pause()
                }
                .edgesIgnoringSafeArea(.all)
                .onReceive(NotificationCenter.default.publisher(for: UIApplication.willResignActiveNotification)) { _ in
                    print("앱이 비활성화됩니다")
                }
                .onReceive(NotificationCenter.default.publisher(for: UIApplication.didBecomeActiveNotification)) { _ in
                    print("앱이 활성화됩니다")
                }
                .allowsHitTesting(true) // 비디오가 터치 이벤트를 받을 수 있도록 설정
        } else {
            // 비디오가 없는 경우 대체 뷰 표시
            Text("비디오 로드 실패")
        }
    }
}
