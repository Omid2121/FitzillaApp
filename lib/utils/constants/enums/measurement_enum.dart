import 'package:flutter/material.dart';

enum MeasurementEnum {

  imperial(
    title: 'Imperial',
  ),

  metric(
    title: 'Metric',
  );

  final String title;
  final Color? color;

  const MeasurementEnum({
    required this.title,
    this.color,
  });
}