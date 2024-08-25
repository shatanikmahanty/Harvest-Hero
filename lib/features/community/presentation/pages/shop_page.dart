import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Center(
      child: Text(
        'Coming Soon!',
        style: theme.textTheme.titleLarge?.copyWith(
          color: theme.primaryColor,
        ),
      ),
    );
  }
}
