import 'package:flutter/material.dart';

class SongListAppBar extends StatelessWidget {
  final String title;
  final String coverImage;

  const SongListAppBar({
    super.key,
    required this.title,
    required this.coverImage,
  });

  @override
  Widget build(BuildContext context) {
    return FlexibleSpaceBar(
      centerTitle: false,
      expandedTitleScale: 1.3,
      title: Text(
        title,
        overflow: TextOverflow.ellipsis,
        maxLines: 1,
        style: Theme
            .of(context)
            .textTheme
            .displayLarge,
      ),
      background: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              coverImage,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xff0c0c0c).withAlpha(150),
                Color(0xff0c0c0c).withAlpha(100)
              ],
              stops: [0.3, 1],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
        ),
      ),
    );
  }


}