import 'package:get_it/get_it.dart';
import 'package:spotify/constant/constant.dart';
import 'package:spotify/data/repository/data_repository.dart';
import 'package:spotify/data/source/api_service/service.dart';

void dataDependencies(GetIt di) {
  di.registerLazySingleton<SpotifyService>(() {
    return SpotifyService(di.get(instanceName: baseClientInstanceKey));
  });

  di.registerLazySingleton<IDataRepository>(() {
    return DataRepositoryImpl(apiService: di.get<SpotifyService>());
  });
}
