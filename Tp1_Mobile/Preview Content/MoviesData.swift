import Foundation

// NOTE: Les données pour les films sont en anglais, car les "overview" étaient limités ou inexistants en français.
let allMoviesData = [
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
        id: 1_160_018,
        title: "Kill",
        originalTitle: "किल",
        overview:
            "When an army commando finds out his true love is engaged against her will, he boards a New Dehli-bound train in a daring quest to derail the arranged marriage. But when a gang of knife-wielding thieves begin to terrorize innocent passengers on his train, the commando takes them on himself in a death-defying kill-spree to save those around him — turning what should have been a typical commute into an adrenaline-fueled thrill ride.",
        releaseDate: "2024-07-03",
        posterPath: "m2zXTuNPkywdYLyWlVyJZW2QOJH",
        backdropPath: "okVLmXL5y18dfN2R4ufMZEGaeCd",
        voteAverage: 6.806,
        voteCount: 126,
        genreIDS: [28, 80],
        isFavorite: false
    ),
    Movie(
        id: 1_032_823,
        title: "Trap",
        originalTitle: "Trap",
        overview:
            "A father and teen daughter attend a pop concert, where they realize they\'re at the center of a dark and sinister event.",
        releaseDate: "2024-07-31",
        posterPath: "jwoaKYVqPgYemFpaANL941EF94R",
        backdropPath: "p5kpFS0P3lIwzwzHBOULQovNWyj",
        voteAverage: 6.525,
        voteCount: 981,
        genreIDS: [80, 53, 27, 9648],
        isFavorite: false
    ),
    Movie(
        id: 1_079_091,
        title: "It Ends with Us",
        originalTitle: "It Ends with Us",
        overview:
            "When a woman\'s first love suddenly reenters her life, her relationship with a charming, but abusive neurosurgeon is upended, and she realizes she must learn to rely on her own strength to make an impossible choice for her future.",
        releaseDate: "2024-08-07",
        posterPath: "4TzwDWpLmb9bWJjlN3iBUdvgarw",
        backdropPath: "9BQqngPfwpeAfK7c2H3cwIFWIVR",
        voteAverage: 6.728,
        voteCount: 278,
        genreIDS: [10749, 18],
        isFavorite: false
    ),
    Movie(
        id: 1_226_578,
        title: "Longlegs",
        originalTitle: "Longlegs",
        overview:
            "FBI Agent Lee Harker is assigned to an unsolved serial killer case that takes an unexpected turn, revealing evidence of the occult. Harker discovers a personal connection to the killer and must stop him before he strikes again.",
        releaseDate: "2024-05-31",
        posterPath: "5aj8vVGFwGVbQQs26ywhg4Zxk2L",
        backdropPath: "6ToGkmqn0KG0UGGGUAC1Ww0e5CM",
        voteAverage: 6.719,
        voteCount: 774,
        genreIDS: [80, 27, 53],
        isFavorite: false
    ),
    Movie(
        id: 1_130_053,
        title: "Cinderella\'s Curse",
        originalTitle: "Cinderella\'s Curse",
        overview:
            "Desperate Cinderella summons her fairy godmother from an ancient flesh-bound book, seeking revenge on her evil stepmother and stepsisters who abuse and torment her daily.",
        releaseDate: "2024-05-31",
        posterPath: "xegGyjYdCcF9X1FWpfw1O1LcFnZ",
        backdropPath: "orTQxcx2aoNpx1DIKTjBzpzvzd0",
        voteAverage: 4.6,
        voteCount: 19,
        genreIDS: [27, 14],
        isFavorite: false
    ),
    Movie(
        id: 826510,
        title: "Harold and the Purple Crayon",
        originalTitle: "Harold and the Purple Crayon",
        overview:
            "Inside of his book, adventurous Harold can make anything come to life simply by drawing it. After he grows up and draws himself off the book\'s pages and into the physical world, Harold finds he has a lot to learn about real life.",
        releaseDate: "2024-07-31",
        posterPath: "dEsuQOZwdaFAVL26RjgjwGl9j7m",
        backdropPath: "vJk9DOLgP23jO5mBnPHE93MFgYu",
        voteAverage: 6.956,
        voteCount: 103,
        genreIDS: [12, 10751, 14, 35],
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
        id: 1_051_891,
        title: "Thelma",
        originalTitle: "Thelma",
        overview:
            "When 93-year-old Thelma Post gets duped by a phone scammer pretending to be her grandson, she sets out on a treacherous quest across the city to reclaim what was taken from her.",
        releaseDate: "2024-06-21",
        posterPath: "rUcuageYgv9SsJoWuc0seRWG6JC",
        backdropPath: "wkPPRIducGfsbaUPsWfw0MCQdX7",
        voteAverage: 7.1,
        voteCount: 100,
        genreIDS: [28, 35, 12],
        isFavorite: false
    ),
    Movie(
        id: 804616,
        title: "Something in the Water",
        originalTitle: "Something in the Water",
        overview:
            "After lesbian couple Meg and Kayla split following a traumatic homophobic incident, their three friends are intent on mending the rift during the wedding of Lizzie at a paradise resort. But a pre-wedding boat excursion turns to disaster and the wedding breakfast is likely to be the five girls!",
        releaseDate: "2024-03-22",
        posterPath: "1iWGGxHEwswZGvPSoMZlLFf0PNq",
        backdropPath: "2XCmJWRZIQtHzikNsW29l9oy5Fb",
        voteAverage: 6.1,
        voteCount: 141,
        genreIDS: [53, 27],
        isFavorite: false
    ),
    Movie(
        id: 1_216_191,
        title: "Oddity",
        originalTitle: "Oddity",
        overview:
            "After the brutal murder of her twin sister, Darcy goes after those responsible by using haunted items as her tools for revenge.",
        releaseDate: "2024-07-19",
        posterPath: "uln9Efc2vzDOl0Fue2BPs8l1WO7",
        backdropPath: "6GhU4BJnqLSaAuz0yQBq3RfdzsF",
        voteAverage: 6.9,
        voteCount: 139,
        genreIDS: [27, 9648],
        isFavorite: false
    ),
    Movie(
        id: 1_225_377,
        title: "The Mouse Trap",
        originalTitle: "The Mouse Trap",
        overview:
            "It\'s Alex\'s 21st Birthday, but she\'s stuck at the amusement arcade on a late shift so her friends decide to surprise her, but a masked killer dressed as Mickey Mouse decides to play a game of his own with them which she must survive.",
        releaseDate: "2024-08-23",
        posterPath: "3ovFaFeojLFIl5ClqhtgYMDS8sE",
        backdropPath: "61yrVrkOH75fUtExDZ4Hi0KqOmc",
        voteAverage: 5.2,
        voteCount: 26,
        genreIDS: [27, 53, 35],
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
        id: 1_114_513,
        title: "Speak No Evil",
        originalTitle: "Speak No Evil",
        overview:
            "When an American family is invited to spend the weekend at the idyllic country estate of a charming British family they befriended on vacation, what begins as a dream holiday soon warps into a snarled psychological nightmare.",
        releaseDate: "2024-09-11",
        posterPath: "dA4N6uWOnEMgbxXwFX7qX7adzs8",
        backdropPath: "jnrLpUtOKelKhmGieEBcAvrsrFB",
        voteAverage: 6.3,
        voteCount: 10,
        genreIDS: [27, 53],
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
        id: 1_184_918,
        title: "The Wild Robot",
        originalTitle: "The Wild Robot",
        overview:
            "A robot — ROZZUM unit 7134, “Roz” for short — is shipwrecked on an uninhabited island and must learn to adapt to the harsh surroundings, gradually building relationships with the animals on the island and becoming the adoptive parent of an orphaned gosling.",
        releaseDate: "2024-09-12",
        posterPath: "vcZfDONCxoOU7mosZEnkhYujBEG",
        backdropPath: "62zw627mH74rng9zc4tFfaR54KW",
        voteAverage: 0.0,
        voteCount: 0,
        genreIDS: [16, 878, 10751],
        isFavorite: false
    ),
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

