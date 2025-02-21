import 'package:floor/floor.dart';
import 'package:spotify/data/source/database/dao/favorite_dao.dart';
import 'package:spotify/data/source/database/entity/favorite_entity.dart';
part 'app_database.g.dart';


@Database(version: 1, entities: [FavoriteEntity])
abstract class AppDatabase extends FloorDatabase {
  FavoriteDao get favoriteDao;
}
