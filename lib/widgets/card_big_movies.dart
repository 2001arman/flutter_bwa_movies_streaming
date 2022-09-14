import 'package:bwa_movies_streaming/constanst.dart';
import 'package:flutter/material.dart';

class CardBigMovies extends StatelessWidget {
  const CardBigMovies(
      {Key? key,
      required this.imgUrl,
      required this.stars,
      required this.shadowColor,
      required this.title,
      required this.description})
      : super(key: key);

  final String imgUrl, title, description;
  final int stars;
  final Color shadowColor;

  @override
  Widget build(BuildContext context) {
    final starsIcon = <Widget>[];
    for (var i = 0; i < 5; i++) {
      starsIcon.add(
        Icon(Icons.star, color: i < stars ? yellowColor : greyColor),
      );
    }
    return Container(
      width: 300,
      margin: const EdgeInsets.only(left: 24),
      child: Column(
        children: [
          Container(
            width: 300,
            height: 200,
            margin: const EdgeInsets.only(bottom: 19),
            decoration: BoxDecoration(
              color: Colors.amber,
              image: DecorationImage(
                image: AssetImage(imgUrl),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(21),
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0, 8),
                  spreadRadius: 0,
                  blurRadius: 5,
                  color: shadowColor,
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: blueDarkTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    description,
                    style: blueDarkTextStyle.copyWith(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              Row(
                children: starsIcon,
              )
            ],
          ),
        ],
      ),
    );
  }
}
