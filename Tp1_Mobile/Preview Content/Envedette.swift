import SwiftUICore
import SwiftUI

struct RandomPopularMoviesCarousel: View {
    @State private var currentIndex = 0;
    let movies: [Movie]
    init() {
        self.movies = popularMovie()
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            TabView(selection: $currentIndex) {
                ForEach(0..<movies.count, id: \.self) { index in
                    Image(movies[index].backdropPath)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 0.3)
                        .clipped()
                        .cornerRadius(20)
                        .padding(.horizontal, 10)
                        .tag(index)
                }
            }
            .frame(height: UIScreen.main.bounds.height * 0.3)
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
            .animation(.spring(response: 0.5, dampingFraction: 0.6, blendDuration: 0), value: currentIndex)
            .onAppear () {
                startAutoScroll()
            }
        }
    }
    
    func startAutoScroll() {
        Timer.scheduledTimer(withTimeInterval: 3.0, repeats: true) { timer in
            withAnimation {
                currentIndex = (currentIndex + 1) % movies.count
            }
        }
    }
}


struct Envedette: View {
    var currentMovie = "popularMoviesData"
    @State private var favoris: Set<String> = []
    
    var filteredMovies: [Movie] {
        if currentMovie == "popularMoviesData" {
            return popularMoviesData
        }
        
        return popularMoviesData.filter { movie in
            movie.backdropPath.contains(currentMovie)
        }
    }
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            VStack {
                HeaderView()
                RandomPopularMoviesCarousel();
                Text("Films")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                NavigationView {
                    List(filteredMovies) { movie in
                        NavigationLink(destination: MovieDetailView(movie: movie)) {
                            MovieRowView(movie: movie, isFavorite: favoris.contains(movie.title))
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
                    .navigationTitle("\(currentMovie)")
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
