part of 'water_intake_bloc.dart';

abstract class WaterIntakeEvent {}

class AddWaterIntakeEvent extends WaterIntakeEvent {
  final int amount;
  AddWaterIntakeEvent(this.amount);
}

class ResetWaterIntakeEvent extends WaterIntakeEvent {}
