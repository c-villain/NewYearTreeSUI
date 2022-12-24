import SwiftUI

struct Trunk: View {
    
    let color: Color
    let strokeColor: Color
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                Rectangle()
                    .strokeBorder(strokeColor, lineWidth: 4)
                    .frame(width: geometry.size.width, height: geometry.size.height)
                    .zIndex(2)
                
                Rectangle()
                    .fill(color)
                    .frame(width: geometry.size.width, height: geometry.size.height)
                    .zIndex(1)
            }
        }
    }
}

struct Trunk_Previews: PreviewProvider {
    static var previews: some View {
        Trunk.init(color: .brown, strokeColor: .black)
            .frame(width: 30, height: 100)
    }
}
