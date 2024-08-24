// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:harvest_hero/features/app/presentation/pages/unknown_page.dart'
    deferred as _i5;
import 'package:harvest_hero/features/crops/presentation/pages/add_crop_page.dart'
    deferred as _i1;
import 'package:harvest_hero/features/help_buddy/presentation/pages/analyze_image_page.dart'
    deferred as _i2;
import 'package:harvest_hero/features/help_buddy/presentation/pages/chat_page.dart'
    deferred as _i3;
import 'package:harvest_hero/features/home/presentation/pages/home_page.dart'
    deferred as _i4;

abstract class $AppRouter extends _i6.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    AddCropRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.DeferredWidget(
          _i1.loadLibrary,
          () => _i1.AddCropPage(),
        ),
      );
    },
    AnalyzeImageRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.DeferredWidget(
          _i2.loadLibrary,
          () => _i2.AnalyzeImagePage(),
        ),
      );
    },
    ChatRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.DeferredWidget(
          _i3.loadLibrary,
          () => _i3.ChatPage(),
        ),
      );
    },
    HomeRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.DeferredWidget(
          _i4.loadLibrary,
          () => _i4.HomePage(),
        ),
      );
    },
    UnknownRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.DeferredWidget(
          _i5.loadLibrary,
          () => _i5.UnknownPage(),
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.AddCropPage]
class AddCropRoute extends _i6.PageRouteInfo<void> {
  const AddCropRoute({List<_i6.PageRouteInfo>? children})
      : super(
          AddCropRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddCropRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i2.AnalyzeImagePage]
class AnalyzeImageRoute extends _i6.PageRouteInfo<void> {
  const AnalyzeImageRoute({List<_i6.PageRouteInfo>? children})
      : super(
          AnalyzeImageRoute.name,
          initialChildren: children,
        );

  static const String name = 'AnalyzeImageRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i3.ChatPage]
class ChatRoute extends _i6.PageRouteInfo<void> {
  const ChatRoute({List<_i6.PageRouteInfo>? children})
      : super(
          ChatRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChatRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i4.HomePage]
class HomeRoute extends _i6.PageRouteInfo<void> {
  const HomeRoute({List<_i6.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i5.UnknownPage]
class UnknownRoute extends _i6.PageRouteInfo<void> {
  const UnknownRoute({List<_i6.PageRouteInfo>? children})
      : super(
          UnknownRoute.name,
          initialChildren: children,
        );

  static const String name = 'UnknownRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}
