
import SwiftUI

struct DiscoveryView: View {
    @State private var randomMovie: Movie
    
    init() {
        // Initialiser avec un film aléatoire
        _randomMovie = State(initialValue: DiscoveryView.getRandomMovie())
    }
    
    var body: some View {
        ZStack {
            GeometryReader { geometry in}
            // Fond d'écran du film
            Image(randomMovie.backdropPath)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
                .overlay(Color.black.opacity(0.3)) // Assombrir légèrement l'image pour une meilleure lisibilité
            
            VStack() {
                HeaderView()
                    .padding(.top)
                Spacer()
                // Titre du film
                Text(randomMovie.title)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding()
                      
                Spacer()
                // Bouton pour choisir un nouveau film aléatoire
                Button(action: {
                    withAnimation {
                        randomMovie = DiscoveryView.getRandomMovie()
                    }
                }) {
                    HStack {
                        Image(systemName: "shuffle")
                            .foregroundColor(.black)
                    Text("Film aléatoire")
                        .font(.headline)
                        .foregroundColor(.black)
                }
                        .padding()
                        .background(Color.yellow)
                        .cornerRadius(30)
                }
                .padding(.top, 20)
            }
            .padding()
        }
    }
    
    // Fonction statique pour obtenir un film aléatoire
    static func getRandomMovie() -> Movie {
        // Assurez-vous que allMoviesData est défini et contient vos films
        return allMoviesData.randomElement()!
    }
}

struct DiscoveryView_Previews: PreviewProvider {
    static var previews: some View {
        DiscoveryView()
    }
}
