import 'package:flutter/material.dart';
import 'package:harvest_hero/features/app/presentation/pages/app_home_routes.dart';

import '../configurations.dart';

export 'package:auto_route/auto_route.dart';

export 'route_parser.dart';
export 'router.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Page,Route',
  deferredLoading: true,
)
class AppRouter extends $AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  final List<AutoRoute> routes = [
    AutoRoute(
      path: '/app-home',
      page: AppHomeRoute.page,
      children: appHomeRoutes,
    ),
    AutoRoute(
      path: '/add-crops',
      page: AddCropRoute.page,
    ),
    AutoRoute(
      path: '/*',
      page: UnknownRoute.page,
    ),
    AutoRoute(
      path: '/help-buddy',
      page: ChatRoute.page,
    ),
    AutoRoute(
      path: '/analyze-image',
      page: AnalyzeImageRoute.page,
    ),
    RedirectRoute(
      path: '/*',
      redirectTo: '/404',
    ),
  ];
}

Route<T> modalSheetBuilder<T>(
        BuildContext context, Widget child, AutoRoutePage<T> page) =>
    ModalBottomSheetRoute(
      settings: page,
      isScrollControlled: true,
      constraints: BoxConstraints(
        maxHeight: (MediaQuery.of(context).size.height / 10) * 7,
      ),
      builder: (context) => child,
    );

Route<T> dialogRouteBuilder<T>(
        BuildContext context, Widget child, AutoRoutePage<T> page) =>
    DialogRoute(
      settings: page,
      barrierDismissible: true,
      builder: (context) => child,
      context: context,
      useSafeArea: true,
      barrierColor: AppColors.surfaceVariantDark.withOpacity(.1),
    );
