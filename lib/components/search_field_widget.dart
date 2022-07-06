import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movie_neon_app/constants.dart';

class SearchFieldWidget extends StatelessWidget {
  const SearchFieldWidget({required this.padding, Key? key}) : super(key: key);

  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Container(
        alignment: Alignment.center,
        height: 40,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: Constants.kGreyColor.withOpacity(0.7),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(width: 8),
            SvgPicture.asset(Constants.kIconSearch),
            const SizedBox(width: 8),
            Expanded(
              child: TextField(
                style: TextStyle(
                  color: Constants.kWhiteColor.withOpacity(0.6),
                  letterSpacing: -0.41,
                  fontSize: 17,
                ),
                decoration: InputDecoration(
                    hintText: "search",
                    border: InputBorder.none,
                    hintStyle: TextStyle(
                      color: Constants.kWhiteColor.withOpacity(0.6),
                      fontSize: 17,
                      letterSpacing: -0.41,
                    )),
              ),
            ),
            const SizedBox(width: 8),
            SvgPicture.asset(Constants.kIconMic),
            const SizedBox(width: 8),
          ],
        ),
      ),
    );
  }
}
