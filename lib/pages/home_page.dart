import 'package:flutter/material.dart';
import 'package:game_stream_app/widgets/bottom_navbar.dart';
import 'package:game_stream_app/widgets/category_card.dart';
import 'package:game_stream_app/widgets/game_card.dart';
import 'package:game_stream_app/widgets/stream_card.dart';
import '../theme.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      bottomNavigationBar: BottomNavbar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: pinkColor,
        child: Icon(
          Icons.search,
          color: whiteColor,
          size: 32,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Learn From\nThe Real Master',
                    style:
                        boldTextStyle.copyWith(fontSize: 26, color: whiteColor),
                  ),
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: backgroundUserOne,
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                          image: AssetImage(
                            'assets/images/user.png',
                          ),
                          alignment: Alignment.bottomCenter),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 5,
                          right: 4,
                          child: Container(
                            width: 8,
                            height: 8,
                            decoration: BoxDecoration(
                              color: pinkColor,
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Categories',
                    style: regularTextStyle.copyWith(
                      fontSize: 16,
                      color: greyColor,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        CategoryCard(
                          imageUrl: 'sword.png',
                          title: 'Sword Art',
                        ),
                        CategoryCard(
                          imageUrl: 'shooter.png',
                          title: 'Shooter',
                        ),
                        CategoryCard(
                          imageUrl: 'strategy.png',
                          title: 'Strategy',
                        ),
                        SizedBox(
                          width: 4,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Featured Streamers',
                    style: regularTextStyle.copyWith(
                      fontSize: 16,
                      color: greyColor,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        StreamCard(
                          imageUrl: 'stream1.png',
                          imageProfileUrl: 'user1.png',
                          userBackground: backgroundUserTwo,
                          name: 'Masayoshi',
                          categoryStream: 'Spiderman',
                        ),
                        StreamCard(
                          imageUrl: 'stream2.png',
                          imageProfileUrl: 'user2.png',
                          userBackground: backgroundUserThree,
                          name: 'Tamara Sakki',
                          categoryStream: 'Fornite Pro',
                        ),
                        SizedBox(
                          width: 4,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Browse Game',
                    style: regularTextStyle.copyWith(
                      fontSize: 16,
                      color: greyColor,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        GameCard('game1.png'),
                        GameCard('game2.png'),
                        GameCard('game3.png'),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
