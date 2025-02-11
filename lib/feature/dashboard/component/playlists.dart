

import 'package:flutter/material.dart';
import 'package:spotify/data/source/api_service/response/playlists.dart';
import 'package:spotify/feature/dashboard/component/image.dart';
import 'package:spotify/feature/dashboard/component/title.dart';

class CategoryPlayLists extends StatelessWidget {

  final PlayLists? playLists;
  final VoidCallback onShowAllClick;
  final VoidCallback onItemOnClick;


  const CategoryPlayLists({
    super.key,
    required this.playLists,
    required this.onItemOnClick,
    required this.onShowAllClick
  });

  @override
  Widget build(BuildContext context) {

     if (playLists != null) {
       return Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ItemTitle(title: playLists!.message!, onPressed: onShowAllClick),
            SizedBox(
                height: 150,
                child: _ListPlayList(
                  items: playLists!.playlist!.items!,
                  onPressed: onItemOnClick,
                ))
          ],
        ),
      );
    } else {
       return Text("No Play Lists");
     }
  }

}

class _ListPlayList extends StatelessWidget {
  final List<PlayListItem> items;
  final VoidCallback onPressed;

  const _ListPlayList({required this.items, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) {
          var item = items[index];
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: _PlayList(item: item, onPressed: onPressed),
          );
        });
  }
}

class _PlayList extends StatelessWidget {
  final PlayListItem item;
  final VoidCallback onPressed;

  const _PlayList({required this.item, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          HomeImage(url: item.images?.first.url),
          Text(item.name!),
          Text(item.description!)
        ],
      ),
    );
  }
}