import 'package:bmi_app/core/theme/theme.dart';
import 'package:flutter/material.dart';

class ResetButton extends StatelessWidget {
  const ResetButton({super.key, required this.isDark, required this.onPressed});

  final bool isDark;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,

      decoration: AppTheme.cardDecoration(isDark),
      child: TextButton(
        onPressed: onPressed,
        style: AppTheme.buttonStyle(isDark),
        child: Text(
          "Reset",
          style: AppTheme.resultValueStyle.copyWith(
            fontSize: 20,
            color: Theme.of(context).textTheme.labelLarge?.color,
          ),
        ),
      ),
    );
  }
}
