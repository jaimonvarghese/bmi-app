import 'package:flutter/material.dart';
import 'package:bmi_app/core/theme/theme.dart';

class HeightSliderBox extends StatelessWidget {
  const HeightSliderBox({
    super.key,
    required this.title,
    required this.unit,
    required this.value,
    required this.min,
    required this.max,
    required this.onChanged,
  });

  final String title;
  final String unit;
  final double value;
  final double min;
  final double max;
  final ValueChanged<double> onChanged;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Container(
      width: 100,
      padding: const EdgeInsets.all(16),
      decoration: AppTheme.cardDecoration(isDark),
      child: Column(
        children: [
          // Title
          Text(
            title,
            style: AppTheme.labelStyle.copyWith(
              color: theme.textTheme.bodyLarge?.color,
            ),
          ),

          const SizedBox(height: 8),

          // Big value
          Text(
            '${value.toInt()} $unit',
            style: AppTheme.resultValueStyle.copyWith(
              fontSize: 36,                  // scale down from default
              color: theme.textTheme.bodyLarge?.color,
            ),
          ),

          const SizedBox(height: 16),

          // Vertical slider
          Expanded(
            child: RotatedBox(
              quarterTurns: -1,
              child: Slider(
                value: value,
                min: min,
                max: max,
                divisions: (max - min).toInt(),
                label: value.toInt().toString(),
                onChanged: onChanged,
                // colors will come from theme.sliderTheme
              ),
            ),
          ),
        ],
      ),
    );
  }
}
