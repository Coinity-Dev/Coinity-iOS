import SwiftUI
import Feature

@main
struct CoinityApp: App {
    // @UIApplicationDelegateAdaptor를 사용하여 AppDelegate를 SwiftUI 라이프사이클에 연결
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            // SceneDelegate가 SplashView를 로드하므로 여기서는 아무 뷰도 반환하지 않아도 됩니다.
            // 하지만 SceneDelegate가 설정되지 않을 경우를 대비해 SplashView를 반환합니다.
            SplashView()
        }
    }
}

// MARK: - PreviewProvider
struct CoinityApp_Previews: PreviewProvider {
    static var previews: some View {
        // 앱 전체 프리뷰
        SplashView()
            .previewDisplayName("앱 시작 화면")
    }
} 