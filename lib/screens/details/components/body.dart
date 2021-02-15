import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:plant_app_youtube/constants.dart';
import 'package:plant_app_youtube/screens/details/components/image_and_icons.dart';
import 'package:plant_app_youtube/screens/details/components/title_and_price.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          ImageAndIcons(),
          TitleAndPrice(
            title: 'Weverton',
            price: 987.78,
            country: 'Brasil',
          ),
          SizedBox(height: kDefaultPadding),
          Row(
            children: [
              SizedBox(
                width: size.width / 2,
                height: 70,
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                    ),
                  ),
                  color: kPrimaryColor,
                  child: Text(
                    'Comprar',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  onPressed: () {},
                ),
              ),
              Expanded(
                child: FlatButton(
                  child: Text(
                    'Descrição',
                    style: TextStyle(fontSize: 16),
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
          // SizedBox(height: kDefaultPadding * 2),
        ],
      ),
    );
  }
}
