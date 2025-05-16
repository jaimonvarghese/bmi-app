import 'package:flutter/material.dart';

class ToggleThemButton extends StatelessWidget {
  const ToggleThemButton({
    super.key,
    required this.isDark,
    required this.onTap,
  });

  final bool isDark;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Icon(
          isDark ? Icons.light_mode : Icons.dark_mode,
          size: 24,
          color: isDark ? Colors.yellowAccent : Colors.grey[800],
        ),
      ),
    );
  }
}
