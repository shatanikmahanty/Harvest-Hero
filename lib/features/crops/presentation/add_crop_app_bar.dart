import 'package:flutter/material.dart';
import 'package:harvest_hero/configurations/configurations.dart';

class AddCropAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AddCropAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SafeArea(
      child: Container(
        height: preferredSize.height,
        padding: const EdgeInsets.symmetric(
          vertical: kPadding * 2,
          horizontal: kPadding,
        ),
        decoration: BoxDecoration(
          color: theme.colorScheme.primary,
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(kPadding * 2),
            bottomRight: Radius.circular(kPadding * 2),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            AutoLeadingButton(
              color: theme.colorScheme.onPrimary,
            ),
            const SizedBox(width: kPadding * 2),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Create a new crop',
                    style: theme.textTheme.headlineSmall?.copyWith(
                        color: theme.colorScheme.onPrimary,
                        fontWeight: FontWeight.normal),
                  ),
                  Expanded(
                    child: Text(
                      'Add details of your crop for future tracking and analytics',
                      style: theme.textTheme.titleMedium?.copyWith(
                          color: theme.colorScheme.onPrimary,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kPadding * 18);
}
