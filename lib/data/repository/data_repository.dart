import 'package:spotify/core/network/response.dart';
import 'package:spotify/data/mapper/mapper.dart';
import 'package:spotify/data/model/album.dart';
import 'package:spotify/data/model/artist.dart';
import 'package:spotify/data/model/category.dart';
import 'package:spotify/data/model/favorite.dart';
import 'package:spotify/data/model/track.dart';
import 'package:spotify/data/source/api_service/service.dart';
import 'package:spotify/data/source/database/dao/favorite_dao.dart';

abstract class IDataRepository {
  Future<DataResponse<List<Category>>> getBrowseCategory(String locale,
      int limit,
      int offset,);

  Future<DataResponse<List<Album>>> getAlbums(String market,
      String listOfIds,);


  Future<DataResponse<List<Artist>>> getArtists(String listOfIds);

  Future<DataResponse<List<Track>>> getTracks(String listOfIds);

  Future<DataResponse<List<Track>>> getArtistTracks(String id);


  Stream<DataResponse<List<Favorite>>> getFavorites();

  Future<void> addFavorite(Favorite fav);

  Future<void> deleteFavorite(Favorite fav);
}

class DataRepositoryImpl extends IDataRepository {
  final SpotifyService apiService;
  final FavoriteDao dao;

  DataRepositoryImpl({required this.apiService, required this.dao});

  @override
  Future<DataResponse<List<Album>>> getAlbums(String market,
      String listOfIds) async {
    final response = await apiService.getSeveralAlbums(listOfIds, market);
    switch (response) {
      case Success():
        return Success(response.data?.transform);
      case Failure():
        return Failure(response.message, response.code);
      case Exception():
        return Exception(response.exception);
      default :
        return Success(List.empty());
    }
  }

  @override
  Future<DataResponse<List<Artist>>> getArtists(String listOfIds) async {
    final response = await apiService.getSeveralArtists(listOfIds);
    switch (response) {
      case Success():
        return Success(response.data?.transform);
      case Failure():
        return Failure(response.message, response.code);
      case Exception():
        return Exception(response.exception);
      default :
        return Success(List.empty());
    }
  }

  @override
  Future<DataResponse<List<Category>>> getBrowseCategory(String locale,
      int limit, int offset) async {
    final response = await apiService.getBrowseCategory(locale, limit, offset);

    switch (response) {
      case Success():
        return Success(response.data?.transform.item as List<Category>);
      case Failure():
        return Failure(response.message, response.code);
      case Exception():
        return Exception(response.exception);
      default :
        return Success(List.empty());
    }
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

  @override
  Future<void> deleteFavorite(Favorite fav) {
    return dao.deleteFavorite(fav.transform);
  }

  @override
  Future<DataResponse<List<Track>>> getTracks(String listOfIds) async {
    final response = await apiService.getTracks(listOfIds);
    switch (response) {
      case Success():
        return Success(response.data?.transform.item as List<Track>);
      case Failure():
        return Failure(response.message, response.code);
      case Exception():
        return Exception(response.exception);
      default :
        return Success(List<Track>.empty());
    }
  }

  @override
  Future<DataResponse<List<Track>>> getArtistTracks(String id) async {
    final response = await apiService.getArtistTracks(id);
    switch (response) {
      case Success():
        return Success(response.data?.transform.item as List<Track>);
      case Failure():
        return Failure(response.message, response.code);
      case Exception():
        return Exception(response.exception);
    }
    return Success(List<Track>.empty());
  }
}
