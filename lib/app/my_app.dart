import 'package:flutter/material.dart';
import 'package:mvvmapp/presentaion/resources/routes_manger.dart';
import 'package:mvvmapp/presentaion/resources/theme_manager.dart';

class MyApp extends StatefulWidget {
  const MyApp._internal();
  static const MyApp _instance = MyApp._internal();
  factory MyApp() => _instance;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.getRoute,
      initialRoute: RoutesManger.splashRoute,
      theme: getAppTheme(),
    );
  }
}
