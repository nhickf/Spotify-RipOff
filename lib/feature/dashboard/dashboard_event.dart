import 'package:spotify/core/network/response.dart';
import 'package:spotify/data/model/favorite.dart';

sealed class DashboardEvent {}

final class Initial extends DashboardEvent {}
final class Refresh extends DashboardEvent {}
final class OnFavoritesChanges extends DashboardEvent{
  final DataResponse<List<Favorite>> favoriteResponse;

  OnFavoritesChanges({required this.favoriteResponse});
}