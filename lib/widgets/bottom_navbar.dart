import 'package:flutter/material.dart';
import 'package:game_stream_app/theme.dart';

class BottomNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 30),
      color: cardColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            'assets/icons/globe.png',
            width: 19,
            height: 19,
            color: whiteColor,
          ),
          Image.asset(
            'assets/icons/love.png',
            width: 19,
            height: 19,
          ),
          Container(),
          Image.asset(
            'assets/icons/play.png',
            width: 19,
            height: 19,
          ),
          Image.asset(
            'assets/icons/user.png',
            width: 19,
            height: 19,
          ),
        ],
      ),
    );
  }
}
