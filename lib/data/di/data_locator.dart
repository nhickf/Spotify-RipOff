import 'package:get_it/get_it.dart';
import 'package:spotify/constant/constant.dart';
import 'package:spotify/data/repository/data_repository.dart';
import 'package:spotify/data/source/api_service/service.dart';
import 'package:spotify/data/source/database/app_database.dart';
import 'package:spotify/data/source/database/dao/favorite_dao.dart';

void dataDependencies(GetIt di) {
  di.registerLazySingleton<SpotifyService>(() {
    return SpotifyService(di.get(instanceName: baseClientInstanceKey));
  });

  di.registerLazySingletonAsync<AppDatabase>(() {
    return $FloorAppDatabase.databaseBuilder("app_database.db").build();
  });

  di.registerLazySingleton<FavoriteDao>(() {
    return di.get<AppDatabase>().favoriteDao;
  });

  di.registerLazySingleton<IDataRepository>(() {
    return DataRepositoryImpl(
        apiService: di.get<SpotifyService>(), dao: di.get<FavoriteDao>());
  });
}
