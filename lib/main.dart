import 'package:flutter/material.dart';
import 'package:game_stream_app/pages/home_page.dart';
import 'package:game_stream_app/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
