import 'package:auto_route/auto_route.dart';
import 'package:your_tracks/const/router/router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  late final List<AutoRoute> routes = [
    AdaptiveRoute(page: HomeRoute.page, path: '/', initial: true)
  ];
}
