import SwiftUICore
import SwiftUI

struct Envedette: View {
    @State private var favoris: Set<String> = []
    
    var filteredMovies: [Movie] {
        allMoviesData.filter { $0.isFavorite }
    }
    
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            VStack {
                HeaderView()
        
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                NavigationView {
                    List(filteredMovies) { movie in
                        NavigationLink(destination: MovieDetailView(movie: movie)) {
                            MovieRowView(movie: movie, isFavorite: true)
                        }
                        .swipeActions {
                            Button {
                                toggleFavorite(for: movie)
                            } label: {
                                Label(favoris.contains(movie.title) ? "Remove from Favorites" : "Add to Favorites", systemImage: "heart")
                            }
                            .tint(.red)
                        }
                    }
                    .listStyle(PlainListStyle())
                    .background(Color.black)
                    .navigationBarTitleDisplayMode(.inline)
                    .toolbar {
                        ToolbarItem(placement: .navigationBarLeading) {
                            Text("Favoris")
                                .font(.system(size: 28, weight: .bold))
                                .foregroundColor(.white)
                        }
                    }
                }
            }
        }
    }
    
    private func toggleFavorite(for movie: Movie) {
        if favoris.contains(movie.title) {
            favoris.remove(movie.title)
        } else {
            favoris.insert(movie.title)
        }
    }
}

                 

#Preview {
    Envedette()
}
