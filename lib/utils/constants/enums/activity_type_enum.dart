import 'package:flutter/material.dart';

enum ActivityTypeEnum {

  strengthTraining(
    title: 'Strength Training',
  ),

  cardiovascularExercise(
    title: 'Cardiovascular Exercise',
  ),

  flexibilityAndMobility(
    title: 'Flexibility and Mobility',
  ),

  functionalTraining(
    title: 'Functional Training',
  ),

  enduranceTraining(
    title: 'Endurance Training',
  ),

  sportsSpecificTraining(
    title: 'Sports Specific Training',
  ),

  bodyweightTraining(
    title: 'Bodyweight Training',
  ),

  balanceAndStability(
    title: 'Balance and Stability',
  ),

  coreStrength(
    title: 'Core Strength',
  ),

  rehabilitationAndInjuryPrevention(
    title: 'Rehabilitation and Injury Prevention',
  ),

  mindBodyConnection(
    title: 'Mind Body Connection',
  ),

  seniorFitness(
    title: 'Senior Fitness',
  ),

  homeWorkouts(
    title: 'Home Workouts',
  ),

  outdoorTraining(
    title: 'Outdoor Training',
  ),

  weightLossProgram(
    title: 'Weight Loss Program',
  ),

  nutritionAndFitness(
    title: 'Nutrition and Fitness',
  ),

  postnatalFitness(
    title: 'Postnatal Fitness',
  ),

  corporateWellness(
    title: 'Corporate Wellness',
  ),

  youthFitness(
    title: 'Youth Fitness',
  ),

  specialPopulations(
    title: 'Special Populations',
  );

  final String title;
  final Color? color;

  const ActivityTypeEnum({
    required this.title,
    this.color,
  });
}