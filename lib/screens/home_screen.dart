import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movie_neon_app/components/masked_image.dart';
import 'package:movie_neon_app/constants.dart';
import 'package:movie_neon_app/models/movie.dart';

import '../components/search_field_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Constants.kBlackColor,
      extendBody: true,
      body: SizedBox(
        width: screenWidth,
        height: screenHeight,
        child: Stack(
          children: [
            Positioned(
              top: -100,
              left: -100,
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Constants.kGreenColor.withOpacity(0.5)),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 200, sigmaY: 200),
                  child: Container(
                    height: 200,
                    width: 200,
                    color: Colors.transparent,
                  ),
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.4,
              right: -100,
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Constants.kPinkColor.withOpacity(0.5)),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 200, sigmaY: 200),
                  child: Container(
                    height: 200,
                    width: 200,
                    color: Colors.transparent,
                  ),
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.8,
              left: -100,
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Constants.kCyanColor.withOpacity(0.4)),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 100, sigmaY: 100),
                  child: Container(
                    height: 200,
                    width: 200,
                    color: Colors.transparent,
                  ),
                ),
              ),
            ),
            SafeArea(
                bottom: false,
                child: ListView(
                  primary: true,
                  children: [
                    const SizedBox(height: 24),
                    const Text(
                      'What would you\nlike to watch?',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Constants.kWhiteColor),
                    ),
                    const SizedBox(height: 15),
                    const SearchFieldWidget(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                    ),
                    const SizedBox(height: 24),
                    const Padding(
                      padding: EdgeInsets.only(left: 20.0, bottom: 10.0),
                      child: Text(
                        "New movies",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Constants.kWhiteColor),
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    SizedBox(
                      height: 160,
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: newMovies.length,
                        itemBuilder: (context, index) {
                          String mask;
                          if (index == 0) {
                            mask = Constants.kMaskFirstIndex;
                          } else if (index == newMovies.length - 1) {
                            mask = Constants.kMaskLastIndex;
                          } else {
                            mask = Constants.kMaskCenter;
                          }
                          return GestureDetector(
                            child: Container(
                              margin: EdgeInsets.only(
                                  left: index == 0 ? 20.0 : 0.0),
                              height: 160,
                              width: 142,
                              child: MaskedImage(
                                  asset: newMovies[index].moviePoster,
                                  mask: mask),
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 20.0, bottom: 10.0),
                      child: Text(
                        "Upcoming movies",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Constants.kWhiteColor),
                      ),
                    ),
                    const SizedBox(
                      height: 37.0,
                    ),
                    SizedBox(
                      height: 180,
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: upcomingMovies.length,
                        itemBuilder: (context, index) {
                          String mask;
                          if (index == 0) {
                            mask = Constants.kMaskFirstIndex;
                          } else if (index == upcomingMovies.length - 1) {
                            mask = Constants.kMaskLastIndex;
                          } else {
                            mask = Constants.kMaskCenter;
                          }
                          return GestureDetector(
                            child: Container(
                              alignment: Alignment.bottomCenter,
                              margin: EdgeInsets.only(
                                  left: index == 0 ? 20.0 : 0.0),
                              height: 180,
                              width: 142,
                              child: MaskedImage(
                                  asset: upcomingMovies[index].moviePoster,
                                  mask: mask),
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                  ],
                )),
          ],
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 64,
            height: 64,
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
            width: 58,
            height: 58,
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Constants.kGreyColor),
            child: Container(
              alignment: Alignment.center,
              width: 58,
              height: 58,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(colors: [
                  Constants.kPinkColor.withOpacity(0.2),
                  Constants.kGreenColor.withOpacity(0.2),
                ]),
              ),
              child: SvgPicture.asset(Constants.kIconPlus),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
        height: screenHeight * 0.1,
        color: Constants.kGreyColor.withOpacity(0.2),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(Constants.kIconHome),
            SvgPicture.asset(Constants.kIconPlayOnTv),
            SvgPicture.asset(Constants.kIconCategories),
            SvgPicture.asset(Constants.kIconDownload),
          ],
        ),
      ),
    );
  }
}
