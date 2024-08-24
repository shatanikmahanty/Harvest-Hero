import 'package:flutter/material.dart';
import 'package:harvest_hero/features/app/app.dart';

import '../../../../configurations/configurations.dart';

@RoutePage()
class UnknownPage extends StatelessWidget {
  const UnknownPage({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return HarvestHeroScaffold(
      appBarTitleText: 'Invalid Link',
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(kPadding * 2),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Whoops!',
              style: textTheme.titleMedium,
            ),
            const Text('Looks like we could not find what you are looking for!'),
          ],
        ),
      ),
    );
  }
}
