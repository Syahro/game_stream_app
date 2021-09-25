import 'package:flutter/material.dart';

import '../theme.dart';

class CategoryCard extends StatelessWidget {
  final String imageUrl;
  final String title;

  CategoryCard({
    this.imageUrl,
    this.title,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20),
      height: 120,
      width: 100,
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/icons/$imageUrl',
            width: 40,
            height: 40,
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            title,
            style: regularTextStyle.copyWith(
              fontSize: 13,
              color: greyColor,
            ),
          ),
        ],
      ),
    );
  }
}
