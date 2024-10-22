import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mvvmapp/presentaion/resources/assets_manager.dart';
import 'package:mvvmapp/presentaion/resources/color_manager.dart';
import 'package:mvvmapp/presentaion/resources/strings_manager.dart';
import 'package:mvvmapp/presentaion/resources/values_manager.dart';

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
      // appBar: AppBar(
      //   systemOverlayStyle: SystemUiOverlayStyle(
      //       statusBarColor: ColorManger.white,
      //       statusBarBrightness: Brightness.dark),
      // ),
      body: PageView.builder(
        controller: _pageController,
        itemCount: _list.length,
        onPageChanged: (index) {
          setState(() {
            _currentPageIndex = index;
          });
        },
        itemBuilder: (context, index) {
          return OnBoardingPage(_list[index]);
        },
      ),
      bottomSheet: Container(
        color: ColorManger.white,
        height: AppSize.s100,
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                  onTap: () {},
                  child: Text(
                    AppStrings.skipOnBoarding,
                    textAlign: TextAlign.end,
                  )),
            ),
            _getbuttomsheet()
          ],
        ),
      ),
    );
  }

  Widget _getbuttomsheet() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.all(AppPadding.p14),
          child: GestureDetector(
              child: SizedBox(
                  width: AppSize.s20,
                  height: AppSize.s20,
                  child: SvgPicture.asset(ImageAssets.leftArrow))),
        ),
        Row(
          children: [
            for (int i = 0; i < _list.length; i++)
              Padding(
                padding: EdgeInsets.all(AppPadding.p8),
                child: _getProperCircle(i),
              )
          ],
        ),
        Padding(
          padding: EdgeInsets.all(AppPadding.p14),
          child: GestureDetector(
              child: SizedBox(
                  width: AppSize.s20,
                  height: AppSize.s20,
                  child: SvgPicture.asset(ImageAssets.rightArrow))),
        )
      ],
    );
  }

  _getProperCircle(int i) {
    if (i == _currentPageIndex) {
      return SvgPicture.asset(ImageAssets.circleoutline);
    } else {
      return SvgPicture.asset(ImageAssets.circlesolid);
    }
  }
}

class OnBoardingPage extends StatelessWidget {
  final SliderObject _sliderObject;
  OnBoardingPage(this._sliderObject, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(
          height: AppSize.s20,
        ),
        Padding(
          padding: EdgeInsets.all(AppPadding.p8),
          child: Text(
            _sliderObject.title,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineLarge,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(AppPadding.p8),
          child: Text(
            _sliderObject.subTitle,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        const SizedBox(
          height: AppSize.s60,
        ),
        SvgPicture.asset(_sliderObject.imageUrl)
      ],
    );
  }
}

class SliderObject {
  String title;
  String subTitle;
  String imageUrl;
  SliderObject(this.imageUrl, this.subTitle, this.title);
}
