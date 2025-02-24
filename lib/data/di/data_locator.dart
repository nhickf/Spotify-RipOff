import 'package:get_it/get_it.dart';
import 'package:spotify/constant/constant.dart';
import 'package:spotify/data/repository/data_repository.dart';
import 'package:spotify/data/source/api_service/service.dart';
import 'package:spotify/data/source/database/app_database.dart';

void dataDependencies(GetIt di) {
  di.registerLazySingleton<SpotifyService>(() {
    return SpotifyService(di.get(instanceName: baseClientInstanceKey));
  });

  di.registerSingletonAsync<AppDatabase>(() {
    return $FloorAppDatabase.databaseBuilder("app_database.db").build();
  });

  di.registerSingletonAsync<IDataRepository>(() async {
    final db = await di.getAsync<AppDatabase>();
    return DataRepositoryImpl(
        apiService: di.get<SpotifyService>(), dao: db.favoriteDao);
  });
}
