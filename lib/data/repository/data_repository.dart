import 'package:spotify/core/network/response.dart';
import 'package:spotify/data/source/api_service/response/albums.dart';
import 'package:spotify/data/source/api_service/response/artists.dart';
import 'package:spotify/data/source/api_service/response/browse_category.dart';
import 'package:spotify/data/source/api_service/response/playlists.dart';
import 'package:spotify/data/source/api_service/service.dart';

abstract class IDataRepository {
  Future<DataResponse<BrowseCategory>> getBrowseCategory(
    String locale,
    int limit,
    int offset,
  );

  Future<DataResponse<Albums>> getAlbums(
    String market,
    String listOfIds,
  );

  Future<DataResponse<PlayLists>> getPlayLists(
    String categoryId,
    int limit,
    int offset,
  );

  Future<DataResponse<Artists>> getArtists(
    String listOfIds,
  );
}

class DataRepositoryImpl extends IDataRepository {
  final SpotifyService apiService;

  DataRepositoryImpl({required this.apiService});

  @override
  Future<DataResponse<Albums>> getAlbums(
      String market, String listOfIds) async {
    return apiService.getSeveralAlbums(listOfIds, market);
  }

  @override
  Future<DataResponse<Artists>> getArtists(String listOfIds) async {
    return apiService.getSeveralArtists(listOfIds);
  }

  @override
  Future<DataResponse<BrowseCategory>> getBrowseCategory(
      String locale, int limit, int offset) async {
    return apiService.getBrowseCategory(locale, limit, offset);
  }

  @override
  Future<DataResponse<PlayLists>> getPlayLists(
      String categoryId, int limit, int offset) async {
    return apiService.getPlayLists(categoryId);
  }
}
