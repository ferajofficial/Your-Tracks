import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:your_tracks/blocs/create_expense/create_expense_bloc.dart';
import 'package:your_tracks/blocs/get_expense/get_expense_bloc.dart';
import 'package:your_tracks/const/router/router.dart';
import 'package:your_tracks/core/firebase_expense_repo.dart';

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
        BlocProvider(create: (_) => GetExpensesBloc(FirebaseExpenseRepo())),
        BlocProvider(create: (_) => CreateExpenseBloc()),
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
