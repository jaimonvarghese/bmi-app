import 'package:bmi_app/core/constants/app_constants.dart';
import 'package:bmi_app/core/providers/theme_provider.dart';
import 'package:bmi_app/features/bmi_calculator/view/widgets/gender_button.dart';
import 'package:bmi_app/features/bmi_calculator/view/widgets/height_slider_box.dart';
import 'package:bmi_app/features/bmi_calculator/view/widgets/reset_button.dart';
import 'package:bmi_app/features/bmi_calculator/view/widgets/result_box.dart';
import 'package:bmi_app/features/bmi_calculator/view/widgets/toggle_theme_button.dart';
import 'package:bmi_app/features/bmi_calculator/view/widgets/weight_slider_box.dart';
import 'package:bmi_app/features/bmi_calculator/viewmodel/providers/bmi_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer2<ThemeProvider, BMIProvider>(
      builder: (context, themeProv, bmiProv, _) {
        final isDark = themeProv.isDarkMode;
        final data = bmiProv.bmiData;

        return Scaffold(
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 30),

                //topsection
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Welcome 😊",
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        const SizedBox(height: 4),
                        Text(
                          "BMI Calculator",
                          style: Theme.of(context).textTheme.bodyLarge!
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),

                    Spacer(),
                    // Theme toggle
                    Align(
                      alignment: Alignment.centerRight,
                      child: ToggleThemButton(
                        isDark: isDark,
                        onTap: () {
                          themeProv.toggleTheme();
                        },
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 20),

                // Gender selector
                Row(
                  children: [
                    GenderButton(
                      label: 'Male',
                      icon: Icons.male,
                      selected: data.gender == 'Male',
                      onTap: () => bmiProv.updateGender('Male'),
                    ),
                    const SizedBox(width: 16),
                    GenderButton(
                      label: 'Female',
                      icon: Icons.female,
                      selected: data.gender == 'Female',
                      onTap: () => bmiProv.updateGender('Female'),
                    ),
                  ],
                ),

                const SizedBox(height: 20),

                // Inputs row: Vertical Height + Horizontal Weight
                Expanded(
                  child: Row(
                    children: [
                      // Vertical Height card
                      HeightSliderBox(
                        title: 'Height',
                        unit: 'cm',
                        value: data.height,
                        min: AppConstants.minHeight,
                        max: AppConstants.maxHeight,
                        onChanged: bmiProv.updateHeight,
                      ),

                      const SizedBox(width: 24),

                      // Weight card
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            WeightSliderBox(
                              title: 'Weight',
                              unit: 'kg',
                              value: data.weight,
                              min: AppConstants.minWeight,
                              max: AppConstants.maxWeight,
                              onChanged: bmiProv.updateWeight,
                            ),
                            SizedBox(height: 10),
                            // Reset button
                            Expanded(
                              child: ResetButton(
                                isDark: isDark,
                                onPressed: () {
                                  bmiProv.resetBMI();
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 25),

                // Live result box
                ResultBox(data: data, isDarkMode: isDark,),
                SizedBox(height: 15),
              ],
            ),
          ),
        );
      },
    );
  }
}
