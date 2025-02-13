import 'package:flutter/material.dart';
import 'package:spotify/data/model/album.dart';

class SongListScreen extends StatelessWidget {
  final Album album;

  const SongListScreen({super.key, required this.album});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: NestedScrollView(
      headerSliverBuilder: (context, innerBoxScrolled) {
        return [
          SliverAppBar(
            expandedHeight: 200,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
                centerTitle: false,
                title: Text(album.label!),
                background: Image.network(
                  album.image!,
                  fit: BoxFit.cover,
                )),
          ),

        ];
      },
      body: _SongListContainer(),
    ));
  }
}

class _SongListContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.only(top: 8),
      child: Text("body"),
    );
  }
}

