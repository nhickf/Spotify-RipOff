import 'package:flutter/material.dart';

class HomeImage extends StatelessWidget {
  final String? url;
  final double height = 100;
  final double width = 100;

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
        fit: BoxFit.scaleDown,
      );
    }
    return CircularProgressIndicator();
  }
}
