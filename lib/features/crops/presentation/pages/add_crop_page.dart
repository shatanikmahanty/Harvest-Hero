import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:harvest_hero/features/crops/blocs/crops_cubit.dart';
import 'package:harvest_hero/features/crops/presentation/add_crop_app_bar.dart';
import 'package:reactive_forms/reactive_forms.dart';

@RoutePage()
class AddCropPage extends StatelessWidget {
  const AddCropPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cropCubit = context.read<CropsCubit>();
    return Scaffold(
      appBar: const AddCropAppBar(),
      body: ReactiveFormBuilder(
        form: () => cropCubit.cropsForm,
        builder: (context, form, child) {
          return ListView(
            children: [
              ReactiveTextField(
                formControlName: 'name',
                decoration: const InputDecoration(
                ),
              ),
              ReactiveTextField(
                formControlName: 'quantity',
                decoration: const InputDecoration(
                  labelText: 'Crop Quantity',
                ),
              ),
              ReactiveTextField(
                formControlName: 'price',
                decoration: const InputDecoration(
                  labelText: 'Crop Price',
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
