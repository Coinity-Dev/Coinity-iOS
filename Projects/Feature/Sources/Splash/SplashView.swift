import SwiftUI

public struct SplashView: View {
    @State private var isActive = false
    
    public init() {}
    
    public var body: some View {
        VStack {
            if isActive {
                
            } else {
                VStack(spacing: 20) {
                    Text("Coinity")
                        .font(.system(size: 48, weight: .bold))
                        .foregroundColor(.blue)
                    
                    Image(systemName: "bitcoinsign.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                        .foregroundColor(.blue)
                    
                    Text("당신의 암호화폐 지갑")
                        .font(.title2)
                        .fontWeight(.medium)
                        .foregroundColor(.gray)
                }
            }
        }
        .onAppear {
            // 2초 후에 메인 화면으로 전환
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                withAnimation {
                    self.isActive = true
                }
            }
        }
    }
}

// MARK: - PreviewProvider
struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            // 일반 모드 프리뷰
            SplashView()
                .previewDevice("iPhone 15 Pro")
                .previewDisplayName("Splash - Light Mode")
            
//            // 다크 모드 프리뷰
//            SplashView()
//                .preferredColorScheme(.dark)
//                .previewDisplayName("Splash - Dark Mode")
//                
//            // 태블릿 프리뷰
//            SplashView()
//                .previewDevice("iPad Pro (11-inch) (3rd generation)")
//                .previewDisplayName("iPad Pro")
//                
//            // iPhone SE 프리뷰 (작은 화면)
//            SplashView()
//                .previewDevice("iPhone SE (3rd generation)")
//                .previewDisplayName("iPhone SE")
        }
    }
} 
