    import SwiftUI



struct Level1View: View {
    @State var opacity: Double = 1.0
    @State var isIncreasing = true
    
    let timer = Timer.publish(every: 0.02, on: .main, in: .common).autoconnect()
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
                    Image(systemName: "building.columns")
                        .resizable()
                        .frame(width: 65, height: 65)
                        .foregroundColor(.white))
                .frame(width: 150, height: 150)
                .position(x: 880, y: 300)
                
            RoundedRectangle(cornerSize: CGSize(width: 20, height:20))
                .fill(Color.gray)
                .overlay(
                    Image(systemName: "building")
                        .resizable()
                        .frame(width: 65, height: 65)
                        .foregroundColor(.white))
                .frame(width: 150, height: 150)
                .position(x: 880, y: 500)
            RoundedRectangle(cornerSize: CGSize(width: 20, height:20))
                .fill(Color.gray)
                .overlay(
                    Image(systemName: "building.2")
                        .resizable()
                        .frame(width: 65, height: 65)
                        .foregroundColor(.white))
                .frame(width: 150, height: 150)
                .position(x: 880, y: 700)
            
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
                .position(x:250, y:200)
            
        }
    }
    
    
    
    
    struct Level1View_Previews: PreviewProvider {
        static var previews: some View {
            Level1View()
        }
    }
}
