// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i11;
import 'package:your_tracks/presentation/add_expence/view/add_page.dart' as _i1;
import 'package:your_tracks/presentation/auth/signin/view/signin_page.dart'
    as _i8;
import 'package:your_tracks/presentation/auth/signup/view/signup_page.dart'
    as _i9;
import 'package:your_tracks/presentation/edit_expense/view/edit_page.dart'
    as _i2;
import 'package:your_tracks/presentation/expense_summary/view/summary_page.dart'
    as _i3;
import 'package:your_tracks/presentation/home/view/home_page.dart' as _i4;
import 'package:your_tracks/presentation/navbar/navbar_page.dart'
    deferred as _i5;
import 'package:your_tracks/presentation/profile/view/profile_page.dart' as _i6;
import 'package:your_tracks/presentation/settings/view/settings_page.dart'
    as _i7;
import 'package:your_tracks/presentation/splash/splash_page.dart' as _i10;

abstract class $AppRouter extends _i11.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i11.PageFactory> pagesMap = {
    AddExpenseRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AddExpPage(),
      );
    },
    EditExpenseRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.EditExpensePage(),
      );
    },
    ExpenseSummaryRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.ExpenseSummaryPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.HomePage(),
      );
    },
    NavBarRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i11.DeferredWidget(
          _i5.loadLibrary,
          () => _i5.NavBarPage(),
        ),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.ProfilePage(),
      );
    },
    SettingsRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.SettingsPage(),
      );
    },
    SigninRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.SigninPage(),
      );
    },
    SignupRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.SignupPage(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.SplashPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.AddExpPage]
class AddExpenseRoute extends _i11.PageRouteInfo<void> {
  const AddExpenseRoute({List<_i11.PageRouteInfo>? children})
      : super(
          AddExpenseRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddExpRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i2.EditExpensePage]
class EditExpenseRoute extends _i11.PageRouteInfo<void> {
  const EditExpenseRoute({List<_i11.PageRouteInfo>? children})
      : super(
          EditExpenseRoute.name,
          initialChildren: children,
        );

  static const String name = 'EditExpenseRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i3.ExpenseSummaryPage]
class ExpenseSummaryRoute extends _i11.PageRouteInfo<void> {
  const ExpenseSummaryRoute({List<_i11.PageRouteInfo>? children})
      : super(
          ExpenseSummaryRoute.name,
          initialChildren: children,
        );

  static const String name = 'ExpenseSummaryRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i4.HomePage]
class HomeRoute extends _i11.PageRouteInfo<void> {
  const HomeRoute({List<_i11.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i5.NavBarPage]
class NavBarRoute extends _i11.PageRouteInfo<void> {
  const NavBarRoute({List<_i11.PageRouteInfo>? children})
      : super(
          NavBarRoute.name,
          initialChildren: children,
        );

  static const String name = 'NavBarRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i6.ProfilePage]
class ProfileRoute extends _i11.PageRouteInfo<void> {
  const ProfileRoute({List<_i11.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i7.SettingsPage]
class SettingsRoute extends _i11.PageRouteInfo<void> {
  const SettingsRoute({List<_i11.PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i8.SigninPage]
class SigninRoute extends _i11.PageRouteInfo<void> {
  const SigninRoute({List<_i11.PageRouteInfo>? children})
      : super(
          SigninRoute.name,
          initialChildren: children,
        );

  static const String name = 'SigninRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i9.SignupPage]
class SignupRoute extends _i11.PageRouteInfo<void> {
  const SignupRoute({List<_i11.PageRouteInfo>? children})
      : super(
          SignupRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignupRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i10.SplashPage]
class SplashRoute extends _i11.PageRouteInfo<void> {
  const SplashRoute({List<_i11.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}
