import 'package:spotify/data/model/album.dart' as model_album;
import 'package:spotify/data/model/page.dart';
import 'package:spotify/data/model/track.dart' as model_track;
import 'package:spotify/data/model/artist.dart' as model_artist;
import 'package:spotify/data/model/category.dart' as model_category;
import 'package:spotify/data/source/api_service/response/albums.dart';

import 'package:spotify/data/source/api_service/response/artists.dart';
import 'package:spotify/data/source/api_service/response/browse_category.dart';
import 'package:spotify/data/source/api_service/response/tracks.dart';

extension CategoryMapper on BrowseCategory {
  Page<model_category.Category> get transform => Page<model_category.Category>(
        item: categories!.items!
            .map((item) => model_category.Category(
                  name: item.name,
                  icons: item.icons!.first.url,
                  id: item.id,
                ))
            .toList(),
        offset: categories!.offset!,
        limit: categories!.limit!,
      );
}


extension AlbumMapper on Albums {
  List<model_album.Album> get transform => albums.map((album) => model_album.Album(
    id: album.id,
    label: album.label,
    image: album.images?.first.url,
    uri: album.uri,
    totalTracks: album.totalTracks,
    tracks: album.tracks?.transform
  )).toList();
}

extension TrackMapper on Tracks {
  Page<model_track.Track> get transform => Page<model_track.Track>(
    offset: offset!,
    limit: limit!,
    item: items?.map((track) => model_track.Track(
      id: track.id,
      name: track.name,
      previewUrl: track.previewUrl,
      type: track.type,
      uri: track.uri,
      trackNumber: track.trackNumber,
      isLocal: track.isLocal,
      explicit: track.explicit,
      artists: track.artists?.map((artist) => artist.transform).toList()
    )).toList()
  );
}

extension ArtistMapper on Artist {
  model_artist.Artist get transform => model_artist.Artist(
    id: id,
    name: name,
    type: type,
    uri: uri,
    image: images?.first.url
  );
}

extension ArtistsMapper on Artists {
  List<model_artist.Artist>? get transform => artists?.map((artist) => artist.transform).toList();
}