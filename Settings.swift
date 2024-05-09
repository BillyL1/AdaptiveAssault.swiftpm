import SwiftUI
import AVFoundation

struct SettingsView: View {
    @State private var volume: Double = Double(AVAudioSession.sharedInstance().outputVolume) * 100
    
    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.gray.opacity(0.2))
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.gray, lineWidth: 2)
                    )
                VStack{
                    Text("Volume: \(Int(volume))")
                        .font(.title)
                        .bold()
                Slider(value: $volume, in: 0...100)
                    .padding()
                    .accentColor(Color(UIColor.lightGray))
                    .cornerRadius(10)
            }
            }
        }
    }
}
