import 'package:flutter/material.dart';

enum TargetMuscleEnum {

  upperBody(
    title: 'Upper Body'
  ),

  lowerBody(
    title: 'Lower Body'
  ),

  wholeBody(
    title: 'Whole Body'
  ),

  chest(
    title: 'Chest',
  ),

  lats(
    title: 'Lats',
  ),

  middleBack(
    title: 'Middle Back',
  ),

  lowerBack(
    title: 'Lower Back',
  ),

  shoulders(
    title: 'Shoulders',
  ),

  biceps(
    title: 'Biceps',
  ),

  triceps(
    title: 'Triceps',
  ),

  trapezius(
    title: 'Trapezius',
  ),

  neck(
    title: 'Neck',
  ),

  forearms(
    title: 'Forearms',
  ),

  abdominals(
    title: 'Abdominals',
  ),

  core(
    title: 'Core',
  ),

  quadriceps(
    title: 'Quadriceps',
  ),

  hipFlexors(
    title: 'Hip Flexors',
  ),

  obliques(
    title: 'Obliques',
  ),

  hamstrings(
    title: 'Hamstrings',
  ),

  calves(
    title: 'Calves',
  ),

  glutes(
    title: 'Glutes',
  ),

  adductors(
    title: 'Adductors',
  ),

  abductors(
    title: 'Abductors',
  );

  final String title;
  final Color? color;

  const TargetMuscleEnum({
    required this.title,
    this.color,
  });
}