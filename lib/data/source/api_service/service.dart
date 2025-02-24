import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:spotify/core/network/adapter.dart';
import 'package:spotify/core/network/response.dart';
import 'package:spotify/data/source/api_service/_endpoints.dart';
import 'package:spotify/data/source/api_service/response/albums.dart';
import 'package:spotify/data/source/api_service/response/artists.dart';
import 'package:spotify/data/source/api_service/response/browse_category.dart';
import 'package:spotify/data/source/api_service/response/playlists.dart';
import 'package:spotify/data/source/api_service/response/tracks.dart';

part 'service.g.dart';

@RestApi(callAdapter: NetworkResponseAdapter)
abstract class SpotifyService {
  factory SpotifyService(Dio dio, {String? baseUrl}) =>
      _SpotifyService(dio, baseUrl: baseUrl);

  @GET(getCategories)
  Future<DataResponse<BrowseCategory>> getBrowseCategory(
    @Query('locale') String locale,
    @Query('limit') int limit,
    @Query('offset') int offset,
  );

  @GET(getCategoryPlaylist)
  Future<DataResponse<PlayLists>> getPlayLists(
    @Path('playlist_id') String categoryId,
  );

  @GET(getAlbums)
  Future<DataResponse<Albums>> getSeveralAlbums(
    @Query('ids') String listOfIds,
    @Query('market') String market,
  );

  @GET(getArtists)
  Future<DataResponse<Artists>> getSeveralArtists(
    @Query('ids') String listOfIds,
  );

  @GET(getSeveralTracks)
  Future<DataResponse<Tracks>> getTracks(
    @Query('ids') String listOfIds,
  );

  @GET(getArtistTopTracks)
  Future<DataResponse<Tracks>> getArtistTracks(
    @Path('id') String id,
  );
}
