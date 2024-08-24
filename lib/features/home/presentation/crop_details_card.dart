import 'package:flutter/material.dart';

import '../../../configurations/configurations.dart';

class CropDetailsCard extends StatelessWidget {
  const CropDetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;
    return Container(
      margin: const EdgeInsets.all(kPadding),
      padding: const EdgeInsets.symmetric(
          horizontal: kPadding * 4, vertical: kPadding * 2),
      decoration: BoxDecoration(
        color: AppColors.cropDetailCard,
        borderRadius: BorderRadius.circular(kPadding * 3),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.pie_chart_rounded,
            size: kPadding * 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Wheat",
                style: theme.textTheme.titleLarge?.copyWith(
                    color: colorScheme.onSurface, fontWeight: FontWeight.w400),
              ),
              Text(
                "20 kgs",
                style: theme.textTheme.titleMedium?.copyWith(
                    color: colorScheme.onSurface, fontWeight: FontWeight.w400),
              ),
              Text(
                "Harvested on : 15-06-2024",
                style: theme.textTheme.titleMedium?.copyWith(
                    color: colorScheme.onSurface, fontWeight: FontWeight.w400),
              ),
              Text(
                "Expected date : 30-10-2025",
                style: theme.textTheme.titleMedium?.copyWith(
                    color: colorScheme.onSurface, fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
