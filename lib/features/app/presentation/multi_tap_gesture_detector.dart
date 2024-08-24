import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class MultiTapGestureDetector extends StatelessWidget {
  const MultiTapGestureDetector({
    super.key,
    required this.child,
    required this.onTap,
    this.requiredTaps = 3,
  });

  final Widget child;
  final int requiredTaps;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return RawGestureDetector(
      gestures: {
        SerialTapGestureRecognizer:
            GestureRecognizerFactoryWithHandlers<SerialTapGestureRecognizer>(
                () => SerialTapGestureRecognizer(),
                (SerialTapGestureRecognizer instance) {
          instance.onSerialTapDown = (SerialTapDownDetails details) {
            if (details.count == requiredTaps) {
              onTap.call();
            }
          };
        })
      },
      child: child,
    );
  }
}
