import SwiftUI

#Preview {
    ContentView()
}

struct ContentView: View {
    
    @State var isStarted = false

    var body: some View {
        VStack {
            Button(action: {
                withAnimation(.bouncy(duration: 0.3, extraBounce: 0.2)) {
                    isStarted = true
                } completion: {
                    isStarted = false
                }
            }) {
                HStack(spacing: 0) {
                    ZStack {
                        Image(systemName: "arrowtriangle.right.fill")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .scaleEffect(isStarted ? 1 : 0, anchor: .leading)
                            .opacity(isStarted ? 1 : 0)
                        
                        Image(systemName: "arrowtriangle.right.fill")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .offset(x: isStarted ? 50 : 0)
                    }

                    Image(systemName: "arrowtriangle.right.fill")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .scaleEffect(isStarted ? 0 : 1, anchor: .trailing)
                        .opacity(isStarted ? 0 : 1)
                }
            }
        }
    }
}
