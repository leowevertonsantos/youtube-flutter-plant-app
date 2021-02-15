import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:plant_app_youtube/constants.dart';
import 'package:plant_app_youtube/screens/home/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PlantApp',
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        primaryColor: kPrimaryColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: ktextColor),
      ),
      home: HomeScreen(),
    );
  }
}
