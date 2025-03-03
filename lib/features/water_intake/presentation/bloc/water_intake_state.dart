part of 'water_intake_bloc.dart';

abstract class WaterIntakeState {}

class WaterIntakeInitial extends WaterIntakeState {}

class WaterIntakeUpdated extends WaterIntakeState {
  final int totalIntake;
  WaterIntakeUpdated(this.totalIntake);
}
