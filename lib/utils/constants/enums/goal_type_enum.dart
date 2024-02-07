import 'package:flutter/material.dart';

enum GoalTypeEnum {

  displayMildWeightLoss(
    title: 'Mild Weight Loss',
  ),

  weightLoss(
    title: 'Weight Loss',
  ),

  displayExtremeWeightLoss(
    title: 'Extreme Weight Loss',),

  maintenance(
    title: 'Maintenance',
  ),

  displayMildWeightGain(
    title: 'Mild Weight Gain',
  ),

  weightGain(
    title: 'Weight Gain',),

  displayExtremeWeightGain(
    title: 'Extreme Weight Gain',
  );

  final String title;
  final Color? color;

  const GoalTypeEnum({
    required this.title,
    this.color,
  });
}