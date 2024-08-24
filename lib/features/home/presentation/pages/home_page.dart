import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:harvest_hero/features/home/presentation/crop_details_card.dart';
import 'package:harvest_hero/features/home/presentation/weather_card.dart';

import '../../../../configurations/router/router.gr.dart';
import '../../../../configurations/theme/colors.dart';
import '../../../../configurations/theme/size_constants.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: theme.colorScheme.onPrimary,
          leading: const Icon(Icons.menu, size: kPadding * 4),
          title: Text(
            "HelpFarmer",
            style: theme.textTheme.titleLarge?.copyWith(
              color: AppColors.heading,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: kPadding * 2),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kPadding * 2),
              child: Text(
                "Weather updates",
                style: theme.textTheme.titleLarge?.copyWith(
                  color: AppColors.heading,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            const SizedBox(
              height: kPadding / 2,
            ),
            const WeatherCard(),
            const SizedBox(
              height: kPadding,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kPadding * 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Crops Harvested",
                    style: theme.textTheme.titleLarge?.copyWith(
                      color: AppColors.heading,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  SizedBox(
                    height: kPadding * 4,
                    width: kPadding * 4,
                    child: IconButton(
                      onPressed: () {
                        context.router.push(const AddCropRoute());
                      },
                      icon: const Icon(Icons.add),
                      color: theme.colorScheme.onPrimary,
                      style: IconButton.styleFrom(
                          backgroundColor: theme.colorScheme.onPrimaryContainer,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(kPadding / 1.5),
                          ),
                          padding: EdgeInsets.zero),
                    ),
                  ),
                ],
              ),
            ),
            const CropDetailsCard(),
          ],
        ),
      ),
    );
  }
}
