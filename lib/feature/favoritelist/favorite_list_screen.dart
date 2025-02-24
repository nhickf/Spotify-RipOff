import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify/data/model/favorite.dart';
import 'package:spotify/feature/favoritelist/favorite_list_bloc.dart';
import 'package:spotify/feature/favoritelist/favorite_list_state.dart';
import 'favorite_list_event.dart';

class FavoriteListScreen extends StatelessWidget {
  final List<Favorite> favoriteList;

  const FavoriteListScreen({super.key, required this.favoriteList});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Favorites",
              style: Theme.of(context).textTheme.displayLarge),
          actions: [
            IconButton(
              onPressed: () {
                context
                    .read<FavoriteListBloc>()
                    .add(OnLayoutChange(layout: Layout.list));
              },
              icon: Icon(Icons.format_list_bulleted),
            ),
            IconButton(
              onPressed: () {
                context
                    .read<FavoriteListBloc>()
                    .add(OnLayoutChange(layout: Layout.grid));
              },
              icon: Icon(Icons.grid_view_outlined),
            )
          ],
        ),
        body: _CategoryListContent(
          favoriteList: favoriteList,
          onListPressed: () {},
          onGridPressed: () {},
        ));
  }
}

class _CategoryListContent extends StatelessWidget {
  final VoidCallback onListPressed;
  final VoidCallback onGridPressed;
  final List<Favorite> favoriteList;

  const _CategoryListContent({
    required this.onListPressed,
    required this.onGridPressed,
    required this.favoriteList,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavoriteListBloc, FavoriteListState>(
        builder: (context, state) {
      if (state.layout == Layout.list) {
        return _CategoryList(list: favoriteList);
      } else {
        return _CategoryGrid(list: favoriteList);
      }
    });
  }
}

class _CategoryList extends StatelessWidget {
  final List<Favorite> list;

  const _CategoryList({required this.list});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: list.length,
        itemBuilder: (_, index) {
          final item = list[index];
          return ListTile(
            title: Text(
              item.name,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            leading: Image.network(item.imageUrl),
            subtitle: Text(item.id),
          );
        });
  }
}

class _CategoryGrid extends StatelessWidget {
  final List<Favorite> list;

  const _CategoryGrid({required this.list});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(16),
      itemCount: list.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
      ),
      itemBuilder: (context, index) {
        final item = list[index];
        return Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              spacing: 4,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  flex: 5,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      item.imageUrl,
                      height: 150,
                      width: 150,
                    ),
                  ),
                ),
                Flexible(
                    flex: 1,
                    child: Text(
                      item.name,
                      textAlign: TextAlign.center,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.bodyMedium,
                    )),
                Flexible(
                    flex: 1,
                    child: Text(
                      item.id,
                      textAlign: TextAlign.center,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.bodySmall,
                    ))
              ],
            ),
          ),
        );
      },
    );
  }
}

enum Layout { list, grid }
