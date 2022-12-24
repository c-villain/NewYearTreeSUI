import SwiftUI
import SpriteKit

struct ContentView: View {
    var body: some View {
        ZStack(alignment: .top) {
            
            SpriteView(scene: Snow(),
                       options: [.allowsTransparency])
            .zIndex(5)
            
            Group {

                Garland(frequency: 30, ballSize: 17)
                    .fill(.yellow)
                    .shadow(color: .black.opacity(0.5), radius: 5)
                    .frame(maxWidth: .infinity)
                    .frame(height: 100)
                    .rotationEffect(.degrees(30))
                
                Garland(frequency: 30, ballSize: 17)
                    .fill(.yellow)
                    .shadow(color: .black.opacity(0.5), radius: 5)
                    .frame(maxWidth: .infinity)
                    .frame(height: 100)
                    .rotationEffect(.degrees(-30))
            }
            .padding(.top, 40)
            .zIndex(4)

            Image("greetings")
                .resizable()
                .scaledToFit()
                .foregroundColor(.white.opacity(0.8))
                .shadow(color: .yellow.opacity(0.5), radius: 5)
                .padding(.horizontal, 32)
                .padding(.top, 90)
                .zIndex(3)
            
            Eve()
                .frame(maxHeight: .infinity)
                .zIndex(2)
            
            SpriteView(scene: Snow(),
                       options: [.allowsTransparency])
            .zIndex(1)
        }
        .background(Color.christmasRed.opacity(0.9))
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}


































