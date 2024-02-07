import 'package:flutter/material.dart';

enum GenderEnum {
  male(
    title: 'Male',
  ),
  female(
    title: 'Female'
  );

  final String title;
  final Color? color;

  const GenderEnum({
    required this.title,
    this.color,
  });
}