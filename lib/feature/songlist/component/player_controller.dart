import 'package:flutter/material.dart';

class PlayerController extends StatelessWidget {
  final String title;
  final String description;

  const PlayerController(
      {super.key, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        _PlayerHeader(
          title: title,
          description: description,
        ),
      ],
    );
  }
}

class _PlayerHeader extends StatelessWidget {
  final String title;
  final String description;

  const _PlayerHeader({required this.title, required this.description});


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.only(top: 16, left: 16, right: 16),
          child: Column(
            spacing: 8,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  "The most interesting tracks of ""$title"),
              Row(
                spacing: 8,
                children: [
                  Image.asset(
                    "assets/images/spotify.png",
                    height: 24,
                    width: 24,
                  ),
                  Text(description)
                ],
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.add_circle_outline)),
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_circle_down_outlined)),
                IconButton(onPressed: () {}, icon: Icon(Icons.share)),
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.more_vert_outlined)),
              ],
            ),
            Row(
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.shuffle)),
                IconButton(
                  onPressed: () {},
                  iconSize: 48,
                  icon: Icon(
                    Icons.play_circle_fill_outlined,
                    color: Color(0xff1ed760),
                  ),

                ),
              ],
            )
          ],
        )
      ],
    );
  }
}
