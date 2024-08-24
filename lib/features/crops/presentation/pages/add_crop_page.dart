import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:harvest_hero/features/crops/presentation/add_crop_app_bar.dart';

@RoutePage()
class AddCropPage extends StatelessWidget {
  const AddCropPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AddCropAppBar(),
      body: Center(
        child: Text('Add Crop Page'),
      ),
    );
  }
}
