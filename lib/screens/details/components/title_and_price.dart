import 'package:flutter/material.dart';
import 'package:plant_app_youtube/constants.dart';

class TitleAndPrice extends StatelessWidget {
  final String title;
  final String country;
  final double price;

  const TitleAndPrice({
    Key key,
    @required this.title,
    @required this.price,
    @required this.country,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                this.title,
                style: Theme.of(context).textTheme.headline4.copyWith(
                      color: ktextColor,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              Text(
                this.country,
                style: TextStyle(
                  fontSize: 20,
                  color: kPrimaryColor,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
          Text(
            'R\$ ${this.price}',
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(color: kPrimaryColor),
          ),
        ],
      ),
    );
  }
}
