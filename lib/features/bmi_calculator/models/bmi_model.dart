import 'package:bmi_app/core/constants/app_constants.dart';

class BmiModel {
  final double height;
  final double weight;
  final double bmiValue;
  final String bmiCategory;
  final String bmiDes;
  final String gender;

  BmiModel({
    required this.height,
    required this.weight,
    required this.bmiValue,
    required this.bmiCategory,
    required this.bmiDes,
    required this.gender,
  });

  factory BmiModel.initial() {
    return BmiModel(
      height: AppConstants.defaultHeight,
      weight: AppConstants.defaultWeight,
      bmiValue: 24.2,
      bmiCategory: AppConstants.normal,
      bmiDes: AppConstants.normalDesc,
      gender: AppConstants.defaultGender,
    );
  }
}
