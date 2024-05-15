// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i12;
import 'package:your_tracks/presentation/add_expence/view/add_page.dart' as _i1;
import 'package:your_tracks/presentation/all_expenses/view/expense_page.dart'
    as _i2;
import 'package:your_tracks/presentation/auth/signin/view/signin_page.dart'
    as _i9;
import 'package:your_tracks/presentation/auth/signup/view/signup_page.dart'
    as _i10;
import 'package:your_tracks/presentation/edit_expense/view/edit_page.dart'
    as _i3;
import 'package:your_tracks/presentation/expense_summary/view/summary_page.dart'
    as _i4;
import 'package:your_tracks/presentation/home/view/home_page.dart' as _i5;
import 'package:your_tracks/presentation/navbar/navbar_page.dart'
    deferred as _i6;
import 'package:your_tracks/presentation/profile/view/profile_page.dart' as _i7;
import 'package:your_tracks/presentation/settings/view/settings_page.dart'
    as _i8;
import 'package:your_tracks/presentation/splash/splash_page.dart' as _i11;

abstract class $AppRouter extends _i12.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i12.PageFactory> pagesMap = {
    AddExpRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AddExpPage(),
      );
    },
    AllExpensesRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.AllExpensesPage(),
      );
    },
    EditExpenseRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.EditExpensePage(),
      );
    },
    ExpenseSummaryRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.ExpenseSummaryPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.HomePage(),
      );
    },
    NavBarRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i12.DeferredWidget(
          _i6.loadLibrary,
          () => _i6.NavBarPage(),
        ),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.ProfilePage(),
      );
    },
    SettingsRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.SettingsPage(),
      );
    },
    SigninRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.SigninPage(),
      );
    },
    SignupRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.SignupPage(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.SplashPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.AddExpPage]
class AddExpRoute extends _i12.PageRouteInfo<void> {
  const AddExpRoute({List<_i12.PageRouteInfo>? children})
      : super(
          AddExpRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddExpRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i2.AllExpensesPage]
class AllExpensesRoute extends _i12.PageRouteInfo<void> {
  const AllExpensesRoute({List<_i12.PageRouteInfo>? children})
      : super(
          AllExpensesRoute.name,
          initialChildren: children,
        );

  static const String name = 'AllExpensesRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i3.EditExpensePage]
class EditExpenseRoute extends _i12.PageRouteInfo<void> {
  const EditExpenseRoute({List<_i12.PageRouteInfo>? children})
      : super(
          EditExpenseRoute.name,
          initialChildren: children,
        );

  static const String name = 'EditExpenseRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i4.ExpenseSummaryPage]
class ExpenseSummaryRoute extends _i12.PageRouteInfo<void> {
  const ExpenseSummaryRoute({List<_i12.PageRouteInfo>? children})
      : super(
          ExpenseSummaryRoute.name,
          initialChildren: children,
        );

  static const String name = 'ExpenseSummaryRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i5.HomePage]
class HomeRoute extends _i12.PageRouteInfo<void> {
  const HomeRoute({List<_i12.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i6.NavBarPage]
class NavBarRoute extends _i12.PageRouteInfo<void> {
  const NavBarRoute({List<_i12.PageRouteInfo>? children})
      : super(
          NavBarRoute.name,
          initialChildren: children,
        );

  static const String name = 'NavBarRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i7.ProfilePage]
class ProfileRoute extends _i12.PageRouteInfo<void> {
  const ProfileRoute({List<_i12.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i8.SettingsPage]
class SettingsRoute extends _i12.PageRouteInfo<void> {
  const SettingsRoute({List<_i12.PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i9.SigninPage]
class SigninRoute extends _i12.PageRouteInfo<void> {
  const SigninRoute({List<_i12.PageRouteInfo>? children})
      : super(
          SigninRoute.name,
          initialChildren: children,
        );

  static const String name = 'SigninRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i10.SignupPage]
class SignupRoute extends _i12.PageRouteInfo<void> {
  const SignupRoute({List<_i12.PageRouteInfo>? children})
      : super(
          SignupRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignupRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i11.SplashPage]
class SplashRoute extends _i12.PageRouteInfo<void> {
  const SplashRoute({List<_i12.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}
