import 'package:flutter/material.dart';
import 'package:spotify/data/model/category.dart';
import 'package:spotify/feature/dashboard/component/image.dart';
import 'package:spotify/feature/dashboard/component/title.dart';

class Categories extends StatelessWidget {
  final Function(List<Category> categories) onShowAllClick;
  final List<Category>? items;

  const Categories({
    super.key,
    required this.items,
    required this.onShowAllClick,
  });

  @override
  Widget build(BuildContext context) {
    if (items != null) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ItemTitle(
              title: "Categories",
              showText: true,
              onPressed: () {
                onShowAllClick(items!);
              }),
          SizedBox(
              height: 150,
              child: _ListCategory(
                items: items!,
              ))
        ],
      );
    } else {
      return Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        ItemTitle(title: "Categories", showText: false, onPressed: () {}),
        SizedBox(height: 150)
      ]);
    }
  }
}

class _ListCategory extends StatelessWidget {
  final List<Category> items;

  const _ListCategory({required this.items});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.take(8).length,
        itemBuilder: (context, index) {
          var item = items[index];
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: _Category(item: item),
          );
        });
  }
}

class _Category extends StatelessWidget {
  final Category item;

  const _Category({required this.item});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
    );
  }
}
