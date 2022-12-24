import SwiftUI

struct NeonStyle: ViewModifier {
    let color: Color

    func body(content: Content) -> some View {
        content
            .foregroundColor(color).brightness(0.3)
            .shadow(color: color, radius: 5, x: 0, y: 0)
    }
}

extension View {
    func neon(color: Color) -> some View {
        modifier(NeonStyle(color: color))
    }
}
