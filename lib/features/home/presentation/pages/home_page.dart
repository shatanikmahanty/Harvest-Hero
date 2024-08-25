import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:harvest_hero/configurations/configurations.dart';
import 'package:harvest_hero/features/crops/blocs/crops_cubit.dart';
import 'package:harvest_hero/features/home/blocs/weather_cubit.dart';
import 'package:harvest_hero/features/home/presentation/crop_details_card.dart';
import 'package:harvest_hero/features/home/presentation/weather_card.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    context.read<WeatherCubit>().updateWeather(22.9638, 88.5245);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final appLocalizations = AppLocalizations.of(context);
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            const SizedBox(height: kPadding * 2),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kPadding * 2),
              child: Text(
                appLocalizations!.weatherUpdates,
                style: theme.textTheme.titleLarge
                    ?.copyWith(color: colorScheme.onSecondaryContainer),
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
                    appLocalizations.cropsHarvested,
                    style: theme.textTheme.titleLarge?.copyWith(
                      color: colorScheme.onSecondaryContainer,
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
                      color: colorScheme.onPrimary,
                      style: IconButton.styleFrom(
                          backgroundColor: colorScheme.primary,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(kPadding / 1.5),
                          ),
                          padding: EdgeInsets.zero),
                    ),
                  ),
                ],
              ),
            ),
            BlocBuilder<CropsCubit, CropsState>(builder: (context, state) {
              final crops = state.crops;
              if (state.isLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              return Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    final crop = crops[index];
                    return CropDetailsCard(cropModel: crop);
                  },
                  itemCount: crops.length,
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
