import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:plant_app_youtube/constants.dart';
import 'package:plant_app_youtube/screens/home/components/featured_plants.dart';
import 'package:plant_app_youtube/screens/home/components/header_with_searchbox.dart';
import 'package:plant_app_youtube/screens/home/components/recomend_plants.dart';
import 'package:plant_app_youtube/screens/home/components/title_with_more_btn.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          TitlteWithMoreBtn(
            title: 'Recomendado',
            btnLabel: 'Mais',
            press: () {},
          ),
          RecomendPlants(),
          TitlteWithMoreBtn(
            title: 'Plantas em Destaque',
            btnLabel: 'Mais',
            press: () {},
          ),
          FeaturedPlants(),
          SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}
