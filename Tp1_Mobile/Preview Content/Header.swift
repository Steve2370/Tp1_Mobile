import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack {
            Label("", systemImage: "popcorn")
                .foregroundColor(.yellow)
                .font(.largeTitle)
            Text("PopcornTIME")
                .font(.largeTitle)
                .bold()
                .foregroundColor(.yellow)
            Spacer()
            Image(systemName: "line.horizontal.3")
                .foregroundColor(.yellow)
                .font(.largeTitle)
        }
        .padding(.horizontal)
        .padding(.top, 10)
    }
}

struct ExtractedView: View {
    var body: some View {
        TabView {
            Text("En vedette")
                .tabItem {
                    Image(systemName: "star.fill")
                    Text("En vedette")
                }
            Text("Films")
                .tabItem {
                    Image(systemName: "film")
                    Text("Films")
                }
            
            Text("Découverte")
                .tabItem {
                    Image(systemName: "square.stack.fill")
                    Text("Découverte")
                }
            
            Text("Favoris")
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Favoris")
                }
        }
        .accentColor(.yellow)
    }
}

#Preview {
    HeaderView()
}

#Preview {
    ExtractedView()
}
