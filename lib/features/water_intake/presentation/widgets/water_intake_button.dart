import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:water_therapy/features/water_intake/presentation/bloc/water_intake_bloc.dart';

class WaterIntakeButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GFButton(
      onPressed: () {
        context
            .read<WaterIntakeBloc>()
            .add(AddWaterIntakeEvent(250)); // 250ml per glass
      },
      text: 'I Drank Water',
    );
  }
}
