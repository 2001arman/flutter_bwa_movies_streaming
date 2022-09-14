import 'package:bwa_movies_streaming/constanst.dart';
import 'package:flutter/material.dart';

class CardSmallMovies extends StatelessWidget {
  const CardSmallMovies(
      {Key? key,
      required this.imgUrl,
      required this.title,
      required this.description,
      required this.stars,
      required this.shadowColor})
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
      margin: const EdgeInsets.only(bottom: 30),
      child: Row(
        children: [
          Container(
            width: 100,
            height: 127,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imgUrl),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(21),
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0, 4),
                  spreadRadius: 0,
                  blurRadius: 5,
                  color: shadowColor,
                )
              ],
            ),
          ),
          const SizedBox(width: 20),
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
                style: greyTextStyle.copyWith(fontSize: 16),
              ),
              const SizedBox(height: 20),
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
