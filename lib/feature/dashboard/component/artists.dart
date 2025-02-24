import 'package:flutter/material.dart';
import 'package:spotify/data/model/artist.dart';
import 'package:spotify/feature/dashboard/component/image.dart';
import 'package:spotify/feature/dashboard/component/title.dart';

class Artists extends StatelessWidget {
  final List<Artist>? items;
  final Function(Artist artist) onItemOnClick;

  const Artists({super.key, required this.items, required this.onItemOnClick});

  @override
  Widget build(BuildContext context) {
    if (items != null) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ItemTitle(title: "Artists", showText: false, onPressed: () => {}),
          SizedBox(
              height: 150,
              child: _ArtistList(
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

class _ArtistList extends StatelessWidget {
  final List<Artist> items;
  final Function(Artist artist) onItemOnClick;

  const _ArtistList({required this.items, required this.onItemOnClick});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) {
          var item = items[index];
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: _ArtistItem(
              item: item,
              onPressed: () => {
                onItemOnClick(item),
              },
            ),
          );
        });
  }
}

class _ArtistItem extends StatelessWidget {
  final Artist item;
  final VoidCallback onPressed;

  const _ArtistItem({required this.item, required this.onPressed});

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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(child: HomeImage(url: item.image)),
              Text(
                item.name!,
                textAlign: TextAlign.start,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: Theme.of(context).textTheme.bodyMedium,
              )
            ],
          ),
        ));
  }
}
