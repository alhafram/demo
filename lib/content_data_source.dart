import 'package:flutter/material.dart';
import 'package:illustration/assets.dart';
import 'package:illustration/color_utils.dart';
import 'package:illustration/illustrations/data_source.dart';
import 'package:illustration/illustrations/view_models.dart';

class Delegate implements DataSourceDelegate {
  @override
  void pageDidOpened(int id) {
    print(id);
  }

  @override
  void pageDidTapMainButton() {
    print('tap');
  }
}

class ContentDataSource implements DataSource {
  @override
  List<IllustrationViewModel> viewModels = [];

  @override
  DataSourceDelegate delegate;

  ContentDataSource({required this.delegate}) {
    delegate = Delegate();
    viewModels = [
      IllustrationViewModel(
          id: 0, // type
          bgColor: const Color(0xFF642828),
          cloudSeed: 500,
          backgroundViewModel: IllustrationBackgroundViewModel(
              color: ColorUtils.shiftHsl(const Color(0xFF688750), .15),
              textureViewModel: IllustrationTextureViewModel(ImagePaths.roller2,
                  color: const Color(0xff688750),
                  flipX: true,
                  scale: 1.15,
                  tween: Tween(begin: 0, end: 1)),
              illustrationPieceViewModel: IllustrationPieceViewModel(
                  fileName: 'assets/images/great_wall_of_china/sun.png',
                  initialOffset: const Offset(0, 50),
                  heightFactor: .25,
                  minHeight: 120,
                  offset: const Offset(-65, -300))),
          illustrationForegroundViewModel:
              IllustrationForegroundViewModel(viewModels: [
            IllustrationPieceViewModel(
                fileName:
                    'assets/images/great_wall_of_china/foreground-left.png',
                alignment: Alignment.bottomCenter,
                initialScale: .9,
                initialOffset: const Offset(-40, 60),
                heightFactor: .85,
                fractionalOffset: const Offset(-.4, .45),
                zoomAmt: .25,
                dynamicHzOffset: -150),
            IllustrationPieceViewModel(
                fileName:
                    'assets/images/great_wall_of_china/foreground-right.png',
                alignment: Alignment.bottomCenter,
                initialOffset: const Offset(20, 40),
                initialScale: .95,
                heightFactor: 1,
                fractionalOffset: const Offset(.4, .3),
                zoomAmt: .1,
                dynamicHzOffset: 150)
          ]),
          middlegroundViewModel: IllustrationMiddlegroundViewModel(
              illustrationPieceViewModel: IllustrationPieceViewModel(
                  fileName: 'assets/images/great_wall_of_china/great-wall.png',
                  heightFactor: .65,
                  minHeight: 250,
                  zoomAmt: .05,
                  fractionalOffset: const Offset(0, -.15)))),
      IllustrationViewModel(
          id: 1,
          bgColor: const Color(0xFF444B9B),
          cloudSeed: 111,
          backgroundViewModel: IllustrationBackgroundViewModel(
              color: const Color(0xFF1B1A65),
              textureViewModel: IllustrationTextureViewModel(ImagePaths.roller1,
                  color: const Color(0xFF444B9B),
                  flipX: true,
                  scale: 1.15,
                  tween: Tween(begin: 0, end: 1)),
              illustrationPieceViewModel: IllustrationPieceViewModel(
                  fileName: 'assets/images/petra/moon.png',
                  initialOffset: const Offset(0, -150),
                  heightFactor: .15,
                  minHeight: 50,
                  alignment: Alignment.topCenter,
                  fractionalOffset: const Offset(-.7, 0))),
          illustrationForegroundViewModel:
              IllustrationForegroundViewModel(viewModels: [
            IllustrationPieceViewModel(
                fileName: 'assets/images/petra/foreground-left.png',
                alignment: Alignment.bottomCenter,
                initialOffset: const Offset(-80, 0),
                heightFactor: 1,
                fractionalOffset: const Offset(-.6, 0),
                zoomAmt: .03,
                dynamicHzOffset: -130),
            IllustrationPieceViewModel(
                fileName: 'assets/images/petra/foreground-right.png',
                alignment: Alignment.bottomCenter,
                initialOffset: const Offset(80, 00),
                heightFactor: 1,
                fractionalOffset: const Offset(.55, 0),
                zoomAmt: .12,
                dynamicHzOffset: 130)
          ]),
          middlegroundViewModel: IllustrationMiddlegroundViewModel(
              heightFactor: .8,
              alignment: Alignment.bottomCenter,
              illustrationPieceViewModel: IllustrationPieceViewModel(
                  fileName: 'assets/images/petra/petra.png',
                  heightFactor: .65,
                  minHeight: 500,
                  zoomAmt: -1,
                  fractionalOffset: Offset.zero))),
      IllustrationViewModel(
          id: 2,
          bgColor: const Color(0xFF1E736D),
          cloudSeed: 1,
          backgroundViewModel: IllustrationBackgroundViewModel(
              color: ColorUtils.shiftHsl(const Color(0xFF4AA39D), .15),
              textureViewModel: IllustrationTextureViewModel(ImagePaths.roller1,
                  color: Colors.white,
                  scale: 1,
                  tween: Tween(begin: 0, end: 0.75)),
              illustrationPieceViewModel: IllustrationPieceViewModel(
                  fileName: 'assets/images/colosseum/sun.png',
                  initialOffset: const Offset(0, 50),
                  heightFactor: .25,
                  minHeight: 100)),
          illustrationForegroundViewModel:
              IllustrationForegroundViewModel(viewModels: [
            IllustrationPieceViewModel(
                fileName: 'assets/images/colosseum/foreground-left.png',
                alignment: Alignment.bottomCenter,
                initialScale: .9,
                initialOffset: const Offset(-40, 60),
                heightFactor: .65,
                offset: Offset.zero,
                fractionalOffset: const Offset(-.5, .1),
                zoomAmt: .05,
                dynamicHzOffset: -150),
            IllustrationPieceViewModel(
                fileName: 'assets/images/colosseum/foreground-right.png',
                alignment: Alignment.bottomCenter,
                initialOffset: const Offset(20, 40),
                initialScale: .95,
                heightFactor: .75,
                fractionalOffset: const Offset(.5, .25),
                zoomAmt: .05,
                dynamicHzOffset: 150)
          ]),
          middlegroundViewModel: IllustrationMiddlegroundViewModel(
              illustrationPieceViewModel: IllustrationPieceViewModel(
                  fileName: 'assets/images/colosseum/colosseum.png',
                  heightFactor: .6,
                  minHeight: 200,
                  zoomAmt: .15,
                  fractionalOffset: const Offset(0, -.1)))),
      IllustrationViewModel(
          id: 3,
          bgColor: const Color(0xFF164F2A),
          cloudSeed: 2,
          backgroundViewModel: IllustrationBackgroundViewModel(
              color: const Color(0xFFE2CFBB),
              textureViewModel: IllustrationTextureViewModel(ImagePaths.roller2,
                  color: const Color(0xffDC762A),
                  scale: 1.15,
                  flipY: true,
                  tween: Tween(begin: 0, end: 0.5)),
              illustrationPieceViewModel: IllustrationPieceViewModel(
                  fileName: 'assets/images/chichen_itza/sun.png',
                  initialOffset: const Offset(0, 50),
                  heightFactor: .4,
                  minHeight: 200,
                  fractionalOffset: const Offset(.55, -.35))),
          illustrationForegroundViewModel:
              IllustrationForegroundViewModel(viewModels: [
            IllustrationPieceViewModel(
                fileName: 'assets/images/chichen_itza/foreground-right.png',
                alignment: Alignment.bottomCenter,
                initialOffset: const Offset(20, 40),
                initialScale: .95,
                heightFactor: .4,
                fractionalOffset: const Offset(.5, -.1),
                zoomAmt: .1,
                dynamicHzOffset: 250),
            IllustrationPieceViewModel(
                fileName: 'assets/images/chichen_itza/foreground-left.png',
                alignment: Alignment.bottomCenter,
                initialScale: .9,
                initialOffset: const Offset(-40, 60),
                heightFactor: .65,
                fractionalOffset: const Offset(-.4, .2),
                zoomAmt: .25,
                dynamicHzOffset: -250),
            IllustrationPieceViewModel(
                fileName: 'assets/images/chichen_itza/top-left.png',
                alignment: Alignment.topLeft,
                initialScale: .9,
                initialOffset: const Offset(-40, 60),
                heightFactor: .65,
                fractionalOffset: const Offset(-.4, -.4),
                zoomAmt: .05,
                dynamicHzOffset: 100),
            IllustrationPieceViewModel(
                fileName: 'assets/images/chichen_itza/top-right.png',
                alignment: Alignment.topRight,
                initialOffset: const Offset(20, 40),
                initialScale: .95,
                heightFactor: .65,
                fractionalOffset: const Offset(.35, -.4),
                zoomAmt: .05,
                dynamicHzOffset: -100)
          ]),
          middlegroundViewModel: IllustrationMiddlegroundViewModel(
              offset: const Offset(0, -30),
              illustrationPieceViewModel: IllustrationPieceViewModel(
                  fileName: 'assets/images/chichen_itza/chichen.png',
                  heightFactor: .4,
                  minHeight: 180,
                  zoomAmt: -.1))),
      IllustrationViewModel(
          id: 4,
          bgColor: const Color(0xFF1C4D46),
          cloudSeed: 78,
          backgroundViewModel: IllustrationBackgroundViewModel(
              color: const Color(0xFFED7967),
              textureViewModel: IllustrationTextureViewModel(ImagePaths.roller1,
                  color: const Color(0xffFAE5C8),
                  scale: 1.15,
                  flipX: false,
                  tween: Tween(begin: 0, end: 0.8)),
              illustrationPieceViewModel: IllustrationPieceViewModel(
                  fileName: 'assets/images/christ_the_redeemer/sun.png',
                  initialOffset: const Offset(0, 50),
                  heightFactor: .25,
                  minHeight: 120,
                  fractionalOffset: const Offset(.7, -1.35))),
          illustrationForegroundViewModel:
              IllustrationForegroundViewModel(viewModels: [
            IllustrationPieceViewModel(
                fileName:
                    'assets/images/christ_the_redeemer/foreground-left.png',
                alignment: Alignment.bottomCenter,
                initialScale: .95,
                initialOffset: const Offset(-140, 60),
                heightFactor: .65,
                fractionalOffset: const Offset(-.25, .05),
                zoomAmt: .15,
                dynamicHzOffset: -100),
            IllustrationPieceViewModel(
                fileName:
                    'assets/images/christ_the_redeemer/foreground-right.png',
                alignment: Alignment.bottomCenter,
                initialOffset: const Offset(120, 40),
                initialScale: .9,
                heightFactor: .55,
                fractionalOffset: const Offset(.35, .2),
                zoomAmt: .1,
                dynamicHzOffset: 100)
          ]),
          middlegroundViewModel: IllustrationMiddlegroundViewModel(
              clipBehavior: Clip.none,
              illustrationPieceViewModel: IllustrationPieceViewModel(
                  fileName: 'assets/images/christ_the_redeemer/redeemer.png',
                  heightFactor: 1,
                  alignment: Alignment.bottomCenter,
                  fractionalOffset: const Offset(0, .1),
                  zoomAmt: .7))),
      IllustrationViewModel(
          id: 5,
          bgColor: const Color(0xFF16184D),
          cloudSeed: 15,
          backgroundViewModel: IllustrationBackgroundViewModel(
              color: const Color(0xFF444B9B),
              textureViewModel: IllustrationTextureViewModel(ImagePaths.roller2,
                  color: const Color(0xFF797FD8),
                  scale: 1.15,
                  flipY: true,
                  tween: Tween(begin: 0, end: 0.75)),
              illustrationPieceViewModel: IllustrationPieceViewModel(
                  fileName: 'assets/images/pyramids/moon.png',
                  initialOffset: const Offset(0, 50),
                  heightFactor: .15,
                  minHeight: 100,
                  offset: const Offset(120, -200), // 1//
                  zoomAmt: .05)),
          illustrationForegroundViewModel:
              IllustrationForegroundViewModel(viewModels: [
            IllustrationPieceViewModel(
                fileName: 'assets/images/pyramids/foreground-back.png',
                alignment: Alignment.bottomCenter,
                initialOffset: const Offset(20, 40),
                initialScale: .95,
                heightFactor: .55,
                fractionalOffset: const Offset(.2, -.01),
                zoomAmt: .1,
                dynamicHzOffset: 150),
            IllustrationPieceViewModel(
                fileName: 'assets/images/pyramids/foreground-front.png',
                alignment: Alignment.bottomCenter,
                initialScale: .9,
                initialOffset: const Offset(-40, 60),
                heightFactor: .55,
                fractionalOffset: const Offset(-.09, 0.02),
                zoomAmt: .25,
                dynamicHzOffset: -150)
          ]),
          middlegroundViewModel: IllustrationMiddlegroundViewModel(
              illustrationPieceViewModel: IllustrationPieceViewModel(
                  fileName: 'assets/images/pyramids/pyramids.png',
                  heightFactor: .5,
                  minHeight: 300,
                  zoomAmt: -2,
                  fractionalOffset: const Offset(0, -.15)))),
      IllustrationViewModel(
          id: 6,
          bgColor: const Color(0xFFC96454),
          cloudSeed: 2,
          backgroundViewModel: IllustrationBackgroundViewModel(
              color: const Color(0xFF642828),
              textureViewModel: IllustrationTextureViewModel(ImagePaths.roller2,
                  color: const Color(0xFFC96454),
                  scale: 1.15,
                  flipY: true,
                  tween: Tween(begin: 0, end: 0.7)),
              illustrationPieceViewModel: IllustrationPieceViewModel(
                  fileName: 'assets/images/taj_mahal/sun.png',
                  initialOffset: const Offset(0, 50),
                  heightFactor: .3,
                  minHeight: 140,
                  offset: const Offset(-150, -200))), //??
          illustrationForegroundViewModel:
              IllustrationForegroundViewModel(viewModels: [
            IllustrationPieceViewModel(
                fileName: 'assets/images/taj_mahal/foreground-right.png',
                alignment: Alignment.bottomRight,
                initialOffset: const Offset(20, 40),
                initialScale: .85,
                heightFactor: .5 + .4 * 0.2,
                fractionalOffset: const Offset(.3, 0),
                zoomAmt: .25),
            IllustrationPieceViewModel(
                fileName: 'assets/images/taj_mahal/foreground-left.png',
                alignment: Alignment.bottomLeft,
                initialScale: .9,
                initialOffset: const Offset(-40, 60),
                heightFactor: .6 + .3 * 0.2,
                fractionalOffset: const Offset(-.3, 0),
                zoomAmt: .25,
                dynamicHzOffset: 0)
          ]),
          middlegroundViewModel: IllustrationMiddlegroundViewModel(
              illustrationPieceViewModel: IllustrationPieceViewModel(
                  fileName: 'assets/images/taj_mahal/taj-mahal.png',
                  heightFactor: .6,
                  minHeight: 230,
                  zoomAmt: .05,
                  fractionalOffset: const Offset(0, -.15)))),
      IllustrationViewModel(
          id: 7,
          bgColor: const Color(0xFF0E4064),
          cloudSeed: 37,
          backgroundViewModel: IllustrationBackgroundViewModel(
              color: const Color(0xFF0E4064),
              textureViewModel: IllustrationTextureViewModel(ImagePaths.roller1,
                  color: const Color(0xff1E736D),
                  flipX: false,
                  scale: 1,
                  tween: Tween(begin: 0, end: 0.5)),
              illustrationPieceViewModel: IllustrationPieceViewModel(
                  fileName: 'assets/images/machu_picchu/sun.png',
                  initialOffset: const Offset(0, 50),
                  heightFactor: .15,
                  minHeight: 100,
                  offset: const Offset(150, -200))),
          illustrationForegroundViewModel:
              IllustrationForegroundViewModel(viewModels: [
            IllustrationPieceViewModel(
                fileName: 'assets/images/machu_picchu/foreground-back.png',
                alignment: Alignment.bottomCenter,
                initialScale: .9,
                initialOffset: const Offset(0, 60),
                heightFactor: .6,
                fractionalOffset: const Offset(0, .2),
                zoomAmt: .05,
                dynamicHzOffset: 150),
            IllustrationPieceViewModel(
                fileName: 'assets/images/machu_picchu/foreground-front.png',
                alignment: Alignment.bottomCenter,
                initialOffset: const Offset(20, 40),
                heightFactor: .6,
                initialScale: 1.2,
                fractionalOffset: const Offset(-.35, .4),
                zoomAmt: .2,
                dynamicHzOffset: -50)
          ]),
          middlegroundViewModel: IllustrationMiddlegroundViewModel(
              illustrationPieceViewModel: IllustrationPieceViewModel(
                  fileName: 'assets/images/machu_picchu/machu-picchu.png',
                  heightFactor: .65,
                  minHeight: 230,
                  zoomAmt: -1,
                  fractionalOffset: const Offset(-.05, -.12))))
    ];
  }
}
