import 'package:flutter/material.dart';

enum ActivityLevelEnum {

  sedentary(
    title: 'Sedentary',
  ),

  lightlyActive(
    title: 'Lightly Active',
  ),

  moderatelyActive(
    title: 'Moderately Active',
  ),

  vigorouslyActive(
    title: 'Vigorously Active',
  ),

  veryActive(
   title: 'Very Active',
  );

 final String title;
 final Color? color;

 const ActivityLevelEnum({
  required this.title,
  this.color,
 });
}