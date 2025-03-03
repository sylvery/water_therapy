import 'package:bloc/bloc.dart';

part 'water_intake_event.dart';
part 'water_intake_state.dart';

class WaterIntakeBloc extends Bloc<WaterIntakeEvent, WaterIntakeState> {
  int totalIntake = 0;

  WaterIntakeBloc() : super(WaterIntakeInitial());

  @override
  Stream<WaterIntakeState> mapEventToState(WaterIntakeEvent event) async* {
    if (event is AddWaterIntakeEvent) {
      totalIntake += event.amount;
      yield WaterIntakeUpdated(totalIntake);
    } else if (event is ResetWaterIntakeEvent) {
      totalIntake = 0;
      yield WaterIntakeUpdated(totalIntake);
    }
  }
}
