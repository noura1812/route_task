import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:route_task/config/routes/app_routs.dart';
import 'package:route_task/config/themes/light_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(430, 932),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) => MaterialApp(
              theme: Themes.lightTheme,
              debugShowCheckedModeBanner: false,
              initialRoute: '/',
              onGenerateRoute: (settings) => AppRoutes.onGenerate(settings),
            ));
  }
}
