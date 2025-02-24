import 'package:flutter/material.dart';
import 'package:spotify/data/model/album.dart';
import 'package:spotify/feature/dashboard/component/image.dart';
import 'package:spotify/feature/dashboard/component/title.dart';

class Albums extends StatelessWidget {
  final List<Album>? items;
  final Function(Album album) onItemOnClick;

  const Albums({super.key, required this.items, required this.onItemOnClick});

  @override
  Widget build(BuildContext context) {
    if (items != null) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ItemTitle(title: "Albums", showText: false, onPressed: () => {}),
          SizedBox(
              height: 150,
              child: _AlbumList(
                items: items!,
                onItemOnClick: onItemOnClick,
              ))
        ],
      );
    } else {
      return Text("No albums");
    }
  }
}

class _AlbumList extends StatelessWidget {
  final List<Album> items;
  final Function(Album album) onItemOnClick;

  const _AlbumList({required this.items, required this.onItemOnClick});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) {
          var item = items[index];
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: _AlbumItem(
              item: item,
              onPressed: () => {
                onItemOnClick(item),
              },
            ),
          );
        });
  }
}

class _AlbumItem extends StatelessWidget {
  final Album item;
  final VoidCallback onPressed;

  const _AlbumItem({required this.item, required this.onPressed});

  @override
  Widget build(BuildContext context) {



    return GestureDetector(
      onTap: () {
        onPressed();
      },
      child: SizedBox(
        height: 100,
        width: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(child: HomeImage(url: item.image)),
            Text(
              item.label!,
              textAlign: TextAlign.start,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      )
    );
  }
}
