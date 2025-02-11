
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';

void storageDependency(GetIt di) {

  di.registerLazySingleton<FlutterSecureStorage>(() =>
      FlutterSecureStorage(
        aOptions: AndroidOptions(
          encryptedSharedPreferences: true
        )
      )
  );


}