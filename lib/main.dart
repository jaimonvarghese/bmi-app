import 'package:bmi_app/core/providers/theme_provider.dart';
import 'package:bmi_app/features/bmi_calculator/view/screens/home_view.dart';
import 'package:bmi_app/features/bmi_calculator/viewmodel/providers/bmi_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'core/theme/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
        ChangeNotifierProvider(create: (_) => BMIProvider()),
      ],
      child: Consumer<ThemeProvider>(
        builder: (context, themeProvider, _) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: "BMI Calculator",
            themeMode: themeProvider.themeMode,
            theme: AppTheme.getLightTheme(),
            darkTheme: AppTheme.getDarkTheme(),
            home: HomeView(),
          );
        },
      ),
    );
  }
}
