import 'package:flutter/material.dart';
import 'package:mvvmapp/presentaion/forget_password/forget_password_view.dart';
import 'package:mvvmapp/presentaion/login/log_in.dart';
import 'package:mvvmapp/presentaion/main/main_view.dart';
import 'package:mvvmapp/presentaion/register/register_view.dart';
import 'package:mvvmapp/presentaion/resources/strings_manager.dart';
import 'package:mvvmapp/presentaion/splash/splash_view.dart';
import 'package:mvvmapp/presentaion/store_details/store_details_view.dart';

class RoutesManger {
  static const String splashRoute = "/";
  static const String logInRoute = "/login";
  static const String registerRoute = "/register";
  static const String forgetPasswordRoute = "/forgetPassword";
  static const String mainRoute = "/main";
  static const String storeDetailsRoute = "/storeDetail";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case RoutesManger.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case RoutesManger.logInRoute:
        return MaterialPageRoute(builder: (_) => const LogInView());
      case RoutesManger.registerRoute:
        return MaterialPageRoute(builder: (_) => const RegisterView());
      case RoutesManger.forgetPasswordRoute:
        return MaterialPageRoute(builder: (_) => const ForgetPasswordView());
      case RoutesManger.mainRoute:
        return MaterialPageRoute(builder: (_) => const MainView());
      case RoutesManger.storeDetailsRoute:
        return MaterialPageRoute(builder: (_) => const StoreDetailsView());
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              body: Center(
                child: Text(AppStrings.noRoute), //todo move to string manger
              ),
            ));
  }
}
