import 'package:flutter/material.dart';
import 'package:spotify/data/model/favorite.dart';
import 'package:spotify/feature/dashboard/component/image.dart';
import 'package:spotify/feature/dashboard/component/title.dart';

class Favorites extends StatelessWidget {
  final List<Favorite>? list;
  final VoidCallback onNavigateToFavoriteList;

  const Favorites(
      {super.key, required this.list, required this.onNavigateToFavoriteList});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    if (list != null && list!.isNotEmpty) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ItemTitle(
              title: "Favorites",
              showText: true,
              onPressed: onNavigateToFavoriteList),
          SizedBox(
              height: 150,
              child: _ListFavorite(
                list: list!,
              ))
        ],
      );
    } else {
      return SizedBox.shrink();
    }
  }
}

class _ListFavorite extends StatelessWidget {
  final List<Favorite> list;

  const _ListFavorite({required this.list});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: list.take(8).length,
        itemBuilder: (_, index) {
          final item = list[index];
          return Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: _FavoriteItem(favorite: item));
        });
  }
}

class _FavoriteItem extends StatelessWidget {
  final Favorite favorite;

  const _FavoriteItem({required this.favorite});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: SizedBox(
        height: 100,
        width: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child: HomeImage(url: favorite.imageUrl)),
            Text(
              favorite.name,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.bodyMedium,
            )
          ],
        ),
      ),
    );
  }
}
