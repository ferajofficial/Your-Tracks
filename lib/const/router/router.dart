import 'package:auto_route/auto_route.dart';
import 'package:your_tracks/const/router/router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  late final List<AutoRoute> routes = [
    AdaptiveRoute(
      page: SplashRoute.page,
      path: '/',
      initial: true,
    ),
    AdaptiveRoute(
      page: ProfileRoute.page,
      path: '/profile',
    ),
    AdaptiveRoute(
      page: SigninRoute.page,
      path: '/signin',
    ),
    AdaptiveRoute(
      page: SignupRoute.page,
      path: '/signup',
    ),
    AdaptiveRoute(
      page: EditExpenseRoute.page,
      path: '/edit',
    ),
    AdaptiveRoute(
      page: SettingsRoute.page,
      path: '/settings',
    ),
    AdaptiveRoute(
      page: NavBarRoute.page,
      path: '/navbar',
      children: [
        AdaptiveRoute(page: HomeRoute.page),
        AdaptiveRoute(page: ExpenseSummaryRoute.page),
        AdaptiveRoute(page: AddExpenseRoute.page),
      ],
    ),
  ];
}
