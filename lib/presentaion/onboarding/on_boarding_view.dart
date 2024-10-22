import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mvvmapp/presentaion/resources/assets_manager.dart';
import 'package:mvvmapp/presentaion/resources/color_manager.dart';
import 'package:mvvmapp/presentaion/resources/strings_manager.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  late final List<SliderObject> _list = _getSilderdata();
  PageController _pageController = PageController();
  int _currentPageIndex = 0;
  List<SliderObject> _getSilderdata() {
    return [
      SliderObject(ImageAssets.onBoardingLogo1, AppStrings.onBoardingTitle1,
          AppStrings.onBoardingSubTitle1),
      SliderObject(ImageAssets.onBoardingLogo2, AppStrings.onBoardingTitle2,
          AppStrings.onBoardingSubTitle2),
      SliderObject(ImageAssets.onBoardingLogo3, AppStrings.onBoardingTitle3,
          AppStrings.onBoardingSubTitle3),
      SliderObject(ImageAssets.onBoardingLogo4, AppStrings.onBoardingTitle4,
          AppStrings.onBoardingSubTitle4),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManger.white,
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: ColorManger.white,
            statusBarBrightness: Brightness.dark),
      ),
      body: PageView.builder(
        controller: _pageController,
        itemCount: _list.length,
        onPageChanged: (index) {
          setState(() {
            _currentPageIndex = index;
          });
        },
        itemBuilder: (context, index) {
          //onboardingPage
        },
      ),
    );
  }
}

class SliderObject {
  String title;
  String subTitle;
  String imageUrl;
  SliderObject(this.imageUrl, this.subTitle, this.title);
}
