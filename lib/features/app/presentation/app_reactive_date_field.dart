import 'package:flutter/material.dart';
import 'package:harvest_hero/configurations/configurations.dart';
import 'package:intl/intl.dart';
import 'package:reactive_forms/reactive_forms.dart';

class AppReactiveDateField extends StatelessWidget {
  const AppReactiveDateField(
      {super.key,
      required this.formControlName,
      required this.firstDate,
      required this.lastDate, this.suffix});

  final String formControlName;
  final DateTime firstDate;
  final DateTime lastDate;
  final Widget? suffix;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final primaryColor = Theme.of(context).colorScheme.primary;
    return ReactiveValueListenableBuilder<DateTime>(
      formControlName: formControlName,
      builder: (context, formControl, child) {
        final formatter = DateFormat('dd MMMM yyyy');
        final value = formControl.value;
        return Row(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: kPadding,
                  vertical: kPadding * 2,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(kPadding),
                  border: Border.all(
                    color: theme.colorScheme.onPrimaryContainer,
                  ),
                ),
                child: Row(
                  children: [
                    if (value != null) ...[
                      Icon(
                        Icons.date_range,
                        color: primaryColor,
                      ),
                      const SizedBox(width: kPadding),
                      Text(
                        formatter.format(value),
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(
                              color: primaryColor,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      const SizedBox(width: kPadding),
                      if (formControl.enabled)
                        GestureDetector(
                          onTap: () {
                            formControl.value = null;
                          },
                          child: Icon(
                            Icons.clear,
                            color: primaryColor,
                          ),
                        ),
                    ] else
                      child ?? const Offstage(),
                  ],
                ),
              ),
            ),
            const SizedBox(width: kPadding),
            suffix ?? const Offstage(),
          ],
        );
      },
      child: ReactiveDatePicker(
        builder: (context, picker, child) {
          return GestureDetector(
            onTap: picker.showPicker,
            child: Row(
              children: [
                Icon(
                  Icons.date_range,
                  color: Theme.of(context).primaryColor,
                ),
                const SizedBox(width: kPadding),
                Text(
                  'Select Date',
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          );
        },
        firstDate: firstDate,
        lastDate: lastDate,
        formControlName: formControlName,
      ),
    );
  }
}
