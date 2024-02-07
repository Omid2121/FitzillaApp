import 'package:flutter/material.dart';

enum EquipmentEnum {
  none(
    title: 'None',
  ),
  bodyweight(
    title: 'Bodyweight',
  ),
  barbell(
    title: 'Barbell',
  ),
  dumbbell(
    title: 'Dumbbell',
  ),
  kettlebell(
    title: 'Kettlebell',
  ),
  bench(
    title: 'Bench',
  ),
  pullUpBar(
    title: 'Pull Up Bar',
  ),
  cable(
    title: 'Cable',
  ),
  machine(
    title: 'Machine',
  ),
  medicineBall(
    title: 'Medicine Ball',
  ),
  resistanceBand(
    title: 'Resistance Band',
  ),
  foamRoller(
    title: 'Foam Roller',
  ),
  wheel(
    title: 'Wheel',
  ),
  bosuBall(
    title: 'Bosu Ball',
  ),
  stabilityBall(
    title: 'Stability Ball',
  ),
  TRX(
    title: 'TRX',
  ),
  bar(
    title: 'Bar',
  ),
  plate(
    title: 'Plate',
  ),
  box(
    title: 'Box',
  ),
  wall(
    title: 'Wall',
  ),
  rack(
    title: 'Rack',
  ),
  bike(
    title: 'Bike',
  ),
  treadmill(
    title: 'Treadmill',
  ),
  rower(
    title: 'Rower',
  ),
  stairs(
    title: 'Stairs',
  ),
  sled(
    title: 'Sled',
  ),
  skiErg(
    title: 'Ski Erg',
  ),
  prowler(
    title: 'Prowler',
  ),
  squatRack(
    title: 'Squat Rack',
  ),
  dipStation(
    title: 'Dip Station',
  ),
  other(
    title: 'Other',
  );

  final String title;
  final Color? color;

  const EquipmentEnum({
    required this.title,
    this.color,
  });
}