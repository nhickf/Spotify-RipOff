import 'package:flutter/material.dart';
import 'package:spotify/data/model/category.dart';
import 'package:spotify/feature/dashboard/component/image.dart';
import 'package:spotify/feature/dashboard/component/title.dart';

class Categories extends StatelessWidget {
  final VoidCallback onShowAllClick;
  final Function(String categoryId) onItemOnClick;

  final List<Category> items;

  const Categories({
    super.key,
    required this.items,
    required this.onItemOnClick,
    required this.onShowAllClick,
  });

  @override
  Widget build(BuildContext context) {
    return  Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ItemTitle(title: "Categories", showText: true ,onPressed: onShowAllClick),
          SizedBox(
              height: 150,
              child: _ListCategory(
                items: items,
                onPressed: onItemOnClick,
              ))
        ],
    );
  }
}

class _ListCategory extends StatelessWidget {
  final List<Category> items;
  final Function(String categoryId) onPressed;

  const _ListCategory({required this.items, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.take(8).length,
        itemBuilder: (context, index) {
          var item = items[index];
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: _Category(item: item, onPressed: onPressed),
          );
        });
  }
}

class _Category extends StatelessWidget {
  final Category item;
  final Function(String categoryId) onPressed;

  const _Category({required this.item, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: () {
        onPressed(item.id!);
      },
      child: SizedBox(
        height: 100,
        width: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child: HomeImage(url: item.icons)),
            Text(
              item.name!,
              style: Theme.of(context).textTheme.bodyMedium,
            )
          ],
        ),
      )
    );
  }
}
