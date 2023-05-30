import 'package:flutter/material.dart';
import 'package:page_controller/assets.dart';
import 'package:page_controller/color_utils.dart';
import 'package:page_controller/components/data_source.dart';
import 'package:page_controller/components/asset_view_model.dart';

class ContentDataSource implements DataSource {
  @override
  List<PageViewModel> viewModels = [];

  @override
  DataSourceDelegate? delegate;

  void setupDelegate(DataSourceDelegate delegate) {
    this.delegate = delegate;
  }

  ContentDataSource() {
    viewModels = [
      PageViewModel(
          id: 0,
          pageType: Type.fallAsleep,
          bgColor: const Color(0xFF642828),
          cloudSeed: 500,
          color: ColorUtils.shiftHsl(const Color(0xFF688750), .15),
          textureViewModel: AssetViewModel(
              fileName: ImagePaths.roller2,
              color: const Color(0xff688750),
              flipX: true,
              initialScale: 1.15,
              tween: Tween(begin: 0, end: 1)),
          backgroundViewModel: AssetViewModel(
              fileName: 'assets/images/great_wall_of_china/sun.png',
              initialOffset: const Offset(0, 50),
              heightFactor: .25,
              minHeight: 120,
              offset: const Offset(-65, -300)),
          foregroundViewModels: [
            AssetViewModel(
                fileName:
                    'assets/images/great_wall_of_china/foreground-left.png',
                alignment: Alignment.bottomCenter,
                initialScale: .9,
                initialOffset: const Offset(-40, 60),
                heightFactor: .85,
                fractionalOffset: const Offset(-.4, .45),
                zoomAmt: .25,
                dynamicHzOffset: -150),
            AssetViewModel(
                fileName:
                    'assets/images/great_wall_of_china/foreground-right.png',
                alignment: Alignment.bottomCenter,
                initialOffset: const Offset(20, 40),
                initialScale: .95,
                heightFactor: 1,
                fractionalOffset: const Offset(.4, .3),
                zoomAmt: .1,
                dynamicHzOffset: 150)
          ],
          middlegroundViewModel: AssetViewModel(
              fileName: 'assets/images/great_wall_of_china/great-wall.png',
              heightFactor: .65,
              minHeight: 250,
              zoomAmt: .05,
              fractionalOffset: const Offset(0, -.15))),
      PageViewModel(
          id: 1,
          pageType: Type.feelBetter,
          bgColor: const Color(0xFF444B9B),
          cloudSeed: 111,
          color: const Color(0xFF1B1A65),
          heightFactor: .8,
          alignment: Alignment.bottomCenter,
          textureViewModel: AssetViewModel(
              fileName: ImagePaths.roller1,
              color: const Color(0xFF444B9B),
              flipX: true,
              initialScale: 1.15,
              tween: Tween(begin: 0, end: 1)),
          backgroundViewModel: AssetViewModel(
              fileName: 'assets/images/petra/moon.png',
              initialOffset: const Offset(0, -150),
              heightFactor: .15,
              minHeight: 50,
              alignment: Alignment.topCenter,
              fractionalOffset: const Offset(-.7, 0)),
          foregroundViewModels: [
            AssetViewModel(
                fileName: 'assets/images/petra/foreground-left.png',
                alignment: Alignment.bottomCenter,
                initialOffset: const Offset(-80, 0),
                heightFactor: 1,
                fractionalOffset: const Offset(-.6, 0),
                zoomAmt: .03,
                dynamicHzOffset: -130),
            AssetViewModel(
                fileName: 'assets/images/petra/foreground-right.png',
                alignment: Alignment.bottomCenter,
                initialOffset: const Offset(80, 00),
                heightFactor: 1,
                fractionalOffset: const Offset(.55, 0),
                zoomAmt: .12,
                dynamicHzOffset: 130)
          ],
          middlegroundViewModel: AssetViewModel(
              fileName: 'assets/images/petra/petra.png',
              heightFactor: .65,
              minHeight: 500,
              zoomAmt: -1,
              fractionalOffset: Offset.zero)),
      PageViewModel(
          id: 2,
          pageType: Type.reduceStress,
          bgColor: const Color(0xFF1E736D),
          cloudSeed: 1,
          color: ColorUtils.shiftHsl(const Color(0xFF4AA39D), .15),
          textureViewModel: AssetViewModel(
              fileName: ImagePaths.roller1,
              color: Colors.white,
              initialScale: 1,
              tween: Tween(begin: 0, end: 0.75)),
          backgroundViewModel: AssetViewModel(
              fileName: 'assets/images/colosseum/sun.png',
              initialOffset: const Offset(0, 50),
              heightFactor: .25,
              minHeight: 100),
          foregroundViewModels: [
            AssetViewModel(
                fileName: 'assets/images/colosseum/foreground-left.png',
                alignment: Alignment.bottomCenter,
                initialScale: .9,
                initialOffset: const Offset(-40, 60),
                heightFactor: .65,
                offset: Offset.zero,
                fractionalOffset: const Offset(-.5, .1),
                zoomAmt: .05,
                dynamicHzOffset: -150),
            AssetViewModel(
                fileName: 'assets/images/colosseum/foreground-right.png',
                alignment: Alignment.bottomCenter,
                initialOffset: const Offset(20, 40),
                initialScale: .95,
                heightFactor: .75,
                fractionalOffset: const Offset(.5, .25),
                zoomAmt: .05,
                dynamicHzOffset: 150)
          ],
          middlegroundViewModel: AssetViewModel(
              fileName: 'assets/images/colosseum/colosseum.png',
              heightFactor: .6,
              minHeight: 200,
              zoomAmt: .15,
              fractionalOffset: const Offset(0, -.1))),
      PageViewModel(
          id: 3,
          pageType: Type.calmDown,
          bgColor: const Color(0xFF164F2A),
          cloudSeed: 2,
          color: const Color(0xFFE2CFBB),
          offset: const Offset(0, -30),
          textureViewModel: AssetViewModel(
              fileName: ImagePaths.roller2,
              color: const Color(0xffDC762A),
              initialScale: 1.15,
              flipY: true,
              tween: Tween(begin: 0, end: 0.5)),
          backgroundViewModel: AssetViewModel(
              fileName: 'assets/images/chichen_itza/sun.png',
              initialOffset: const Offset(0, 50),
              heightFactor: .4,
              minHeight: 200,
              fractionalOffset: const Offset(.55, -.35)),
          foregroundViewModels: [
            AssetViewModel(
                fileName: 'assets/images/chichen_itza/foreground-right.png',
                alignment: Alignment.bottomCenter,
                initialOffset: const Offset(20, 40),
                initialScale: .95,
                heightFactor: .4,
                fractionalOffset: const Offset(.5, -.1),
                zoomAmt: .1,
                dynamicHzOffset: 250),
            AssetViewModel(
                fileName: 'assets/images/chichen_itza/foreground-left.png',
                alignment: Alignment.bottomCenter,
                initialScale: .9,
                initialOffset: const Offset(-40, 60),
                heightFactor: .65,
                fractionalOffset: const Offset(-.4, .2),
                zoomAmt: .25,
                dynamicHzOffset: -250),
            AssetViewModel(
                fileName: 'assets/images/chichen_itza/top-left.png',
                alignment: Alignment.topLeft,
                initialScale: .9,
                initialOffset: const Offset(-40, 60),
                heightFactor: .65,
                fractionalOffset: const Offset(-.4, -.4),
                zoomAmt: .05,
                dynamicHzOffset: 100),
            AssetViewModel(
                fileName: 'assets/images/chichen_itza/top-right.png',
                alignment: Alignment.topRight,
                initialOffset: const Offset(20, 40),
                initialScale: .95,
                heightFactor: .65,
                fractionalOffset: const Offset(.35, -.4),
                zoomAmt: .05,
                dynamicHzOffset: -100)
          ],
          middlegroundViewModel: AssetViewModel(
              fileName: 'assets/images/chichen_itza/chichen.png',
              heightFactor: .4,
              minHeight: 180,
              zoomAmt: -.1)),
      PageViewModel(
          id: 4,
          pageType: Type.feelRelaxed,
          bgColor: const Color(0xFF1C4D46),
          cloudSeed: 78,
          color: const Color(0xFFED7967),
          clipBehavior: Clip.none,
          textureViewModel: AssetViewModel(
              fileName: ImagePaths.roller1,
              color: const Color(0xffFAE5C8),
              initialScale: 1.15,
              flipX: false,
              tween: Tween(begin: 0, end: 0.8)),
          backgroundViewModel: AssetViewModel(
              fileName: 'assets/images/christ_the_redeemer/sun.png',
              initialOffset: const Offset(0, 50),
              heightFactor: .25,
              minHeight: 120,
              fractionalOffset: const Offset(.7, -1.35)),
          foregroundViewModels: [
            AssetViewModel(
                fileName:
                    'assets/images/christ_the_redeemer/foreground-left.png',
                alignment: Alignment.bottomCenter,
                initialScale: .95,
                initialOffset: const Offset(-140, 60),
                heightFactor: .65,
                fractionalOffset: const Offset(-.25, .05),
                zoomAmt: .15,
                dynamicHzOffset: -100),
            AssetViewModel(
                fileName:
                    'assets/images/christ_the_redeemer/foreground-right.png',
                alignment: Alignment.bottomCenter,
                initialOffset: const Offset(120, 40),
                initialScale: .9,
                heightFactor: .55,
                fractionalOffset: const Offset(.35, .2),
                zoomAmt: .1,
                dynamicHzOffset: 100)
          ],
          middlegroundViewModel: AssetViewModel(
              fileName: 'assets/images/christ_the_redeemer/redeemer.png',
              heightFactor: 1,
              alignment: Alignment.bottomCenter,
              fractionalOffset: const Offset(0, .1),
              zoomAmt: .7)),
      PageViewModel(
          id: 5,
          pageType: Type.beCreative,
          bgColor: const Color(0xFF16184D),
          cloudSeed: 15,
          color: const Color(0xFF444B9B),
          textureViewModel: AssetViewModel(
              fileName: ImagePaths.roller2,
              color: const Color(0xFF797FD8),
              initialScale: 1.15,
              flipY: true,
              tween: Tween(begin: 0, end: 0.75)),
          backgroundViewModel: AssetViewModel(
              fileName: 'assets/images/pyramids/moon.png',
              initialOffset: const Offset(0, 50),
              heightFactor: .15,
              minHeight: 100,
              offset: const Offset(120, -200), // 1//
              zoomAmt: .05),
          foregroundViewModels: [
            AssetViewModel(
                fileName: 'assets/images/pyramids/foreground-back.png',
                alignment: Alignment.bottomCenter,
                initialOffset: const Offset(20, 40),
                initialScale: .95,
                heightFactor: .55,
                fractionalOffset: const Offset(.2, -.01),
                zoomAmt: .1,
                dynamicHzOffset: 150),
            AssetViewModel(
                fileName: 'assets/images/pyramids/foreground-front.png',
                alignment: Alignment.bottomCenter,
                initialScale: .9,
                initialOffset: const Offset(-40, 60),
                heightFactor: .55,
                fractionalOffset: const Offset(-.09, 0.02),
                zoomAmt: .25,
                dynamicHzOffset: -150)
          ],
          middlegroundViewModel: AssetViewModel(
              fileName: 'assets/images/pyramids/pyramids.png',
              heightFactor: .5,
              minHeight: 300,
              zoomAmt: -2,
              fractionalOffset: const Offset(0, -.15))),
      PageViewModel(
          id: 6,
          pageType: Type.beCreative,
          bgColor: const Color(0xFFC96454),
          cloudSeed: 2,
          color: const Color(0xFF642828),
          textureViewModel: AssetViewModel(
              fileName: ImagePaths.roller2,
              color: const Color(0xFFC96454),
              initialScale: 1.15,
              flipY: true,
              tween: Tween(begin: 0, end: 0.7)),
          backgroundViewModel: AssetViewModel(
              fileName: 'assets/images/taj_mahal/sun.png',
              initialOffset: const Offset(0, 50),
              heightFactor: .3,
              minHeight: 140,
              offset: const Offset(-150, -200)),
          foregroundViewModels: [
            AssetViewModel(
                fileName: 'assets/images/taj_mahal/foreground-right.png',
                alignment: Alignment.bottomRight,
                initialOffset: const Offset(20, 40),
                initialScale: .85,
                heightFactor: .5 + .4 * 0.2,
                fractionalOffset: const Offset(.3, 0),
                zoomAmt: .25),
            AssetViewModel(
                fileName: 'assets/images/taj_mahal/foreground-left.png',
                alignment: Alignment.bottomLeft,
                initialScale: .9,
                initialOffset: const Offset(-40, 60),
                heightFactor: .6 + .3 * 0.2,
                fractionalOffset: const Offset(-.3, 0),
                zoomAmt: .25,
                dynamicHzOffset: 0)
          ],
          middlegroundViewModel: AssetViewModel(
              fileName: 'assets/images/taj_mahal/taj-mahal.png',
              heightFactor: .6,
              minHeight: 230,
              zoomAmt: .05,
              fractionalOffset: const Offset(0, -.15))),
      PageViewModel(
          id: 7,
          pageType: Type.anotherType,
          bgColor: const Color(0xFF0E4064),
          cloudSeed: 37,
          color: const Color(0xFF0E4064),
          textureViewModel: AssetViewModel(
              fileName: ImagePaths.roller1,
              color: const Color(0xff1E736D),
              flipX: false,
              initialScale: 1,
              tween: Tween(begin: 0, end: 0.5)),
          backgroundViewModel: AssetViewModel(
              fileName: 'assets/images/machu_picchu/sun.png',
              initialOffset: const Offset(0, 50),
              heightFactor: .15,
              minHeight: 100,
              offset: const Offset(150, -200)),
          foregroundViewModels: [
            AssetViewModel(
                fileName: 'assets/images/machu_picchu/foreground-back.png',
                alignment: Alignment.bottomCenter,
                initialScale: .9,
                initialOffset: const Offset(0, 60),
                heightFactor: .6,
                fractionalOffset: const Offset(0, .2),
                zoomAmt: .05,
                dynamicHzOffset: 150),
            AssetViewModel(
                fileName: 'assets/images/machu_picchu/foreground-front.png',
                alignment: Alignment.bottomCenter,
                initialOffset: const Offset(20, 40),
                heightFactor: .6,
                initialScale: 1.2,
                fractionalOffset: const Offset(-.35, .4),
                zoomAmt: .2,
                dynamicHzOffset: -50)
          ],
          middlegroundViewModel: AssetViewModel(
              fileName: 'assets/images/machu_picchu/machu-picchu.png',
              heightFactor: .65,
              minHeight: 230,
              zoomAmt: -1,
              fractionalOffset: const Offset(-.05, -.12)))
    ];
  }
}
