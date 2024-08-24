import 'dart:async';

import 'package:djangoflow_app/djangoflow_app.dart';
import 'package:djangoflow_app_links/djangoflow_app_links.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:harvest_hero/firebase_options.dart';
import 'configurations/configurations.dart';
import 'harvest_hero_app_builder.dart';

Future<void> main() async {
  // Runs the runApp method
  DjangoflowAppRunner.run(
    onException: (exception, stackTrace) {
      debugPrint('Exception Caught -- $exception');
      // DjangoflowAppSnackbar.showError(
      //   ExceptionFormatter.format(exception),
      // );
    },
    rootWidgetBuilder: (appBuilder) async {
      await dotenv.load(fileName: "env");
      String? initialDeepLink;
      final appLinksRepository = AppLinksRepository();

      if (!kIsWeb) {
        initialDeepLink = (await appLinksRepository.getInitialLink())?.path;
      }

      // initialize router
      final router = AppRouter();

      await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      );
      AppCubit.initialState = const AppState(
        themeMode: ThemeMode.light,
      );

      return appBuilder(
        HarvestHeroAppBuilder(
          appRouter: router,
          initialDeepLink: initialDeepLink,
          appLinksRepository: appLinksRepository,
        ),
      );
    },
  );
}
