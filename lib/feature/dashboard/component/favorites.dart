import 'package:flutter/material.dart';
import 'package:spotify/feature/dashboard/component/image.dart';
import 'package:spotify/feature/dashboard/component/title.dart';

class Favorites extends StatelessWidget {
  const Favorites({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ItemTitle(title: "Favorites", showText: true, onPressed: () {}),
        SizedBox(height: 150, child: _ListFavorite())
      ],
    );
  }
}

class _ListFavorite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 8,
        itemBuilder: (_, index) {
          return Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: _FavoriteItem());
        });
  }
}

class _FavoriteItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: () {

      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(child: HomeImage(url: "https://picsum.photos/500/500")),
          Text(
            "Test",
            style: Theme.of(context).textTheme.bodyMedium,
          )
        ],
      ),
    );
  }
}
