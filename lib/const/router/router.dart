import 'package:auto_route/auto_route.dart';
import 'package:your_tracks/const/router/router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  late final List<AutoRoute> routes = [
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
    AdaptiveRoute(page: AddExpRoute.page, path: '/add'),
    AdaptiveRoute(
      page: NavBarRoute.page,
      path: '/navbar',
      initial: true,
      children: [
        AdaptiveRoute(page: HomeRoute.page),
        AdaptiveRoute(page: TransactionRoute.page),
        AdaptiveRoute(page: ExpenseSummaryRoute.page),
        AdaptiveRoute(page: SettingsRoute.page),
      ],
    ),
  ];
}
