import 'package:flutter/material.dart';
import 'package:route_task/config/routes/app_routs.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      onGenerateRoute: (settings) => AppRoutes.onGenerate(settings),
    );
  }
}
