import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:harvest_hero/features/app/app.dart';

import '../../../../configurations/configurations.dart';

@RoutePage()
class AppHomePage extends StatefulWidget {
  const AppHomePage({super.key});

  @override
  State<AppHomePage> createState() => _AppHomePageState();
}

class _AppHomePageState extends State<AppHomePage> {

  late NotchBottomBarController notchBottomBarController;

  @override
  void initState() {
    notchBottomBarController = NotchBottomBarController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    return AutoTabsScaffold(
      routes: const [
        HomeRoute(),
        ChatRoute(),
      ],
      transitionBuilder: (context, child, animation) {
        const begin = Offset(1.0, 0.0);
        const end = Offset.zero;
        const curve = Curves.fastOutSlowIn;

        if ((context.tabsRouter.previousIndex ?? 0) <
            context.tabsRouter.activeIndex) {
          return SlideTransition(
            position: animation.drive(
              Tween(begin: begin, end: end).chain(
                CurveTween(
                  curve: curve,
                ),
              ),
            ),
            child: child,
          );
        } else {
          return SlideTransition(
            position: animation.drive(
              Tween(begin: -begin, end: -end).chain(
                CurveTween(curve: curve),
              ),
            ),
            child: child,
          );
        }
      },
      animationCurve: Curves.easeInOut,
      resizeToAvoidBottomInset: false,
      appBarBuilder: (context, tabsRouter) => HarvestHeroAppBar(
        centerTitle: true,
        appBarTitleText: getAppBarText(tabsRouter.activeIndex),
        actions: const [],
      ),
      bottomNavigationBuilder: (context, tabsRouter) => SafeArea(
        bottom: true,
        child: AnimatedNotchBottomBar(
          onTap: (value) => tabsRouter.setActiveIndex(value),
          notchBottomBarController: notchBottomBarController,
          kIconSize: kPadding * 3,
          kBottomRadius: kPadding * 3,
          notchColor: theme.colorScheme.primary,
          itemLabelStyle: theme.textTheme.labelLarge?.copyWith(
            color: colorScheme.primary,
          ),
          circleMargin: kPadding * 3,
          bottomBarItems: [
            BottomBarItem(
              inActiveItem: Icon(Icons.home_outlined, color: colorScheme.primary,),
              activeItem: Icon(Icons.home, color: colorScheme.onPrimary,),
              itemLabel: 'Home',
            ),
            BottomBarItem(
              inActiveItem: Icon(Icons.chat_bubble_outline, color: colorScheme.primary,),
              activeItem: Icon(Icons.chat_bubble, color: theme.colorScheme.onPrimary,),
              itemLabel: 'Chat',
            ),
            BottomBarItem(
              inActiveItem: Icon(Icons.shopping_bag_outlined, color: colorScheme.primary,),
              activeItem: Icon(Icons.shopping_bag, color: theme.colorScheme.onPrimary,),
              itemLabel: 'Shop',
            ),
          ],
        ),
      ),
    );
  }

  String getAppBarText(int activeIndex) {
    switch (activeIndex) {
      case 0:
        return kAppBarTitle;
      case 1:
        return 'Lists';
      case 2:
        return 'Profile';
      default:
        return 'Not Found';
    }
  }
}
