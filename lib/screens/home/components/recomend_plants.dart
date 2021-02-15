import 'package:flutter/material.dart';
import 'package:plant_app_youtube/constants.dart';
import 'package:plant_app_youtube/screens/details/deatails_screen.dart';

class RecomendPlants extends StatelessWidget {
  const RecomendPlants({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecomendPlantCard(
            image: "assets/images/image_1.png",
            title: "Planta 1",
            country: "Brasil",
            price: 9879,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(),
                ),
              );
            },
          ),
          RecomendPlantCard(
            image: "assets/images/image_2.png",
            title: "Planta 2",
            country: "Brasil",
            price: 9879,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(),
                ),
              );
            },
          ),
          RecomendPlantCard(
            image: "assets/images/image_3.png",
            title: "Planta 3",
            country: "Brasil",
            price: 9879,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class RecomendPlantCard extends StatelessWidget {
  final Function press;
  final String image;
  final String title;
  final String country;
  final int price;

  const RecomendPlantCard({
    Key key,
    @required this.image,
    @required this.title,
    @required this.country,
    @required this.press,
    @required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width * 0.4,
      margin: EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding * 2.5,
      ),
      child: Column(
        children: [
          Image.asset(this.image),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23),
                  )
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        this.title?.toUpperCase(),
                        style: Theme.of(context).textTheme.button,
                      ),
                      Text(
                        this.country?.toUpperCase(),
                        style: TextStyle(
                          color: kPrimaryColor.withOpacity(0.5),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "R\$ ${this.price}",
                    style: Theme.of(context)
                        .textTheme
                        .button
                        .copyWith(color: kPrimaryColor),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
