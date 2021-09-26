import 'package:flutter/material.dart';
import 'package:game_stream_app/theme.dart';

class Detailpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/video.png',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                stops: [0.1, 0.6],
                colors: [
                  backgroundColor.withOpacity(.6),
                  backgroundColor.withOpacity(.1),
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                stops: [0.1, 0.6],
                colors: [
                  backgroundColor.withOpacity(.6),
                  backgroundColor.withOpacity(.1),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 24,
                        width: 24,
                        decoration: BoxDecoration(
                          color: whiteColor,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          Icons.chevron_left,
                          color: backgroundColor,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'NFS Heat Patrol',
                          style: mediumTextStyle.copyWith(
                            fontSize: 22,
                            color: whiteColor,
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          'by Masayoshi',
                          style: lightTextStyle.copyWith(
                              fontSize: 16, color: whiteColor.withOpacity(0.8)),
                        ),
                      ],
                    ),
                    Container(
                      height: 30,
                      width: 60,
                      decoration: BoxDecoration(
                        color: liveColor,
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Center(
                        child: Text(
                          'LIVE',
                          style: mediumTextStyle.copyWith(
                            fontSize: 16,
                            color: whiteColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Text.rich(TextSpan(
                  text: 'raldo : ',
                  style:
                      mediumTextStyle.copyWith(fontSize: 18, color: whiteColor),
                  children: [
                    TextSpan(
                      text: 'body kit itu jual dmn?',
                      style: lightTextStyle.copyWith(
                        fontSize: 18,
                        color: whiteColor.withOpacity(0.8),
                      ),
                    )
                  ],
                )),
                SizedBox(
                  height: 6,
                ),
                Text.rich(TextSpan(
                  text: 'danny : ',
                  style:
                      mediumTextStyle.copyWith(fontSize: 18, color: whiteColor),
                  children: [
                    TextSpan(
                      text: 'bintang 5 cuy',
                      style: lightTextStyle.copyWith(
                        fontSize: 18,
                        color: whiteColor.withOpacity(0.8),
                      ),
                    )
                  ],
                )),
                SizedBox(
                  height: 6,
                ),
                Text.rich(TextSpan(
                  text: 'anggars : ',
                  style:
                      mediumTextStyle.copyWith(fontSize: 18, color: whiteColor),
                  children: [
                    TextSpan(
                      text: 'wah itu sih goks!',
                      style: lightTextStyle.copyWith(
                        fontSize: 18,
                        color: whiteColor.withOpacity(0.8),
                      ),
                    )
                  ],
                )),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 45,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: whiteColor.withOpacity(0.8),
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text(
                        'Say something about streamer',
                        style: lightTextStyle.copyWith(
                          fontSize: 14,
                          color: whiteColor.withOpacity(0.8),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
