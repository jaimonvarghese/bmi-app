import 'package:flutter/material.dart';
import 'package:bmi_app/core/theme/theme.dart';

class WeightSliderBox extends StatelessWidget {
  const WeightSliderBox({
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

          // Value
          Text(
            '${value.toInt()} $unit',
            style: AppTheme.resultValueStyle.copyWith(
              fontSize: 36,  // scale down from your 72 default
              color: theme.textTheme.bodyLarge?.color,
            ),
          ),

          const SizedBox(height: 8),

          // Slider
          Slider(
            value: value,
            min: min,
            max: max,
            divisions: (max - min).toInt(),
            label: value.toInt().toString(),
            onChanged: onChanged,
            // colors come from your AppTheme.sliderTheme
          ),
        ],
      ),
    );
  }
}
