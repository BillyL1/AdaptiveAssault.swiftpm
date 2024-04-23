import SwiftUI



struct Level1View: View {
    var body: some View {
        ZStack{
            
            
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
        }
    }
}
struct Level1View_Previews: PreviewProvider {
    static var previews: some View {
    Level1View()
    }
}
