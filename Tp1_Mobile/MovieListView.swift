import SwiftUI

struct MovieListView: View {
    var currentMovie = "Films"
    @State private var favoris: Set<String> = []
    
    var filteredMovies: [Movie] {
        if currentMovie == "Films" {
            return allMoviesData
        }
        
        return allMoviesData.filter { movie in
            movie.backdropPath.contains(currentMovie)
        }
    }
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            VStack {
                HeaderView()
            
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
                    .navigationBarTitleDisplayMode(.inline)
                    .toolbar {
                        ToolbarItem(placement: .navigationBarLeading) {
                            Text(currentMovie)
                                .font(.system(size: 42, weight: .bold))
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

struct MovieRowView: View {
    let movie: Movie
    let isFavorite: Bool
    
    private let formatDate: DateFormatter = {
        let format = DateFormatter()
        format.dateFormat = "yyyy-MM-dd"
        return format
    } ()
    
    private let outputFormatter: DateFormatter = {
        let format = DateFormatter()
        format.dateFormat = "MMMM d, yyyy"
        return format
    }()
    
    var formattedReleaserDate: String {
        if let date = formatDate.date(from: movie.releaseDate) {
    
            return outputFormatter.string(from: date)
    }
    return movie.releaseDate
}
    
    var body: some View {
        HStack(spacing: 15) {
            Image(movie.posterPath)
                .resizable()
                .scaledToFit()
                .frame(height: 250)
                .cornerRadius(8)
            
            VStack(alignment: .leading, spacing: 9) {
                Text(movie.title)
                    .font(.headline)
                    .lineLimit(1)
                    .foregroundColor(.white)
                
                HStack {
                    CircularProgressView(progress: movie.voteAverage / 10 )
                        .frame(height: 40)
                    
                    Text(formattedReleaserDate)
                        .font(.subheadline)
                        .foregroundColor(.white)
                }
                
                Text(movie.overview)
                    .font(.caption)
                    .lineLimit(3)
                    .foregroundColor(.gray)
            }
            
            Image(systemName: isFavorite ? "heart.fill" : "heart")
                .foregroundColor(isFavorite ? .red : .gray)
        }
        .padding(.vertical, 8)
    }
}



struct CircularProgressView: View {
    let progress: Double
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(lineWidth: 5.0)
                .opacity(0.3)
                .foregroundColor(Color.gray)
            
            Circle()
                .trim(from: 0.0, to: CGFloat(min(self.progress, 1.0)))
                .stroke(style: StrokeStyle(lineWidth: 5.0, lineCap: .round, lineJoin: .round))
                .foregroundColor(Color.yellow)
                .rotationEffect(Angle(degrees: 270.0))
                .animation(.linear, value: progress)
            
            Text("\(Int(round(progress * 100)))%")
                .font(.caption)
                .bold()
                .foregroundColor(.white)
        }
    }
}
                 

#Preview {
    MovieListView()
}
