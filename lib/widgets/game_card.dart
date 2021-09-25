import 'package:flutter/material.dart';

class GameCard extends StatelessWidget {
  final String imageUrl;

  GameCard(this.imageUrl);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      width: 120,
      margin: EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
            image: AssetImage('assets/images/$imageUrl'), fit: BoxFit.cover),
      ),
    );
  }
}
