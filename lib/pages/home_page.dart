import 'package:bwa_movies_streaming/constanst.dart';
import 'package:bwa_movies_streaming/pages/search_page.dart';
import 'package:bwa_movies_streaming/widgets/card_big_movies.dart';
import 'package:bwa_movies_streaming/widgets/card_small_movies.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget navbarSection() {
      return Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 29),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Moviez",
                  style: blueDarkTextStyle.copyWith(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  "Watch mush easier",
                  style: greyTextStyle.copyWith(fontSize: 16),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SearchPage(),
                  ),
                );
              },
              child: Icon(
                Icons.search,
                color: blueDarkColor,
                size: 30,
              ),
            ),
          ],
        ),
      );
    }

    Widget bigMoviesSection() {
      return SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              CardBigMovies(
                imgUrl: "assets/images_johnwick.png",
                title: "John Wick 4",
                description: "Action, Crime",
                stars: 5,
                shadowColor: const Color(0xFF5E38E5).withOpacity(0.2),
              ),
              CardBigMovies(
                imgUrl: "assets/images_bohemian.png",
                title: "Bohemian",
                description: "Documentary",
                stars: 3,
                shadowColor: const Color(0xFFFE7B02).withOpacity(0.2),
              ),
              const SizedBox(
                width: 24,
              ),
            ],
          ),
        ),
      );
    }

    Widget fromDisneySection() {
      return Container(
        margin: const EdgeInsets.only(top: 30, left: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "From Disney",
              style: blueDarkTextStyle.copyWith(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            CardSmallMovies(
              imgUrl: "assets/images_mulan.png",
              title: "Mulan Section",
              description: "History, War",
              stars: 3,
              shadowColor: const Color(0xFF169E9F).withOpacity(0.2),
            ),
            CardSmallMovies(
              imgUrl: "assets/images_beauty.png",
              title: "Beauty & Beast",
              description: "Sci-Fiction",
              stars: 5,
              shadowColor: const Color(0xFF174459).withOpacity(0.2),
            ),
            CardSmallMovies(
              imgUrl: "assets/images_the_dark2.png",
              title: "The Dark II",
              description: "Horror",
              stars: 4,
              shadowColor: const Color(0xFF169E9F).withOpacity(0.2),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            navbarSection(),
            bigMoviesSection(),
            fromDisneySection(),
          ],
        ),
      ),
    );
  }
}
