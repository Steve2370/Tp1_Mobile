import Foundation

struct Movie: Identifiable {
    let id: Int
    let title: String
    let originalTitle: String
    let overview: String
    let releaseDate: String
    let posterPath: String
    let backdropPath: String
    let voteAverage: Double
    let voteCount: Int
    let genreIDS:[Int]
    let isFavorite: Bool
}
