import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:water_intake_app/blocs/water_intake_bloc.dart';
// import 'package:water_intake_app/pages/home_page.dart';
// import 'package:water_intake_app/services/notification_service.dart';
import 'package:water_therapy/features/water_intake/domain/usecases/notification_service.dart';
import 'package:water_therapy/features/water_intake/presentation/bloc/water_intake_bloc.dart';
import 'package:water_therapy/features/water_intake/presentation/pages/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final notificationService = NotificationService();
  await notificationService.init();
  await notificationService.scheduleDailyNotifications();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (context) => WaterIntakeBloc(),
        child: HomePage(),
      ),
    );
  }
}
