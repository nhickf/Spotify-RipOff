import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spotify/core/network/network_locator.dart';
import 'package:spotify/core/storage/storage_locator.dart';
import 'package:spotify/data/di/data_locator.dart';
import 'package:spotify/data/repository/data_repository.dart';
import 'package:spotify/feature/categorylist/category_list_bloc.dart';
import 'package:spotify/feature/categorylist/category_list_state.dart';
import 'package:spotify/feature/dashboard/dashboard_bloc.dart';
import 'package:spotify/navigation/app_navigation.dart';

import 'feature/dashboard/dashboard_event.dart';

void main() async {
  GetIt di = GetIt.instance;
  // initialize dependencies
  storageDependency(di);
  networkDependencies(di);
  dataDependencies(di);

  runApp(MaterialApp(
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
      colorScheme: ColorScheme.fromSeed(
          seedColor: Color(0xff1ed760), brightness: Brightness.dark),
      textTheme: TextTheme(
          displayLarge:
              GoogleFonts.openSans(fontSize: 24, fontWeight: FontWeight.bold),
          displayMedium:
              GoogleFonts.openSans(fontSize: 18, fontWeight: FontWeight.bold),
          bodySmall: GoogleFonts.openSans(
              fontSize: 12,
              fontWeight: FontWeight.normal,
              color: Color(0xff9a9a9a)),
          bodyMedium: GoogleFonts.openSans(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Color(0xff9a9a9a)),
          bodyLarge: GoogleFonts.openSans(
            fontSize: 18,
            fontWeight: FontWeight.w700,
          )),
      useMaterial3: true,
    ),
    home: SpotifyScreen(dataRepository: di.get<IDataRepository>()),
  ));
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
      child: MultiBlocProvider(
        providers: [
          BlocProvider<DashboardBloc>(
            create: (context) => DashboardBloc(context.read<IDataRepository>())..add(Initial()),
          ),
          BlocProvider<CategoryListBloc>(
            create: (context) => CategoryListBloc(CategoryListState()),
          )
        ],
        child: AppNavigator(),
      ),
    );
  }
}
