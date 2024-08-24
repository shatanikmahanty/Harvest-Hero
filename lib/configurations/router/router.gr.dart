// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:harvest_hero/features/app/presentation/pages/app_home_page.dart'
    deferred as _i3;
import 'package:harvest_hero/features/app/presentation/pages/unknown_page.dart'
    deferred as _i6;
import 'package:harvest_hero/features/crops/presentation/pages/add_crop_page.dart'
    deferred as _i1;
import 'package:harvest_hero/features/help_buddy/presentation/pages/analyze_image_page.dart'
    deferred as _i2;
import 'package:harvest_hero/features/help_buddy/presentation/pages/chat_page.dart'
    deferred as _i4;
import 'package:harvest_hero/features/home/presentation/pages/home_page.dart'
    deferred as _i5;

abstract class $AppRouter extends _i7.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    AddCropRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.DeferredWidget(
          _i1.loadLibrary,
          () => _i1.AddCropPage(),
        ),
      );
    },
    AnalyzeImageRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.DeferredWidget(
          _i2.loadLibrary,
          () => _i2.AnalyzeImagePage(),
        ),
      );
    },
    AppHomeRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.DeferredWidget(
          _i3.loadLibrary,
          () => _i3.AppHomePage(),
        ),
      );
    },
    ChatRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.DeferredWidget(
          _i4.loadLibrary,
          () => _i4.ChatPage(),
        ),
      );
    },
    HomeRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.DeferredWidget(
          _i5.loadLibrary,
          () => _i5.HomePage(),
        ),
      );
    },
    UnknownRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.DeferredWidget(
          _i6.loadLibrary,
          () => _i6.UnknownPage(),
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.AddCropPage]
class AddCropRoute extends _i7.PageRouteInfo<void> {
  const AddCropRoute({List<_i7.PageRouteInfo>? children})
      : super(
          AddCropRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddCropRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i2.AnalyzeImagePage]
class AnalyzeImageRoute extends _i7.PageRouteInfo<void> {
  const AnalyzeImageRoute({List<_i7.PageRouteInfo>? children})
      : super(
          AnalyzeImageRoute.name,
          initialChildren: children,
        );

  static const String name = 'AnalyzeImageRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i3.AppHomePage]
class AppHomeRoute extends _i7.PageRouteInfo<void> {
  const AppHomeRoute({List<_i7.PageRouteInfo>? children})
      : super(
          AppHomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'AppHomeRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i4.ChatPage]
class ChatRoute extends _i7.PageRouteInfo<void> {
  const ChatRoute({List<_i7.PageRouteInfo>? children})
      : super(
          ChatRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChatRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i5.HomePage]
class HomeRoute extends _i7.PageRouteInfo<void> {
  const HomeRoute({List<_i7.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i6.UnknownPage]
class UnknownRoute extends _i7.PageRouteInfo<void> {
  const UnknownRoute({List<_i7.PageRouteInfo>? children})
      : super(
          UnknownRoute.name,
          initialChildren: children,
        );

  static const String name = 'UnknownRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}
