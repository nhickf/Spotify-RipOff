
import 'package:floor/floor.dart';

@Entity(tableName: "favorites")
class FavoriteEntity {
  @primaryKey
  String uId;
  String name;
  String imageUrl;
  String timeStamp;

  FavoriteEntity({
    required this.uId,
    required this.name,
    required this.imageUrl,
    required this.timeStamp
  });
}
