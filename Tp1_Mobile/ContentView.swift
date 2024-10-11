import SwiftUI

struct ContentView: View {
    var body: some View {
    
            TabView {
                HomeView()
                    .tabItem {
                        Image(systemName: "star.fill")
                        Text("En vedette")
                    }
            
                MovieListView()
                    .tabItem {
                        Image(systemName: "film")
                        Text("Films")
                    }
                
                DiscoveryView()
                    .tabItem {
                        Image(systemName: "square.stack.fill")
                        Text("Découverte")
                    }
                
                Envedette()
                    .tabItem {
                        Image(systemName: "heart.fill")
                        Text("Favoris")
                    }
            }
            .accentColor(.yellow)
        }
    }

    


struct HomeView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color.black.ignoresSafeArea()
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(alignment: .leading, spacing: 20) {
                        HeaderView()
                        
                        RandomMoviesCarousel()
                        
                        SelectionCarrousel(title: "Les plus populaires", movies: popularMovie(), itemsPerPage: 3)
                        
                        SelectionCarrousel(title: "Arrive bientôt", movies: upCommingMovie(), itemsPerPage: 2)
                        
                    }
                }
            }
            .navigationBarHidden(true)
        }
    }
}

struct RandomMoviesCarousel: View {
    @State private var currentIndex = 0
    let movies = randomMovies()
    
    var body: some View {
        VStack(alignment: .leading) {
            TabView(selection: $currentIndex) {
                ForEach(0..<movies.count, id: \.self) { index in
                    NavigationLink(destination: MovieDetailView(movie: movies[index])) {
                        Image(movies[index].backdropPath)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 0.3)
                            .clipped()
                            .cornerRadius(20)
                            .padding(.horizontal, 10)
                            .overlay(
                                Color.black.opacity(0.2) 
                            )
                    }
                    .buttonStyle(PlainButtonStyle())
                    .tag(index)
                }
            }
            .frame(height: UIScreen.main.bounds.height * 0.3)
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
            .animation(.spring(response: 0.6, dampingFraction: 0.6, blendDuration: 0), value: currentIndex)
            .onAppear {
                startAutoScroll()
            }
        }
    }
    
    func startAutoScroll() {
        Timer.scheduledTimer(withTimeInterval: 5.0, repeats: true) { timer in
            withAnimation {
                currentIndex = (currentIndex + 1) % movies.count
            }
        }
    }
}



struct SelectionCarrousel: View {
    let title: String
    let movies: [Movie]
    let itemsPerPage: Int
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.title2)
                .bold()
                .foregroundColor(.white)
                .padding(.leading)
            
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack(spacing: 20) {
                    ForEach(0..<movies.count, id: \.self) { index in
                        if index % itemsPerPage == 0 {
                            HStack(spacing: 10) {
                                ForEach(0..<itemsPerPage, id: \.self) { offset in
                                    if index + offset < movies.count {
                                        MovieCard(movie: movies[index + offset])
                                    }
                                }
                            }
                        }
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}

struct MovieCard: View {
    let movie: Movie
    
    var body: some View {
        NavigationLink(destination: MovieDetailView(movie: movie)) {
            VStack {
                Image(movie.posterPath)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 140, height: 230)
                    .cornerRadius(8)
                    .clipped()
            }
        }
    }
}

func randomMovies() -> [Movie] {
    return Array(allMoviesData.shuffled().prefix(5))
}

func popularMovie() -> [Movie] {
    return popularMoviesData
}

func upCommingMovie() -> [Movie] {
    return upcomingMoviesData
}

#Preview {
    ContentView()
}
