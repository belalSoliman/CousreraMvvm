import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mvvmapp/presentaion/resources/assets_manager.dart';
import 'package:mvvmapp/presentaion/resources/color_manager.dart';
import 'package:mvvmapp/presentaion/resources/constant_manger.dart';
import 'package:mvvmapp/presentaion/resources/routes_manger.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  Timer? _timer;
  _startDelay() {
    _timer =
        Timer(const Duration(seconds: ConstantManger.splashDelay), _goNext);
  }

  _goNext() {
    Navigator.pushReplacementNamed(context, RoutesManger.onBoarding);
  }

  @override
  void initState() {
    super.initState();
    _startDelay();
  }

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

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
