import SwiftUI
import SpriteKit

class TimerData: ObservableObject {
    @Published var counter = 0
    
    init() {
        // Start a timer to increase the counter every second
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in
            self.counter += 1
       
        }
    }
}


struct Level1View: View {
    @State var opacity: Double = 1.0
    @State var isIncreasing = true
    @State var xpos:CGFloat = -390
    @State var ypos:CGFloat = -600
    
    var timer = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()
    @ObservedObject var timerData = TimerData()
    var body: some View {
        ZStack{
            
            //PATH 1
            Rectangle()
                .fill(Color.green)
                .frame(width: 10000, height: 10000)
                .position(x: 0, y: 0)
            
            Rectangle()
                .fill(Color.white)
                .frame(width: 100, height: 1200)
                .position(x: 100, y: 100)
            Rectangle()
                .fill(Color.white)
                .frame(width: 400, height: 100)
                .position(x: 250, y: 700)
            Rectangle()
                .fill(Color.white)
                .frame(width: 100, height: 500)
                .position(x: 400, y: 500)
            Rectangle()
                .fill(Color.white)
                .frame(width: 300, height: 100)
                .position(x: 500, y: 200)
            Rectangle()
                .fill(Color.white)
                .frame(width: 100, height: 1300)
                .position(x: 600, y: 800)
            
            //TOWERS 1
            RoundedRectangle(cornerSize: CGSize(width: 20, height:20))
                .fill(Color.gray)
                .overlay(
                    Image(systemName: "figure.hunting")
                        .resizable()
                        .frame(width: 65, height: 65)
                        .foregroundColor(.white))
                .frame(width: 150, height: 150)
                .position(x: 740, y: 300)
            
            RoundedRectangle(cornerSize: CGSize(width: 20, height:20))
                .fill(Color.gray)
                .overlay(
                    Image(systemName: "wand.and.stars")
                        .resizable()
                        .frame(width: 65, height: 65)
                        .foregroundColor(.white))
                .frame(width: 150, height: 150)
                .position(x: 740, y: 500)
            RoundedRectangle(cornerSize: CGSize(width: 20, height:20))
                .fill(Color.gray)
                .overlay(
                    Image(systemName: "pencil.tip")
                        .resizable()
                        .frame(width: 65, height: 65)
                        .foregroundColor(.white))
                .frame(width: 150, height: 150)
                .position(x: 740, y: 700)
            
            //Tower Placement
            Circle()
            
                .stroke(Color.yellow, lineWidth: 10)
                .opacity(opacity)
                .onReceive(timer) { _ in
                    if self.isIncreasing {
                        self.opacity += 0.02
                    } else {
                        self.opacity -= 0.02
                    }
                    
                    if self.opacity >= 1.0 {
                        self.isIncreasing = false
                    } else if self.opacity <= 0.2 {
                        self.isIncreasing = true
                    }
                }
                .frame(width: 80)
                .position(x:500, y:50)
            Circle()
            
                .stroke(Color.yellow, lineWidth: 10)
                .opacity(opacity)
                .onReceive(timer) { _ in
                    if self.isIncreasing {
                        self.opacity += 0.02
                    } else {
                        self.opacity -= 0.02
                    }
                    
                    if self.opacity >= 1.0 {
                        self.isIncreasing = false
                    } else if self.opacity <= 0.2 {
                        self.isIncreasing = true
                    }
                }
                .frame(width: 80)
                .position(x:500, y:550)
            Circle()
            
                .stroke(Color.yellow, lineWidth: 10)
                .opacity(opacity)
                .onReceive(timer) { _ in
                    if self.isIncreasing {
                        self.opacity += 0.02
                    } else {
                        self.opacity -= 0.02
                    }
                    
                    if self.opacity >= 1.0 {
                        self.isIncreasing = false
                    } else if self.opacity <= 0.2 {
                        self.isIncreasing = true
                    }
                }
                .frame(width: 80)
                .position(x:500, y:350)
            Circle()
            
                .stroke(Color.yellow, lineWidth: 10)
                .opacity(opacity)
                .onReceive(timer) { _ in
                    if self.isIncreasing {
                        self.opacity += 0.02
                    } else {
                        self.opacity -= 0.02
                    }
                    
                    if self.opacity >= 1.0 {
                        self.isIncreasing = false
                    } else if self.opacity <= 0.2 {
                        self.isIncreasing = true
                    }
                }
                .frame(width: 80)
                .position(x:400, y:850)
            Circle()
            
                .stroke(Color.yellow, lineWidth: 10)
                .opacity(opacity)
                .onReceive(timer) { _ in
                    if self.isIncreasing {
                        self.opacity += 0.02
                    } else {
                        self.opacity -= 0.02
                    }
                    
                    if self.opacity >= 1.0 {
                        self.isIncreasing = false
                    } else if self.opacity <= 0.2 {
                        self.isIncreasing = true
                    }
                }
                .frame(width: 80)
                .position(x:250, y:150)
            Circle()
            
                .stroke(Color.yellow, lineWidth: 10)
                .opacity(opacity)
                .onReceive(timer) { _ in
                    if self.isIncreasing {
                        self.opacity += 0.02
                    } else {
                        self.opacity -= 0.02
                    }
                    
                    if self.opacity >= 1.0 {
                        self.isIncreasing = false
                    } else if self.opacity <= 0.2 {
                        self.isIncreasing = true
                    }
                }
                .frame(width: 80)
                .position(x:250, y:550)
            Circle()
            
                .stroke(Color.yellow, lineWidth: 10)
                .opacity(opacity)
                .onReceive(timer) { _ in
                    if self.isIncreasing {
                        self.opacity += 0.02
                    } else {
                        self.opacity -= 0.02
                    }
                    
                    if self.opacity >= 1.0 {
                        self.isIncreasing = false
                    } else if self.opacity <= 0.2 {
                        self.isIncreasing = true
                    }
                }
                .frame(width: 80)
                .position(x:250, y:850)
            Circle()
            
                .stroke(Color.yellow, lineWidth: 10)
                .opacity(opacity)
                .onReceive(timer) { _ in
                    if self.isIncreasing {
                        self.opacity += 0.02
                    } else {
                        self.opacity -= 0.02
                    }
                    
                    if self.opacity >= 1.0 {
                        self.isIncreasing = false
                    } else if self.opacity <= 0.2 {
                        self.isIncreasing = true
                    }
                }
                .frame(width: 80)
                .position(x:100, y:850)
            Circle()
            
                .stroke(Color.yellow, lineWidth: 10)
                .opacity(opacity)
                .onReceive(timer) { _ in
                    if self.isIncreasing {
                        self.opacity += 0.02
                    } else {
                        self.opacity -= 0.02
                    }
                    
                    if self.opacity >= 1.0 {
                        self.isIncreasing = false
                    } else if self.opacity <= 0.2 {
                        self.isIncreasing = true
                    }
                }
                .frame(width: 80)
                .position(x:250, y:350)
            //Enemy
            Rectangle()
                .position(x: xpos, y: ypos)
                .frame(width: 50, height: 50)
                .onAppear {
                    Move()          
                }
            Circle()
                .position(x: xpos, y: ypos)
                .frame(width: 50, height: 50)
                .onAppear {
                    Move()
                }
            //            let spaceship = SKSpriteNode(imageNamed: "rocket.png")
            //            spaceship.position = CGPoint(x: 100, y: 100)
            //            self.addChild(spaceship)
            //            let move = SKAction.follow(path.cgPath, asOffset: true, orientToPath: true, speed: 200)
            //            node.run(move)
            
            //               let Path = UIBezierPath() 
            //                    path.move(to: CGPoint(x: 100, y: 0))
            //                path.addLine(to: CGPoint(x: 100, y:700))
            //                path.addLine(to: CGPoint(x: 400, y: 700))
            //                path.addLine(to: CGPoint(x: 400, y: 200))
            //                path.addLine(to: CGPoint(x: 600, y: 200))
            //                path.addLine(to: CGPoint(x: 600, y: 1000))
            //                
            
        }
    }
        
        
        func Move(){
            xpos = -305
            ypos = -410
            withAnimation(Animation.linear(duration: 16)) {
                ypos = 310
            }
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 16.4) {
                withAnimation(Animation.linear(duration: 6 + 2/3)) {
                    xpos = -5
                }
            }
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 22.3) {
                withAnimation(Animation.linear(duration: 11+1/9)) {
                    ypos = -190
                }
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 33.7) {
                withAnimation(Animation.linear(duration: 4+4/9)) {
                    xpos = 195
                }
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 38.3) {
                withAnimation(Animation.linear(duration: 13+7/9)) {
                    ypos = 430
                }
            }
            
        }
        
        
        
        struct Level1View_Previews: PreviewProvider {
            static var previews: some View {
                Level1View()
            }
        }
    }
    
