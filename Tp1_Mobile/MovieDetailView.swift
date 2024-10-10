import SwiftUI

struct MovieDetailView: View {
    let movie: Movie
    
    var body: some View {
        ScrollView {
            ZStack(alignment: .bottom) {
                Image(movie.posterPath)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: UIScreen.main.bounds.height * 0.7)
                    .clipped()
                    .overlay(
                        LinearGradient(
                            gradient: Gradient(colors: [.clear, .black.opacity(0.8)]),
                            startPoint: .top, endPoint: .bottom))
                
                
                VStack(alignment: .leading, spacing: 10) {
                    Text(movie.title)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    
                    HStack {
                        Text(movie.overview)
                        Spacer()

                    }
                    .font(.subheadline)
                    .foregroundColor(.white)
                    .padding(.top)
                }
                .padding()
                .background(Color.black.opacity(0.5))
            }
        }
        .edgesIgnoringSafeArea(.top)
    }
}
//            .scrollTargetLayout()
//            .scrollTargetBehavior(.viewAligned)
//            Spacer()
//            
//        }
//    }
//}

#Preview("Beetlejuice Beetlejuice") {
    MovieDetailView(movie: allMoviesData[0])
}
