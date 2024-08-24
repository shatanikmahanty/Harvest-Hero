import 'package:flutter/material.dart';
import 'package:harvest_hero/features/app/app.dart';

import '../../../configurations/configurations.dart';

class HarvestHeroAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HarvestHeroAppBar({
    super.key,
    this.appBarTitleText,
    this.appBarTitleWidget,
    this.actions,
    required this.centerTitle,
    this.elevation,
  });

  final String? appBarTitleText;
  final Widget? appBarTitleWidget;

  final List<Widget>? actions;
  final bool centerTitle;
  final double? elevation;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return EnvironmentSwitcher(
      child: Padding(
        padding: const EdgeInsets.all(kPadding),
        child: AppBar(
          backgroundColor: Colors.white,
          leadingWidth: kPadding * 6,
          elevation: elevation,
          centerTitle: centerTitle,
          leading: const Offstage(),
          title: appBarTitleText != null
              ? Text(
                  appBarTitleText!,
                  style: theme.textTheme.titleLarge?.copyWith(
                    color: AppColors.heading,
                    fontWeight: FontWeight.normal,
                  ),
                )
              : appBarTitleWidget,
          actions: actions,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kPadding * 8);
}
