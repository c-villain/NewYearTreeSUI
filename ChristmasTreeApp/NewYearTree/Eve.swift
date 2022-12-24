import SwiftUI
import Combine

struct Eve: View {
    
    @State private var girlandColorTop: Color = Color.Ball.pink
    @State private var girlandColorMiddle: Color = Color.Ball.cloud
    @State private var girlandColorBottom: Color = Color.Ball.yellow
    
    private let timer = Timer.publish(every: 1.0, on: .main, in: .common).autoconnect()
    
    var body: some View {
        ZStack {
            ZStack(alignment: .top) {
                Image(systemName: "star.fill")
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(.yellow)
                    .shadow(color: .black.opacity(0.5), radius: 5)
                    .frame(width: 60, height: 60)
                    .offset(y: -48)
                    .overlay {
                        Rectangle()
                            .fill(.yellow)
                            .frame(width: 150, height: 150)
                            .blur(radius: 90)
                    }
                    .zIndex(2)

                EveSection.init(color: Color.Eve.background, strokeColor: .black.opacity(0.7))
                    .shadow(color: .black.opacity(0.5), radius: 15)
                    .overlay {
                        Garland(frequency: 30, ballSize: 12)
                            .fill(girlandColorTop)
                            .shadow(color: .black.opacity(0.5), radius: 5)
                            .frame(width: 40, height: 20)
                            .rotationEffect(.degrees(30))
                    }
                    .zIndex(1)
            }
            .frame(width: 100, height: 80)
            
            .zIndex(6)
            
            EveSection.init(color: Color.Eve.background, strokeColor: .black.opacity(0.7))
                .frame(width: 150, height: 100)
                .offset(y: 50)
                .overlay {
                        ChristmasBall(color: Color.Ball.lightYellow, strokeColor: .orange)
                            .frame(width: 28, height: 28)
                            .shadow(color: .black.opacity(0.5), radius: 3)
                            .rotationEffect(.degrees(15))
                            .offset(x: -40, y: 60)
                }
                .shadow(color: .black.opacity(0.5), radius: 15)
                .zIndex(5)
            
            EveSection.init(color: Color.Eve.background, strokeColor: .black.opacity(0.7))
                .frame(width: 200, height: 150)
                .offset(y: 100)
                .overlay {
                    Group {
                        Garland(frequency: 25, ballSize: 12)
                            .fill(girlandColorMiddle)
                            .frame(width: 150, height: 40)
                            .shadow(color: .black.opacity(0.5), radius: 5)
                            .rotationEffect(.degrees(10))
                            .offset(y: 110)
                        
                        ChristmasBall(color: Color.Ball.pink, strokeColor: .black)
                            .frame(width: 31, height: 31)
                            .shadow(color: .black.opacity(0.5), radius: 3)
                            .rotationEffect(.degrees(-25))
                            .offset(x: 40, y: 100)
                    }
                }
                .shadow(color: .black.opacity(0.5), radius: 15)
                .zIndex(4)

            EveSection.init(color: Color.Eve.background, strokeColor: .black.opacity(0.7))
                .frame(width: 250, height: 200)
                .offset(y: 150)
                .overlay {
                    Group {
                        ChristmasBall(color: Color.Ball.yellow, strokeColor: .orange)
                                .frame(width: 28, height: 28)
                                .rotationEffect(.degrees(15))
                                .shadow(color: .black.opacity(0.5), radius: 3)
                                .offset(x: -80, y: 160)
                        
                        ChristmasBall(color: Color.Ball.green, strokeColor: .green)
                            .frame(width: 30, height: 30)
                            .shadow(color: .black.opacity(0.5), radius: 3)
                            .offset(x: 10, y: 170)
                        
                        ChristmasBall(color: Color.Ball.lightYellow, strokeColor: .orange)
                                .frame(width: 28, height: 28)
                                .shadow(color: .black.opacity(0.5), radius: 3)
                                .rotationEffect(.degrees(-30))
                                .offset(x: 80, y: 160)
                    }
                }
                .shadow(color: .black.opacity(0.5), radius: 15)
                .zIndex(3)

            EveSection.init(color: Color.Eve.background, strokeColor: .black.opacity(0.7))
                .frame(width: 300, height: 250)
                .offset(y: 200)
                .overlay {
                    Group {
                        Garland(frequency: 30, ballSize: 12)
                            .fill(girlandColorBottom)
                            .shadow(color: .black.opacity(0.5), radius: 5)
                            .frame(width: 200, height: 50)
                            .rotationEffect(.degrees(10))
                            .offset(y: 230)
                        
                        ChristmasBall(color: Color.Ball.cloud, strokeColor: .blue)
                            .frame(width: 33, height: 33)
                            .shadow(color: .black.opacity(0.5), radius: 3)
                            .rotationEffect(.degrees(20))
                            .offset(x: -50, y: 225)
                        
                        ChristmasBall(color: Color.Ball.pink, strokeColor: .black.opacity(0.7))
                                .frame(width: 32, height: 32)
                                .shadow(color: .black.opacity(0.5), radius: 3)
                                .rotationEffect(.degrees(-5))
                                .offset(x: 50, y: 230)
                    }
                }
                .shadow(color: .black.opacity(0.5), radius: 15)
                .zIndex(2)

            Trunk(color: .brown, strokeColor: .black)
                .frame(width: 30, height: 100)
                .cornerRadius(6)
                .offset(y: 250)
                .zIndex(1)
        }
        .onReceive(timer) { time in
            withAnimation(Animation.linear(duration: 0.3)) {
                girlandColorTop = Color.random()
                girlandColorMiddle = Color.random()
                girlandColorBottom = Color.random()
            }
        }
    }
}

struct Eve_Previews: PreviewProvider {
    static var previews: some View {
        Eve()
    }
}
