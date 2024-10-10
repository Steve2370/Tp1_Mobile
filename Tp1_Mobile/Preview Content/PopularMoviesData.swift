import Foundation

// NOTE: Les données pour les films sont en anglais, car les "overview" étaient limités ou inexistants en français.
let popularMoviesData = [
    Movie(
        id: 120,
        title: "The Lord of the Rings: The Fellowship of the Ring",
        originalTitle: "The Lord of the Rings: The Fellowship of the Ring",
        overview:
            "Young hobbit Frodo Baggins, after inheriting a mysterious ring from his uncle Bilbo, must leave his home in order to keep it from falling into the hands of its evil creator. Along the way, a fellowship is formed to protect the ringbearer and make sure that the ring arrives at its final destination: Mt. Doom, the only place where it can be destroyed.",
        releaseDate: "2001-12-18",
        posterPath: "6oom5QYQ2yQTMJIbnvbkBL9cHo6",
        backdropPath: "x2RS3uTcsJJ9IfjNPcgDmukoEcQ",
        voteAverage: 8.414,
        voteCount: 24834,
        genreIDS: [12, 14, 28],
        isFavorite: true
    ),
    Movie(
        id: 122,
        title: "The Lord of the Rings: The Return of the King",
        originalTitle: "The Lord of the Rings: The Return of the King",
        overview:
            "As armies mass for a final battle that will decide the fate of the world--and powerful, ancient forces of Light and Dark compete to determine the outcome--one member of the Fellowship of the Ring is revealed as the noble heir to the throne of the Kings of Men. Yet, the sole hope for triumph over evil lies with a brave hobbit, Frodo, who, accompanied by his loyal friend Sam and the hideous, wretched Gollum, ventures deep into the very dark heart of Mordor on his seemingly impossible quest to destroy the Ring of Power.​",
        releaseDate: "2003-12-17",
        posterPath: "rCzpDGLbOoPwLjy3OAm5NUPOTrC",
        backdropPath: "2u7zbn8EudG6kLlBzUYqP8RyFU4",
        voteAverage: 8.48,
        voteCount: 23903,
        genreIDS: [12, 14, 28],
        isFavorite: true
    ),
    Movie(
        id: 917496,
        title: "Beetlejuice Beetlejuice",
        originalTitle: "Beetlejuice Beetlejuice",
        overview:
            "After a family tragedy, three generations of the Deetz family return home to Winter River. Still haunted by Beetlejuice, Lydia\'s life is turned upside down when her teenage daughter, Astrid, accidentally opens the portal to the Afterlife.",
        releaseDate: "2024-09-04",
        posterPath: "kKgQzkUCnQmeTPkyIwHly2t6ZFI",
        backdropPath: "18wozP6NjPSNBSgCga5bN7yUSzl",
        voteAverage: 7.145,
        voteCount: 300,
        genreIDS: [35, 27, 14],
        isFavorite: false
    ),
    Movie(
        id: 588648,
        title: "Dragonkeeper",
        originalTitle: "Dragonkeeper",
        overview:
            "Set in Han Imperial China, the plot follows the adventures of enslaved girl Ping with ancient dragon Long Danzi. Dragons had been banished from the kingdom. Ping, an orphan, finds one of the last remaining dragon eggs. Palace guards force Ping to run away in order to return the dragon egg to the ocean and save all dragons from extinction. Ping discovers that she is a true Dragonkeeper.",
        releaseDate: "2024-04-11",
        posterPath: "ggZGnJLzO3BTu7ysuuIzou3Oex5",
        backdropPath: "h9YlRHAZWOWtGonllmj6JJg1FrE",
        voteAverage: 7.19,
        voteCount: 87,
        genreIDS: [28, 12, 16, 10751, 14],
        isFavorite: false
    ),
    Movie(
        id: 929590,
        title: "Civil War",
        originalTitle: "Civil War",
        overview:
            "In the near future, a group of war journalists attempt to survive while reporting the truth as the United States stands on the brink of civil war.",
        releaseDate: "2024-04-10",
        posterPath: "sh7Rg8Er3tFcN9BpKIPOMvALgZd",
        backdropPath: "z121dSTR7PY9KxKuvwiIFSYW8cf",
        voteAverage: 6.9,
        voteCount: 2342,
        genreIDS: [10752, 28, 18],
        isFavorite: false
    ),
    Movie(
        id: 698687,
        title: "Transformers One",
        originalTitle: "Transformers One",
        overview:
            "The untold origin story of Optimus Prime and Megatron, better known as sworn enemies, but once were friends bonded like brothers who changed the fate of Cybertron forever.",
        releaseDate: "2024-09-11",
        posterPath: "qbkAqmmEIZfrCO8ZQAuIuVMlWoV",
        backdropPath: "yNU8UF3DOmv3G9gVNAj34beclTG",
        voteAverage: 8.0,
        voteCount: 1,
        genreIDS: [16, 878, 12, 28, 10751],
        isFavorite: false
    ),
    Movie(
        id: 157336,
        title: "Interstellar",
        originalTitle: "Interstellar",
        overview:
            "The adventures of a group of explorers who make use of a newly discovered wormhole to surpass the limitations on human space travel and conquer the vast distances involved in an interstellar voyage.",
        releaseDate: "2014-11-05",
        posterPath: "gEU2QniE6E77NI6lCU6MxlNBvIx",
        backdropPath: "xJHokMbljvjADYdit5fK5VQsXEG",
        voteAverage: 8.44,
        voteCount: 35144,
        genreIDS: [12, 18, 878],
        isFavorite: true
    ),
    Movie(
        id: 889737,
        title: "Joker: Folie à Deux",
        originalTitle: "Joker: Folie à Deux",
        overview:
            "While struggling with his dual identity, Arthur Fleck not only stumbles upon true love, but also finds the music that\'s always been inside him.",
        releaseDate: "2024-09-30",
        posterPath: "byDXrm0pY6vSKIKyuKWK5vWz62G",
        backdropPath: "uGmYqxh8flqkudioyFtD7IJSHxK",
        voteAverage: 0.0,
        voteCount: 0,
        genreIDS: [18, 80, 53],
        isFavorite: false
    ),
]

