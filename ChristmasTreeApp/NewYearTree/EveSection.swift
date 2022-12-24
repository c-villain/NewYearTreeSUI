import SwiftUI

struct StrokedEvePattern: Shape {
    func path(in rect: CGRect) -> Path {
        EvePattern()
            .path(in: rect)
            .strokedPath(StrokeStyle(lineWidth: CGFloat(3), lineCap: .round))
    }
}

struct EveSection: View {
    
    let color: Color
    let strokeColor: Color
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                EvePattern()
                    .frame(width: geometry.size.width, height: geometry.size.height)
                    .foregroundColor(color)
                    .zIndex(0)
                
                StrokedEvePattern()
                    .frame(width: geometry.size.width, height: geometry.size.height)
                    .foregroundColor(strokeColor)
                    .zIndex(1)
            }
        }
    }
}

struct EveSection_Previews: PreviewProvider {
    static var previews: some View {
        EveSection(color: .green.opacity(0.8), strokeColor: .black.opacity(0.7))
            .frame(width: 200, height: 150)
    }
}
