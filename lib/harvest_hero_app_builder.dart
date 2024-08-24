import 'package:djangoflow_app/djangoflow_app.dart';
import 'package:djangoflow_app_links/djangoflow_app_links.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:harvest_hero/features/app/app.dart';
import 'package:harvest_hero/features/crops/blocs/crops_cubit.dart';
import 'package:harvest_hero/features/help_buddy/blocs/google_generative_ai_bloc.dart';
import 'package:harvest_hero/features/help_buddy/data/repositories/google_generative_ai_repository.dart';
import 'package:harvest_hero/features/home/blocs/weather_cubit.dart';
import 'package:harvest_hero/features/home/data/repositories/weather_repo.dart';

import 'configurations/configurations.dart';

class HarvestHeroAppBuilder extends AppBuilder {
  HarvestHeroAppBuilder({
    super.key,
    super.onDispose,
    required AppRouter appRouter,
    required AppLinksRepository appLinksRepository,
    final String? initialDeepLink,
  }) : super(
          onInitState: (context) {},
          repositoryProviders: [
            RepositoryProvider<AppLinksRepository>.value(
              value: appLinksRepository,
            ),
            RepositoryProvider<GoogleGenerativeAiRepository>(
              create: (context) => GoogleGenerativeAiRepository(),
            ),
            RepositoryProvider<WeatherRepo>(
              create: (context) => WeatherRepo(),
            ),
          ],
          providers: [
            BlocProvider<AppCubit>(
              create: (context) => AppCubit.instance,
            ),
            BlocProvider<AppLinksCubit>(
              create: (context) => AppLinksCubit(
                null,
                context.read<AppLinksRepository>(),
              ),
              lazy: false,
            ),
            BlocProvider<GoogleGenerativeAiBloc>(
              create: (context) => GoogleGenerativeAiBloc(
                generativeAiRepository:
                    context.read<GoogleGenerativeAiRepository>(),
              ),
            ),
            BlocProvider<WeatherCubit>(
              create: (context) => WeatherCubit(
                weatherRepository: context.read<WeatherRepo>(),
              ),
            ),
            BlocProvider<CropsCubit>(
              create: (context) => CropsCubit(),
            ),
          ],
          builder: (context) => AppCubitConsumer(
            listenWhen: (previous, current) =>
                previous.environment != current.environment,
            listener: (context, state) async {},
            builder: (context, appState) => MaterialApp.router(
              debugShowCheckedModeBanner: false,
              scaffoldMessengerKey: DjangoflowAppSnackbar.scaffoldMessengerKey,
              title: kAppTitle,
              routeInformationParser: RouteParser(
                appRouter.matcher,
                includePrefixMatches: true,
              ),
              theme: AppTheme.light,
              darkTheme: AppTheme.dark,
              themeMode: appState.themeMode,
              locale: Locale(appState.locale, ''),
              supportedLocales: const [
                Locale('en', ''),
              ],
              localizationsDelegates: const [
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              routerDelegate: appRouter.delegate(
                deepLinkBuilder: (deepLink) {
                  return initialDeepLink != null
                      ? DeepLink.path(initialDeepLink)
                      : const DeepLink([AppHomeRoute()]);
                },
              ),
              builder: (context, child) => AppResponsiveLayoutBuilder(
                child: SandboxBanner(
                  isSandbox: appState.environment == AppEnvironment.sandbox,
                  message: 'Dev',
                  color: Theme.of(context).primaryColor,
                  child: child != null
                      ? kIsWeb
                          ? child
                          : AppLinksCubitListener(
                              listenWhen: (previous, current) =>
                                  current != null,
                              listener: (context, appLink) {
                                final path = appLink?.path;
                                if (path != null) {
                                  appRouter.navigateNamed(
                                    path,
                                    onFailure: (failure) {
                                      appRouter.navigate(
                                        const UnknownRoute(),
                                      );
                                    },
                                  );
                                }
                              },
                              child: child,
                            )
                      : const Offstage(),
                ),
              ),
            ),
          ),
        );
}
