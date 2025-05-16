
import 'package:flutter/material.dart';
import 'package:bmi_app/core/theme/theme.dart';
import 'package:bmi_app/features/bmi_calculator/models/bmi_model.dart';

class ResultBox extends StatelessWidget {
  ResultBox({super.key, required this.data, required this.isDarkMode});

  final BmiModel data;
  final bool isDarkMode;

  Color get _categoryColor =>
      AppTheme.getCategoryColor(data.bmiCategory, isDarkMode);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: AppTheme.cardDecoration(isDarkMode),
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Your BMI is',
            style: AppTheme.titleStyle.copyWith(
              color: Theme.of(context).textTheme.bodyMedium!.color,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            data.bmiValue.toStringAsFixed(1),
            style: AppTheme.resultValueStyle.copyWith(color: _categoryColor),
          ),
          const SizedBox(height: 12),
          Text(
            data.bmiCategory,
            style: AppTheme.resultCategoryStyle.copyWith(color: _categoryColor),
          ),
          const SizedBox(height: 20),
          Text(
            data.bmiDes,
            style: AppTheme.resultDescriptionStyle.copyWith(
              color: Theme.of(context).textTheme.bodyMedium!.color,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}
