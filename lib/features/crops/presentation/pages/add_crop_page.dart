import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:harvest_hero/features/app/presentation/app_reactive_date_field.dart';
import 'package:harvest_hero/features/crops/blocs/crops_cubit.dart';
import 'package:harvest_hero/features/crops/presentation/add_crop_app_bar.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../../configurations/theme/size_constants.dart';

@RoutePage()
class AddCropPage extends StatelessWidget {
  const AddCropPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cropCubit = context.read<CropsCubit>();
    final theme = Theme.of(context);
    final primaryColor = theme.colorScheme.primary;
    return Scaffold(
      appBar: const AddCropAppBar(),
      body: ReactiveFormBuilder(
        form: () => cropCubit.cropsForm,
        builder: (context, form, child) {
          return ListView(
            padding: const EdgeInsets.all(kPadding * 2),
            children: [
              Text(
                'Crop name',
                style: theme.textTheme.titleMedium
                    ?.copyWith(color: theme.colorScheme.onSurface),
              ),
              const SizedBox(height: kPadding / 2),
              ReactiveTextField(
                formControlName: 'name',
                decoration: const InputDecoration(),
              ),
              const SizedBox(height: kPadding * 1.5),
              Text(
                'Quantity',
                style: theme.textTheme.titleMedium
                    ?.copyWith(color: theme.colorScheme.onSurface),
              ),
              const SizedBox(height: kPadding / 2),
              BlocBuilder<CropsCubit, CropsState>(
                builder: (context, state) {
                  return Row(
                    children: [
                      Expanded(
                        child: ReactiveTextField(
                          formControlName: 'quantity',
                          decoration: const InputDecoration(),
                        ),
                      ),
                      const SizedBox(width: kPadding),
                      Container(
                        padding: const EdgeInsets.all(kPadding / 2),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: theme.colorScheme.onPrimaryContainer,
                          ),
                          borderRadius: BorderRadius.circular(kPadding),
                        ),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton(
                            hint: const Text('-'),
                            value: state.quantityUnit,
                            onChanged: (value) {
                              if (value != null) {
                                cropCubit.updateQuantityUnit(value);
                              }
                            },
                            items: const [
                              DropdownMenuItem(
                                value: 'kg',
                                child: Text('kg'),
                              ),
                              DropdownMenuItem(
                                value: 'units',
                                child: Text('units'),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
              const SizedBox(height: kPadding * 1.5),
              Text(
                'Price',
                style: theme.textTheme.titleMedium
                    ?.copyWith(color: theme.colorScheme.onSurface),
              ),
              const SizedBox(height: kPadding / 2),
              ReactiveTextField(
                formControlName: 'price',
                decoration: const InputDecoration(),
              ),
              const SizedBox(height: kPadding * 1.5),
              Text(
                'Crop sowed on',
                style: theme.textTheme.titleMedium
                    ?.copyWith(color: theme.colorScheme.onSurface),
              ),
              const SizedBox(height: kPadding / 2),
              AppReactiveDateField(
                formControlName: 'cropSowedOn',
                firstDate: DateTime.now().subtract(
                  const Duration(days: 365),
                ),
                lastDate: DateTime.now(),
              ),
              const SizedBox(height: kPadding * 1.5),
              Text(
                'Expected harvesting date',
                style: theme.textTheme.titleMedium
                    ?.copyWith(color: theme.colorScheme.onSurface),
              ),
              const SizedBox(height: kPadding / 2),
              AppReactiveDateField(
                formControlName: 'expectedHarvestDate',
                firstDate: DateTime.now(),
                lastDate: DateTime.now().add(
                  const Duration(
                    days: 365,
                  ),
                ),
              ),
              const SizedBox(height: kPadding * 2),
              Padding(
                padding: const EdgeInsets.all(kPadding * 2),
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    'Add Crop',
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
