class Movie {
  Movie(
      {required this.movieName,
      required this.moviePoster,
      required this.movieReleaseYear,
      required this.movieCategory,
      required this.movieDuration,
      required this.movieRating,
      required this.movieSinopsis,
      required this.movieCast,
      required this.actorPic});
  String movieName;
  String moviePoster;
  String movieReleaseYear;
  String movieCategory;
  String movieDuration;
  double movieRating;
  String movieSinopsis;
  List<String> movieCast;
  List<String> actorPic;
}

var newMovies = [
  Movie(
    movieName: 'Spider-Man:\n No Way Home',
    moviePoster: 'assets/movie-posters/img-spiderman.jpg',
    movieReleaseYear: '2021',
    movieCategory: 'Action-Adventure-Fantasy',
    movieDuration: '2h 28m',
    movieRating: 4.7,
    movieSinopsis:
        'With Spider-Man\'s identity now revealed, Peter asks Doctor Strange for help. When a spell goes wrong, dangerous foes from other worlds start to appear, forcing Peter to discover what it truly means to be Spider-Man.',
    movieCast: ['Tom Holland', 'Zendaya', 'Benedict Cumberbatch'],
    actorPic: [
      "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3c/Tom_Holland_by_Gage_Skidmore.jpg/1200px-Tom_Holland_by_Gage_Skidmore.jpg",
      "https://media.glamour.com/photos/6261bc3b8a32675b71d86f5c/6:7/w_1889,h_2204,c_limit/1392677728",
      "https://cdn.britannica.com/05/187505-050-6BB9F835/Benedict-Cumberbatch-2014.jpg",
    ],
  ),
  Movie(
    movieName: 'The Matrix Resurrections',
    moviePoster: 'assets/movie-posters/img-matrix.jpg',
    movieReleaseYear: '2021',
    movieCategory: 'Action-Sci-Fi',
    movieDuration: '2h 28m',
    movieRating: 3.5,
    movieSinopsis:
        'Return to a world of two realities: one, everyday life; the other, what lies behind it. To find out if his reality is a construct, to truly know himself, Mr. Anderson will have to choose to follow the white rabbit once more.',
    movieCast: ['Keanu Reeves', 'Carrie-Anne Moss', 'Yahya Abdul-Mateen II'],
    actorPic: [
      "https://fr.web.img6.acsta.net/pictures/17/02/06/17/01/343859.jpg",
      "https://www.themoviedb.org/t/p/w500/xD4jTA3KmVp5Rq3aHcymL9DUGjD.jpg",
      "https://www.hollywoodreporter.com/wp-content/uploads/2021/11/GettyImages-1200429094-H-2021.jpg",
    ],
  ),
  Movie(
    movieName: 'Eternals',
    moviePoster: 'assets/movie-posters/img-eternals.jpg',
    movieReleaseYear: '2021',
    movieCategory: 'Action-Adventure-Fantasy',
    movieDuration: '2h 36m',
    movieRating: 4.2,
    movieSinopsis:
        'The saga of the Eternals, a race of immortal beings who lived on Earth and shaped its history and civilizations.',
    movieCast: ['Gemma Chan', 'Richard Madden', 'Angelina Jolie'],
    actorPic: [
      "https://m.media-amazon.com/images/M/MV5BYTI3ZDEwYjktZjVhYS00NTlhLTkwOWEtNjM1MzEyMWU5M2QyXkEyXkFqcGdeQXVyMTE3ODY2Nzk@._V1_.jpg",
      "https://images.mubicdn.net/images/cast_member/107717/cache-131549-1647797337/image-w856.jpg?size=800x",
      "https://upload.wikimedia.org/wikipedia/commons/thumb/a/ad/Angelina_Jolie_2_June_2014_%28cropped%29.jpg/640px-Angelina_Jolie_2_June_2014_%28cropped%29.jpg",
    ],
  ),
];

var upcomingMovies = [
  Movie(
    movieName: 'Aquaman',
    moviePoster: 'assets/movie-posters/img-aquaman.jpg',
    movieReleaseYear: '2018',
    movieCategory: 'Action-Adventure-Fantasy',
    movieDuration: '2h 23m',
    movieRating: 4.3,
    movieSinopsis:
        'Arthur Curry, the human-born heir to the underwater kingdom of Atlantis, goes on a quest to prevent a war between the worlds of ocean and land.',
    movieCast: ['Jason Momoa', 'Amber Heard', 'Willem Dafoe'],
    actorPic: [
      "https://media.glamourmagazine.co.uk/photos/62430fb07aaa43a54c33feea/4:3/w_1920,h_1440,c_limit/JASON%20MOMOA%20290322%20GettyImages-1239552417_SQ.jpg",
      "https://m.media-amazon.com/images/M/MV5BMjA4NDkyODA3M15BMl5BanBnXkFtZTgwMzUzMjYzNzM@._V1_.jpg",
      "https://www.cheatsheet.com/wp-content/uploads/2022/02/willem-dafoe-real-name.jpg",
    ],
  ),
  Movie(
    movieName: 'Batman',
    moviePoster: 'assets/movie-posters/img-batman.jpg',
    movieReleaseYear: '2022',
    movieCategory: 'Action-Crime-Drama',
    movieDuration: '2h 56m',
    movieRating: 4.7,
    movieSinopsis:
        'When the Riddler, a sadistic serial killer, begins murdering key political figures in Gotham, Batman is forced to investigate the city\'s hidden corruption and question his family\'s involvement.',
    movieCast: ['Robert Pattinson', 'Zoë Kravitz', 'Jeffrey Wright'],
    actorPic: [
      "https://media.allure.com/photos/6204067e11279f1317ce0cd1/master/pass/Robert%20Pattinson%20at%20the%2011th%20Annual%20Governors%20Awards.jpg",
      "https://voi.img.pmdstatic.net/fit/http.3A.2F.2Fprd2-bone-image.2Es3-website-eu-west-1.2Eamazonaws.2Ecom.2Fprismamedia_people.2F2017.2F06.2F30.2F9094a4c6-e9a7-4fc8-9534-9c52607e0455.2Ejpeg/2048x1536/quality/80/zoe-kravitz.jpeg",
      "https://upload.wikimedia.org/wikipedia/commons/thumb/5/51/Jeffrey_Wright_by_Gage_Skidmore_3.jpg/1200px-Jeffrey_Wright_by_Gage_Skidmore_3.jpg",
    ],
  ),
  Movie(
    movieName: 'Sonic the Hedgehog 2',
    moviePoster: 'assets/movie-posters/img-sonic.jpg',
    movieReleaseYear: '2022',
    movieCategory: 'Animation-Action-Adventure',
    movieDuration: '2h 2m',
    movieRating: 4.5,
    movieSinopsis:
        'When the manic Dr Robotnik returns to Earth with a new ally, Knuckles the Echidna, Sonic and his new friend Tails is all that stands in their way.',
    movieCast: ['Ben Schwartz', 'Idris Elba', 'Colleen O\'Shaughnessey'],
    actorPic: [
      "https://www1.pictures.zimbio.com/gi/Screening+Panel+Discussion+Showtime+Hou+e+dPmdxdRbM2ix.jpg",
      "https://media.vanityfair.fr/photos/60d36e01054484c84ef3fc82/5:7/w_510,h_714,c_limit/vf_idris_main_6819.jpeg",
      "https://m.media-amazon.com/images/M/MV5BMjE2ODEzZDktYjUxNS00MjVhLTk2ZDMtYTY1ODE2NzRiOWE2XkEyXkFqcGdeQXVyMjIzNTk0NTY@._V1_.jpg",
    ],
  ),
];
