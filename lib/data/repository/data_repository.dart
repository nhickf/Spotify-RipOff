import 'package:floor/floor.dart';
import 'package:flutter/cupertino.dart';
import 'package:spotify/core/network/response.dart';
import 'package:spotify/data/mapper/mapper.dart';
import 'package:spotify/data/model/favorite.dart';
import 'package:spotify/data/source/api_service/response/albums.dart';
import 'package:spotify/data/source/api_service/response/artists.dart';
import 'package:spotify/data/source/api_service/response/browse_category.dart';
import 'package:spotify/data/source/api_service/response/playlists.dart';
import 'package:spotify/data/source/api_service/service.dart';
import 'package:spotify/data/source/database/dao/favorite_dao.dart';

abstract class IDataRepository {
  Future<DataResponse<BrowseCategory>> getBrowseCategory(String locale,
      int limit,
      int offset,);

  Future<DataResponse<Albums>> getAlbums(String market,
      String listOfIds,);

  Future<DataResponse<PlayLists>> getPlayLists(String categoryId,
      int limit,
      int offset,);

  Future<DataResponse<Artists>> getArtists(String listOfIds,);

  Stream<DataResponse<List<Favorite>>> getFavorites();

  Future<void> addFavorite(Favorite fav);
}

class DataRepositoryImpl extends IDataRepository {
  final SpotifyService apiService;
  final FavoriteDao dao;

  DataRepositoryImpl({required this.apiService, required this.dao});

  @override
  Future<DataResponse<Albums>> getAlbums(String market,
      String listOfIds) async {
    return apiService.getSeveralAlbums(listOfIds, market);
  }

  @override
  Future<DataResponse<Artists>> getArtists(String listOfIds) async {
    return apiService.getSeveralArtists(listOfIds);
  }

  @override
  Future<DataResponse<BrowseCategory>> getBrowseCategory(String locale,
      int limit, int offset) async {
    return apiService.getBrowseCategory(locale, limit, offset);
  }

  @override
  Future<DataResponse<PlayLists>> getPlayLists(String categoryId, int limit,
      int offset) async {
    return apiService.getPlayLists(categoryId);
  }

  @override
  Future<void> addFavorite(Favorite fav) {
    return dao.addFavorite(fav.transform);
  }

  @override
  Stream<DataResponse<List<Favorite>>> getFavorites() {
    try {
      final res = dao.getAllFavorites();

      return res.map((stream) {
        return Success(stream.map((entity) {
          return entity.transform;
        }).toList());
      });
    } on Exception catch (e, s) {
      return Stream.value(Failure(s.toString(), 0));
    }
  }
