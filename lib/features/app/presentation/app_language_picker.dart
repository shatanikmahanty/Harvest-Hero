import 'package:djangoflow_app/djangoflow_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:harvest_hero/configurations/configurations.dart';

class AppLanguagePicker extends StatelessWidget {
  const AppLanguagePicker({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: kPadding * 15,
      child: BlocBuilder<AppCubit, AppState>(
        builder: (context, state) {
          return DropdownButtonFormField<String>(
            value: state.locale,
            onChanged: (String? language) {
              if(language != null) {
                context.read<AppCubit>().updateLocale(language);
              }
            },
            items: {'en': 'English', 'ben': 'Bengali'}
                .map((key, value) {
                  return MapEntry(
                    key,
                    DropdownMenuItem<String>(
                      value: key,
                      child: Text(value),
                    ),
                  );
                })
                .values
                .toList(),
          );
        },
      ),
    );
  }
}
