import 'package:bwa_movies_streaming/constanst.dart';
import 'package:bwa_movies_streaming/widgets/card_small_movies.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();
    searchController.text = "The Dar";
    Widget inputSection() {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 11, horizontal: 22),
        child: TextFormField(
          controller: searchController,
          style: blueDarkTextStyle.copyWith(fontSize: 16),
          decoration: InputDecoration(
            icon: Icon(
              Icons.search,
              color: blueDarkColor,
              size: 30,
            ),
            border: InputBorder.none,
          ),
        ),
      );
    }

    Widget searchResultSection() {
      return Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(children: [
                TextSpan(
                  text: "Search Result ",
                  style: blueDarkTextStyle.copyWith(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: "(3)",
                  style: blueDarkTextStyle.copyWith(
                    fontSize: 20,
                  ),
                ),
              ]),
            ),
            Expanded(
              child: ListView(
                children: [
                  const SizedBox(height: 20),
                  CardSmallMovies(
                    imgUrl: "assets/images_the_dark2.png",
                    title: "The Dark II",
                    description: "Horror",
                    stars: 4,
                    shadowColor: const Color(0xFF169E9F).withOpacity(0.2),
                  ),
                  CardSmallMovies(
                    imgUrl: "assets/images_dark_knight.png",
                    title: "The Dark Knight",
                    description: "Heroes",
                    stars: 5,
                    shadowColor: const Color(0xFF0C76D3).withOpacity(0.2),
                  ),
                  CardSmallMovies(
                    imgUrl: "assets/images_tower.png",
                    title: "The Dark Tower",
                    description: "Action",
                    stars: 4,
                    shadowColor: const Color(0xFF394144).withOpacity(0.2),
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.only(top: 39, left: 24, right: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              inputSection(),
              searchResultSection(),
            ],
          ),
        ),
      ),
    );
  }
}
