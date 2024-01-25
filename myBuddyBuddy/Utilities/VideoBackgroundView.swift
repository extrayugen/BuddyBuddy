import SwiftUI
import AVKit

class VideoBackgroundViewModel: ObservableObject {
    var player: AVPlayer?
    
    init(videoName: String, videoType: String) {
        if let url = Bundle.main.url(forResource: videoName, withExtension: videoType) {
            let playerItem = AVPlayerItem(url: url)
            self.player = AVPlayer(playerItem: playerItem)
            self.player?.isMuted = true
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
                    self.playInfiniteLoop(player)
                }
                .onDisappear {
                    player.pause()
                }
                .edgesIgnoringSafeArea(.all)
                .allowsHitTesting(false) // 비디오가 터치 이벤트를 받을 수 없도록 설정
        } else {
            Text("비디오 로드 실패")
        }
    }
    
    private func playInfiniteLoop(_ player: AVPlayer) {
        NotificationCenter.default.addObserver(forName: .AVPlayerItemDidPlayToEndTime, object: player.currentItem, queue: .main) { _ in
            player.seek(to: .zero)
            player.play()
        }
        
        player.play()
    }
}
