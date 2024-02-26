import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app_flutter_bloc_vineeth/presentation/routes/router_imports.dart';


import 'core/constant/my_strings.dart';
import 'core/themes/app_themes.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      useInheritedMediaQuery: true,
      child: MaterialApp.router(
        title: MyStrings.appName,
        theme: AppThemes.light,
        darkTheme: AppThemes.dark,
        routerConfig: _appRouter.config(),
      ),
    );
  }
}