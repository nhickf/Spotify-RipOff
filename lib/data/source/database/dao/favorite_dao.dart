

import 'package:floor/floor.dart';
import 'package:spotify/data/source/database/entity/favorite_entity.dart';

@dao
abstract class FavoriteDao {

  @Query("SELECT * FROM FAVORITES ORDER BY TIMESTAMP DESC")
  Stream<List<FavoriteEntity>> getAllFavorites();

  @insert
  Future<void> addFavorite(FavoriteEntity fav);

  @delete
  Future<void> deleteFavorite(FavoriteEntity fav);
  

}