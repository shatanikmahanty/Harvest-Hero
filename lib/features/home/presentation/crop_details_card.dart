import 'package:flutter/material.dart';
import 'package:harvest_hero/features/crops/data/models/crop_model.dart';
import 'package:intl/intl.dart';

import '../../../configurations/configurations.dart';

class CropDetailsCard extends StatelessWidget {
  const CropDetailsCard({super.key, required this.cropModel});

  final CropModel cropModel;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final dateFormatter = DateFormat('dd MMMM yyyy');
    return Container(
      margin: const EdgeInsets.all(kPadding),
      padding: const EdgeInsets.symmetric(
          horizontal: kPadding * 4, vertical: kPadding * 2),
      decoration: BoxDecoration(
        color: AppColors.cropDetailCard,
        borderRadius: BorderRadius.circular(kPadding * 3),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircularProgressIndicator(
            value: 1 - getCircularIndicatorValueBasedOnRemainingDays(
              cropModel.sowedOn,
              cropModel.harvestDate,
            ),
            backgroundColor: colorScheme.onPrimary,
          ),
          const SizedBox(width: kPadding * 3),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                cropModel.name,
                style: theme.textTheme.titleLarge?.copyWith(
                    color: colorScheme.onSurface, fontWeight: FontWeight.w400),
              ),
              Text(
                '${cropModel.quantity} ${cropModel.quantityUnit}',
                style: theme.textTheme.titleMedium?.copyWith(
                    color: colorScheme.onSurface, fontWeight: FontWeight.w400),
              ),
              Text(
                "Sowed on : ${dateFormatter.format(cropModel.sowedOn)}",
                style: theme.textTheme.titleMedium?.copyWith(
                    color: colorScheme.onSurface, fontWeight: FontWeight.w400),
              ),
              Text(
                "Expected date : ${dateFormatter.format(cropModel.harvestDate)}",
                style: theme.textTheme.titleMedium?.copyWith(
                    color: colorScheme.onSurface, fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ],
      ),
    );
  }

  double getCircularIndicatorValueBasedOnRemainingDays(
    DateTime sowedOn,
    DateTime harvestDate,
  ) {
    final totalDays = harvestDate.difference(sowedOn).inDays;
    final daysRemaining = harvestDate.difference(DateTime.now()).inDays;
    return daysRemaining / totalDays;
  }
}
