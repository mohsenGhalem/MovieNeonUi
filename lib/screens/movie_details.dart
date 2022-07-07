import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movie_neon_app/components/masked_image.dart';
import 'package:movie_neon_app/constants.dart';
import 'package:movie_neon_app/models/movie.dart';

class MovieDetails extends StatelessWidget {
  const MovieDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final routeArg =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    final movieId = routeArg['id'];
    final nMovie = routeArg['New'];

    final double MovieRating = (nMovie
        ? newMovies[movieId].movieRating
        : upcomingMovies[movieId].movieRating) as double;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Constants.kBlackColor,
      body: SizedBox(
        height: screenHeight,
        width: screenWidth,
        child: Stack(
          children: [
            Positioned(
              child: Container(
                width: screenWidth,
                height: screenHeight * 0.5,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      alignment: Alignment.center,
                      image: AssetImage(nMovie
                          ? newMovies[movieId].moviePoster
                          : upcomingMovies[movieId].moviePoster)),
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.05,
              left: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 21.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Constants.kGreyColor,
                          shape: BoxShape.circle,
                          border: Border.all(
                              color: Constants.kWhiteColor, width: 3),
                        ),
                        child: InkWell(
                          onTap: (() => Navigator.of(context).pop()),
                          child: SvgPicture.asset(Constants.kIconBack),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Constants.kGreyColor,
                          shape: BoxShape.circle,
                          border: Border.all(
                              color: Constants.kWhiteColor, width: 3),
                        ),
                        child: InkWell(
                          child: SvgPicture.asset(Constants.kIconMenu),
                        ),
                      ),
                    ]),
              ),
            ),
            Positioned(
              top: screenHeight * 0.32,
              left: 0,
              right: 0,
              child: Container(
                padding: EdgeInsets.only(top: screenHeight * 0.1),
                height: screenHeight * 0.65,
                width: screenWidth,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      stops: [0, 0.15, 0.9],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent,
                        Constants.kBlackColor,
                        Constants.kBlackColor,
                      ]),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      nMovie
                          ? newMovies[movieId].movieName
                          : upcomingMovies[movieId].movieName,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Constants.kWhiteColor,
                          fontSize: 28),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      nMovie
                          ? "${newMovies[movieId].movieReleaseYear} ● ${newMovies[movieId].movieCategory} ● ${newMovies[movieId].movieDuration}"
                          : "${upcomingMovies[movieId].movieReleaseYear} ● ${upcomingMovies[movieId].movieCategory} ● ${upcomingMovies[movieId].movieDuration}",
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Constants.kGreyColor,
                          fontSize: 15),
                    ),
                    const SizedBox(height: 10),
                    RatingBarIndicator(
                      unratedColor: Constants.kGreyColor,
                      itemCount: 5,
                      itemSize: 25,
                      rating: MovieRating,
                      itemBuilder: ((context, _) => const Icon(
                            Icons.star,
                            color: Constants.kYellowColor,
                          )),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      width: screenWidth * 0.8,
                      child: Text(
                        nMovie
                            ? newMovies[movieId].movieSinopsis
                            : upcomingMovies[movieId].movieSinopsis,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Constants.kWhiteColor.withOpacity(0.8)),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Divider(
                      indent: 20,
                      endIndent: 20,
                      thickness: 2,
                      color: Constants.kGreyColor,
                    ),
                    const SizedBox(height: 10),
                    Container(
                      margin: const EdgeInsets.only(left: 12),
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        "Cast",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Constants.kWhiteColor,
                            fontSize: 28),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CastM(screenWidth, nMovie, movieId, 0),
                        CastM(screenWidth, nMovie, movieId, 1),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CastM(screenWidth, nMovie, movieId, 2),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //Play Button
            Positioned(
              left: screenWidth * 0.8,
              top: screenHeight * 0.30,
              child: newMethod(),
            ),
          ],
        ),
      ),
    );
  }

  Stack CastM(double screenWidth, nMovie, movieId, int index) {
    return Stack(
      alignment: Alignment.centerLeft,
      children: [
        Container(
          padding: const EdgeInsets.all(2.0),
          height: 50,
          width: screenWidth * 0.45,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Constants.kWhiteColor.withOpacity(0.7),
                    Constants.kGreyColor,
                    Constants.kGreyColor.withOpacity(0.2),
                  ]),
              borderRadius: BorderRadius.circular(30)),
          child: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.only(left: 70),
            height: 45,
            width: screenWidth * 0.35,
            decoration: BoxDecoration(
                color: Constants.kGreyColor,
                borderRadius: BorderRadius.circular(30)),
            child: Text(
              nMovie
                  ? "${newMovies[movieId].movieCast[index]}"
                  : "${upcomingMovies[movieId].movieCast[index]}",
              style: const TextStyle(
                  color: Constants.kWhiteColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
          ),
        ),
        CircleAvatar(
          radius: 30,
          backgroundColor: Constants.kBlackColor,
          backgroundImage: NetworkImage(nMovie
              ? newMovies[movieId].actorPic[index]
              : upcomingMovies[movieId].actorPic[index]),
        )
      ],
    );
  }

//Button
  Stack newMethod() {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 70,
          height: 70,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(colors: [
              Constants.kPinkColor,
              Constants.kGreenColor,
            ]),
          ),
          child: null,
        ),
        Container(
          width: 65,
          height: 65,
          decoration: const BoxDecoration(
              shape: BoxShape.circle, color: Constants.kGreyColor),
          child: Container(
            alignment: Alignment.center,
            width: 65,
            height: 65,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(colors: [
                Constants.kPinkColor.withOpacity(0.2),
                Constants.kGreenColor.withOpacity(0.2),
              ]),
            ),
            child: SvgPicture.asset(
              Constants.kIconPlay,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
