import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:spotify/core/network/network_locator.dart';
import 'package:spotify/core/storage/storage_locator.dart';
import 'package:spotify/data/di/data_locator.dart';
import 'package:spotify/data/repository/data_repository.dart';
import 'package:spotify/feature/dashboard/dashboard_screen.dart';

void main() async {
  GetIt di = GetIt.instance;
  // initialize dependencies
  storageDependency(di);
  networkDependencies(di);
  dataDependencies(di);

  runApp(SpotifyScreen(dataRepository: di.get<IDataRepository>()));
}

class SpotifyScreen extends StatelessWidget {
  final IDataRepository _dataRepository;

  const SpotifyScreen({
    super.key,
    required IDataRepository dataRepository,
  }) : _dataRepository = dataRepository;

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: _dataRepository,
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // TRY THIS: Try running your application with "flutter run". You'll see
          // the application has a purple toolbar. Then, without quitting the app,
          // try changing the seedColor in the colorScheme below to Colors.green
          // and then invoke "hot reload" (save your changes or press the "hot
          // reload" button in a Flutter-supported IDE, or press "r" if you used
          // the command line to start the app).
          //
          // Notice that the counter didn't reset back to zero; the application
          // state is not lost during the reload. To reset the state, use hot
          // restart instead.
          //
          // This works for code too, not just values: Most code changes can be
          // tested with just a hot reload.
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Scaffold(
          body: DashboardScreen(),
        ),
      ),
    );
  }
}
