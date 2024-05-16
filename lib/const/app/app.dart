import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:your_tracks/blocs/category_bloc/create_category_bloc.dart';
import 'package:your_tracks/const/router/router.dart';

class YourTracks extends StatefulWidget {
  const YourTracks({super.key});

  @override
  State<YourTracks> createState() => _YourTracksState();
}

class _YourTracksState extends State<YourTracks> {
  final AppRouter _appRouter = AppRouter();
  final ThemeMode _currentThemeMode = ThemeMode.light;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CategoryBloc>(
          create: (BuildContext context) => CategoryBloc(),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        themeMode: _currentThemeMode,
        routerConfig: _appRouter.config(),
        theme: ThemeData.light(),
        darkTheme: ThemeData.dark(),
      ),
    );
  }
}
