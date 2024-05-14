import 'package:flutter/material.dart';
import 'package:your_tracks/const/router/router.dart';


class YourTracks extends StatefulWidget {
  const YourTracks({super.key});

  @override
  State<YourTracks> createState() => _YourTracksState();
}

class _YourTracksState extends State<YourTracks> {
  final AppRouter _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: _appRouter.config(),
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
    );
  }
}
