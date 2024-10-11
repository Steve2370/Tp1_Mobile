import SwiftUI

struct MovieDetailView: View {
    let movie: Movie
    
    var genreNames: [String] {
        movie.genreIDS.compactMap { genresData[$0] }
    }
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
              
                Image(movie.backdropPath)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: geometry.size.width, height: geometry.size.height)
                    .clipped()
                    .overlay(Color.black.opacity(0.6))
                
                ScrollView {
                    VStack(alignment: .leading, spacing: 20) {
                        HStack(alignment: .top, spacing: 20) {
            
                            Image(movie.posterPath)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: geometry.size.width * 0.3)
                                .cornerRadius(10)
                                .shadow(radius: 10)
                            
                            Text(movie.title)
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity, alignment: .leading)
                        }
                        .padding(.top, 50)
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack {
                                ForEach(genreNames, id: \.self) { genre in
                                    Text(genre)
                                        .foregroundColor(.black)
                                        .padding(.horizontal, 10)
                                        .padding(.vertical, 5)
                                        .background(Color.yellow)
                                        .cornerRadius(5)
                                }
                            }
                        }
                        Text("Sommaire")
                            .font(.largeTitle)
                            .bold()
                            .foregroundColor(.white)
                        
                        HStack(alignment: .top, spacing: 20) {
                            VStack {
                                CircularProgressView(progress: movie.voteAverage / 10)
                                    .frame(width: 90, height: 90)
                            }
                            Text(movie.overview)
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity, alignment: .leading)
                        }
                    }
                    .padding()
                }
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct MovieDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetailView(movie: allMoviesData[0])
    }
}
