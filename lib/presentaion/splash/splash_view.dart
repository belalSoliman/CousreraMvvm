import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mvvmapp/presentaion/resources/assets_manager.dart';
import 'package:mvvmapp/presentaion/resources/color_manager.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  Timer? _timer;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManger.primary,
      body: Center(
        child: Image.asset(
          ImageAssets.splashLogo,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
