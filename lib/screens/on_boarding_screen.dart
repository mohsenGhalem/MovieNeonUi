import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:movie_neon_app/components/custom_outline.dart';
import 'package:movie_neon_app/constants.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

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
          alignment: Alignment.center,
          children: [
            Positioned(
              top: screenHeight * 0.1,
              left: -88,
              child: Container(
                height: 166,
                width: 166,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Constants.kPinkColor.withOpacity(0.8)),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 200, sigmaY: 200),
                  child: Container(
                    height: 166,
                    width: 166,
                    color: Colors.transparent,
                  ),
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.3,
              right: -100,
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Constants.kGreenColor.withOpacity(0.8)),
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
            SafeArea(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: screenHeight * 0.07,
                ),
                CustomOutline(
                  strokeWidth: 4,
                  radius: screenWidth * 0.8,
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Constants.kPinkColor,
                        Constants.kPinkColor.withOpacity(0),
                        Constants.kGreenColor,
                        Constants.kGreenColor.withOpacity(0.1),
                      ],
                      stops: const [
                        0.2,
                        0.4,
                        0.6,
                        1
                      ]),
                  child: Container(

                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Constants.kPinkColor.withOpacity(0.2),
                              Constants.kPinkColor.withOpacity(0),
                              Constants.kGreenColor.withOpacity(0.2),
                              Constants.kGreenColor.withOpacity(0.2),
                            ],
                            stops: const [
                              0.2,
                              0.4,
                              0.6,
                              1
                            ]),
                        image:const DecorationImage(

                            alignment: Alignment.bottomLeft,
                            fit: BoxFit.cover,
                            image: AssetImage('assets/img-onboarding.png'))),
                  ),
                  width: screenWidth * 0.8,
                  height: screenWidth * 0.8,
                  padding: const EdgeInsets.all(4),
                ),
                SizedBox(
                  height: screenHeight * 0.09,
                ),
                Text(
                  'Watch movies in\nVirtual Reality',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: screenHeight <= 667 ? 18 : 34,
                      fontWeight: FontWeight.w700,
                      color: Constants.kWhiteColor.withOpacity(0.85)),
                ),
                SizedBox(
                  height: screenHeight * 0.035,
                ),
                Text(
                  'Download and watch offline\n wherever you are',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: screenHeight <= 667 ? 12 : 16,
                      fontWeight: FontWeight.w400,
                      color: Constants.kWhiteColor.withOpacity(0.70)),
                ),
                SizedBox(
                  height: screenHeight * 0.04,
                ),
                //Button
                CustomOutline(
                  strokeWidth: 3,
                  radius: screenWidth * 0.2,
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Constants.kPinkColor,
                        Constants.kPinkColor.withOpacity(0),
                        Constants.kGreenColor,
                        Constants.kGreenColor.withOpacity(0.1),
                      ],
                      stops: const [
                        0.2,
                        0.4,
                        0.6,
                        1
                      ]),

                  child: InkWell(
                    onTap: (){

                    },
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        shape: BoxShape.rectangle,
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Constants.kPinkColor.withOpacity(0.2),
                              Constants.kPinkColor.withOpacity(0),
                              Constants.kGreenColor.withOpacity(0.2),
                              Constants.kGreenColor.withOpacity(0.2),
                            ],
                            stops: const [
                              0.2,
                              0.4,
                              0.6,
                              1
                            ]),
                      ),
                      child: const Text(
                        'Sign up',
                        style: TextStyle(
                            color: Constants.kWhiteColor,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  width: 160,
                  height: 38,
                  padding: const EdgeInsets.all(3),
                ),
                const Spacer(),
                //Indicator
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(3, (index) => Container(
                    margin: const EdgeInsets.only(left: 5,right: 5),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: index==0? Constants.kWhiteColor :Constants.kGreyColor
                    ),
                    height: 8,
                    width: 8,
                  )),
                ),
                SizedBox(
                  height: screenHeight * 0.01,
                ),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
