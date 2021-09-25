import 'package:flutter/material.dart';

import '../theme.dart';

class StreamCard extends StatelessWidget {
  final String imageUrl;
  final String imageProfileUrl;
  final Color userBackground;
  final String name;
  final String categoryStream;

  StreamCard({
    this.imageUrl,
    this.imageProfileUrl,
    this.userBackground,
    this.name,
    this.categoryStream,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 242,
      width: 260,
      margin: EdgeInsets.only(right: 20),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 180,
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'assets/images/$imageUrl',
                    width: double.infinity,
                    height: double.infinity,
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: whiteColor.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Center(
                      child: Image.asset(
                        'assets/icons/play1.png',
                        width: 20,
                        height: 20,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: userBackground,
                  borderRadius: BorderRadius.circular(25),
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/$imageProfileUrl',
                    ),
                    alignment: Alignment.bottomCenter,
                  ),
                ),
              ),
              SizedBox(
                width: 12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: regularTextStyle.copyWith(
                      fontSize: 16,
                      color: whiteColor,
                    ),
                  ),
                  Text(
                    categoryStream,
                    style: lightTextStyle.copyWith(
                      fontSize: 12,
                      color: greyColor,
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
