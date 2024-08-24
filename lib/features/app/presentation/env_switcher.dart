import 'package:djangoflow_app/djangoflow_app.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../app/app.dart';

class EnvironmentSwitcher extends StatelessWidget {
  const EnvironmentSwitcher({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiTapGestureDetector(
      onTap: () {
        if (kReleaseMode) {
          return;
        }

        context.read<AppCubit>().toggleEnvironment();
      },
      requiredTaps: 5,
      child: child,
    );
  }
}
