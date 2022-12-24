import SwiftUI

struct Garland: Shape {

    let frequency: CGFloat
    let ballSize: CGFloat
    
    func path(in rect: CGRect) -> Path {
        Path { p in
            p.move(to: .init(x: rect.minX, y: rect.minY))
            p.addQuadCurve(to: .init(x: rect.maxX, y: rect.minY), control: .init(x: rect.midX, y: rect.maxY))
            p.move(to: .init(x: rect.maxX, y: rect.minY))
        }
        .strokedPath(StrokeStyle(lineWidth: ballSize, lineCap: .round, lineJoin: .round, dash: [1, frequency], dashPhase: 60.0))
    }
}

struct Garland_Previews: PreviewProvider {
    static var previews: some View {
        
        VStack {
            Garland(frequency: 20, ballSize: 12)
                .fill(.red)
                .frame(width: 200, height: 70)
            
            Garland(frequency: 30, ballSize: 12)
                .fill(.red)
                .frame(width: 200, height: 70)
            
            Garland(frequency: 50, ballSize: 12)
                .fill(.red)
                .frame(width: 200, height: 70)
        }
        
    }
}


