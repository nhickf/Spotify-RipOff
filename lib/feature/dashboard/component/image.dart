import 'package:flutter/material.dart';

class HomeImage extends StatelessWidget {
  final String? url;
  final double height = 150;
  final double width = 150;

  const HomeImage({
    super.key,
    required this.url,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    if (url != null && url?.isNotEmpty == true) {
      return Image.network(
        url!,
        height: height,
        width: width,
      );
    }
    return CircularProgressIndicator();
  }
}
