import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:getwidget/getwidget.dart';
// import 'package:water_intake_app/blocs/water_intake_bloc.dart';
// import 'package:water_intake_app/widgets/progress_chart_widget.dart';
// import 'package:water_intake_app/widgets/water_intake_button.dart';
import 'package:water_therapy/features/water_intake/presentation/bloc/water_intake_bloc.dart';
import 'package:water_therapy/features/water_intake/presentation/widgets/progress_chart_widget.dart';
import 'package:water_therapy/features/water_intake/presentation/widgets/water_intake_button.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Water Intake Tracker'),
      ),
      body: BlocBuilder<WaterIntakeBloc, WaterIntakeState>(
        builder: (context, state) {
          return Column(
            children: [
              // ProgressChartWidget(totalIntake: 0),
              WaterIntakeButton(),
            ],
          );
        },
      ),
    );
  }
}
