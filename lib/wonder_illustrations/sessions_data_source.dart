import 'dart:math';
import 'package:demo/assets.dart';
import 'package:demo/colors.dart';
import 'package:demo/wonder_illustrations/illustrations/wonder_type.dart';
import 'package:demo/wonder_illustrations/illustrations/view_models.dart';
import 'package:demo/wonder_illustrations/wonder_illustration_config.dart';
import 'package:flutter/material.dart';
import 'package:sized_context/sized_context.dart';

class SessionDataSource {
  List<SessionType> all = [];

  SessionDataSource() {
    all = [
      SessionType.greatWall,
      SessionType.petra,
      SessionType.colosseum,
      SessionType.chichenItza,
      SessionType.machuPicchu,
      SessionType.tajMahal,
      SessionType.christRedeemer,
      SessionType.pyramidsGiza
    ];
  }

  IllustrationViewModel getViewModelFor(SessionType sessionType,
      WonderIllustrationConfig config, BuildContext context) {
    switch (sessionType) {
      case SessionType.greatWall:
        return IllustrationViewModel(
            config: config,
            sessionType: sessionType,
            backgroundViewModel: IllustrationBackgroundViewModel(
                color: AppColors().shift(sessionType.fgColor, .15),
                textureViewModel: IllustrationTextureViewModel(
                    ImagePaths.roller2,
                    color: const Color(0xff688750),
                    flipX: true,
                    scale: config.shortMode ? 4 : 1.15,
                    tween: Tween(begin: 0, end: 1)),
                illustrationPieceViewModel: IllustrationPieceViewModel(
                    fileName: 'sun.png',
                    initialOffset: const Offset(0, 50),
                    enableHero: true,
                    heightFactor: config.shortMode ? .07 : .25,
                    minHeight: 120,
                    offset: config.shortMode
                        ? Offset(-40, context.heightPx * -.06)
                        : Offset(-65, context.heightPx * -.3))),
            illustrationForegroundViewModel:
                IllustrationForegroundViewModel(viewModels: [
              IllustrationPieceViewModel(
                  fileName: 'foreground-left.png',
                  alignment: Alignment.bottomCenter,
                  initialScale: .9,
                  initialOffset: const Offset(-40, 60),
                  heightFactor: .85,
                  fractionalOffset: const Offset(-.4, .45),
                  zoomAmt: .25,
                  dynamicHzOffset: -150),
              IllustrationPieceViewModel(
                  fileName: 'foreground-right.png',
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
                    fileName: 'great-wall.png',
                    heightFactor: config.shortMode ? .45 : .65,
                    minHeight: 250,
                    zoomAmt: .05,
                    enableHero: true,
                    fractionalOffset:
                        Offset(0, config.shortMode ? .15 : -.15))));
      case SessionType.petra:
        return IllustrationViewModel(
            config: config,
            sessionType: sessionType,
            backgroundViewModel: IllustrationBackgroundViewModel(
                color: sessionType.fgColor,
                textureViewModel: IllustrationTextureViewModel(
                    ImagePaths.roller1,
                    color: sessionType.bgColor,
                    flipX: true,
                    scale: config.shortMode ? 4 : 1.15,
                    tween: Tween(begin: 0, end: 1)),
                illustrationPieceViewModel: IllustrationPieceViewModel(
                    fileName: 'moon.png',
                    initialOffset: const Offset(0, -150),
                    heightFactor: .15,
                    minHeight: 50,
                    alignment: Alignment.topCenter,
                    fractionalOffset: const Offset(-.7, 0))),
            illustrationForegroundViewModel:
                IllustrationForegroundViewModel(viewModels: [
              IllustrationPieceViewModel(
                  fileName: 'foreground-left.png',
                  alignment: Alignment.bottomCenter,
                  initialOffset: const Offset(-80, 0),
                  heightFactor: 1,
                  fractionalOffset: const Offset(-.6, 0),
                  zoomAmt: .03,
                  dynamicHzOffset: -130),
              IllustrationPieceViewModel(
                  fileName: 'foreground-right.png',
                  alignment: Alignment.bottomCenter,
                  initialOffset: const Offset(80, 00),
                  heightFactor: 1,
                  fractionalOffset: const Offset(.55, 0),
                  zoomAmt: .12,
                  dynamicHzOffset: 130)
            ]),
            middlegroundViewModel: IllustrationMiddlegroundViewModel(
                heightFactor: config.shortMode ? 1 : .8,
                alignment: Alignment.bottomCenter,
                illustrationPieceViewModel: IllustrationPieceViewModel(
                    fileName: 'petra.png',
                    heightFactor: .65,
                    minHeight: 500,
                    zoomAmt: config.shortMode ? -0.1 : -1,
                    enableHero: true,
                    fractionalOffset: Offset(0, config.shortMode ? .025 : 0))));
      case SessionType.colosseum:
        return IllustrationViewModel(
            config: config,
            sessionType: sessionType,
            backgroundViewModel: IllustrationBackgroundViewModel(
                color: AppColors().shift(sessionType.bgColor, .15),
                textureViewModel: IllustrationTextureViewModel(
                    ImagePaths.roller1,
                    color: Colors.white,
                    scale: config.shortMode ? 3 : 1,
                    tween: Tween(begin: 0, end: 0.75)),
                illustrationPieceViewModel: IllustrationPieceViewModel(
                    fileName: 'sun.png',
                    initialOffset: const Offset(0, 50),
                    enableHero: true,
                    heightFactor: config.shortMode ? .25 : .25,
                    minHeight: 100,
                    offset: config.shortMode
                        ? Offset(50, context.heightPx * -.07)
                        : Offset(80, context.heightPx * -.28))),
            illustrationForegroundViewModel:
                IllustrationForegroundViewModel(viewModels: [
              IllustrationPieceViewModel(
                  fileName: 'foreground-left.png',
                  alignment: Alignment.bottomCenter,
                  initialScale: .9,
                  initialOffset: const Offset(-40, 60),
                  heightFactor: .65,
                  offset: Offset.zero,
                  fractionalOffset: const Offset(-.5, .1),
                  zoomAmt: .05,
                  dynamicHzOffset: -150),
              IllustrationPieceViewModel(
                  fileName: 'foreground-right.png',
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
                    fileName: 'colosseum.png',
                    enableHero: true,
                    heightFactor: .6,
                    minHeight: 200,
                    zoomAmt: .15,
                    fractionalOffset:
                        Offset(0, config.shortMode ? .10 : -.1))));
      case SessionType.chichenItza:
        return IllustrationViewModel(
            config: config,
            sessionType: sessionType,
            backgroundViewModel: IllustrationBackgroundViewModel(
                color: sessionType.fgColor,
                textureViewModel: IllustrationTextureViewModel(
                    ImagePaths.roller2,
                    color: const Color(0xffDC762A),
                    scale: config.shortMode ? 4 : 1.15,
                    flipY: true,
                    tween: Tween(begin: 0, end: 0.5)),
                illustrationPieceViewModel: IllustrationPieceViewModel(
                    fileName: 'sun.png',
                    initialOffset: const Offset(0, 50),
                    enableHero: true,
                    heightFactor: .4,
                    minHeight: 200,
                    fractionalOffset:
                        Offset(.55, config.shortMode ? .2 : -.35))),
            illustrationForegroundViewModel:
                IllustrationForegroundViewModel(viewModels: [
              IllustrationPieceViewModel(
                  fileName: 'foreground-right.png',
                  alignment: Alignment.bottomCenter,
                  initialOffset: const Offset(20, 40),
                  initialScale: .95,
                  heightFactor: .4,
                  fractionalOffset: const Offset(.5, -.1),
                  zoomAmt: .1,
                  dynamicHzOffset: 250),
              IllustrationPieceViewModel(
                  fileName: 'foreground-left.png',
                  alignment: Alignment.bottomCenter,
                  initialScale: .9,
                  initialOffset: const Offset(-40, 60),
                  heightFactor: .65,
                  fractionalOffset: const Offset(-.4, .2),
                  zoomAmt: .25,
                  dynamicHzOffset: -250),
              IllustrationPieceViewModel(
                  fileName: 'top-left.png',
                  alignment: Alignment.topLeft,
                  initialScale: .9,
                  initialOffset: const Offset(-40, 60),
                  heightFactor: .65,
                  fractionalOffset: const Offset(-.4, -.4),
                  zoomAmt: .05,
                  dynamicHzOffset: 100),
              IllustrationPieceViewModel(
                  fileName: 'top-right.png',
                  alignment: Alignment.topRight,
                  initialOffset: const Offset(20, 40),
                  initialScale: .95,
                  heightFactor: .65,
                  fractionalOffset: const Offset(.35, -.4),
                  zoomAmt: .05,
                  dynamicHzOffset: -100)
            ]),
            middlegroundViewModel: IllustrationMiddlegroundViewModel(
                offset: Offset(0, config.shortMode ? 70 : -30),
                illustrationPieceViewModel: IllustrationPieceViewModel(
                    fileName: 'chichen.png',
                    heightFactor: .4,
                    minHeight: 180,
                    zoomAmt: -.1,
                    enableHero: true)));
      case SessionType.christRedeemer:
        return IllustrationViewModel(
            config: config,
            sessionType: sessionType,
            backgroundViewModel: IllustrationBackgroundViewModel(
                color: sessionType.fgColor,
                textureViewModel: IllustrationTextureViewModel(
                    ImagePaths.roller1,
                    color: const Color(0xffFAE5C8),
                    scale: config.shortMode ? 3.5 : 1.15,
                    flipX: false,
                    tween: Tween(begin: 0, end: 0.8)),
                illustrationPieceViewModel: IllustrationPieceViewModel(
                    fileName: 'sun.png',
                    initialOffset: const Offset(0, 50),
                    enableHero: true,
                    heightFactor: .25,
                    minHeight: 120,
                    fractionalOffset:
                        Offset(.7, config.shortMode ? -.5 : -1.35))),
            illustrationForegroundViewModel:
                IllustrationForegroundViewModel(viewModels: [
              IllustrationPieceViewModel(
                  fileName: 'foreground-left.png',
                  alignment: Alignment.bottomCenter,
                  initialScale: .95,
                  initialOffset: const Offset(-140, 60),
                  heightFactor: .65,
                  fractionalOffset: const Offset(-.25, .05),
                  zoomAmt: .15,
                  dynamicHzOffset: -100),
              IllustrationPieceViewModel(
                  fileName: 'foreground-right.png',
                  alignment: Alignment.bottomCenter,
                  initialOffset: const Offset(120, 40),
                  initialScale: .9,
                  heightFactor: .55,
                  fractionalOffset: const Offset(.35, .2),
                  zoomAmt: .1,
                  dynamicHzOffset: 100)
            ]),
            middlegroundViewModel: IllustrationMiddlegroundViewModel(
                clipBehavior: config.shortMode ? Clip.hardEdge : Clip.none,
                illustrationPieceViewModel: IllustrationPieceViewModel(
                    fileName: 'redeemer.png',
                    enableHero: true,
                    heightFactor: 1,
                    alignment: Alignment.bottomCenter,
                    fractionalOffset: Offset(0, config.shortMode ? .5 : .1),
                    zoomAmt: .7)));
      case SessionType.pyramidsGiza:
        return IllustrationViewModel(
            config: config,
            sessionType: sessionType,
            backgroundViewModel: IllustrationBackgroundViewModel(
                color: sessionType.fgColor,
                textureViewModel: IllustrationTextureViewModel(
                    ImagePaths.roller2,
                    color: const Color(0xFF797FD8),
                    scale: config.shortMode ? 4 : 1.15,
                    flipY: true,
                    tween: Tween(begin: 0, end: 0.75)),
                illustrationPieceViewModel: IllustrationPieceViewModel(
                    fileName: 'moon.png',
                    initialOffset: const Offset(0, 50),
                    enableHero: true,
                    heightFactor: .15,
                    minHeight: 100,
                    offset: config.shortMode
                        ? Offset(120, context.heightPx * -.05)
                        : Offset(120, context.heightPx * -.35),
                    zoomAmt: .05)),
            illustrationForegroundViewModel:
                IllustrationForegroundViewModel(viewModels: [
              IllustrationPieceViewModel(
                  fileName: 'foreground-back.png',
                  alignment: Alignment.bottomCenter,
                  initialOffset: const Offset(20, 40),
                  initialScale: .95,
                  heightFactor: .55,
                  fractionalOffset: const Offset(.2, -.01),
                  zoomAmt: .1,
                  dynamicHzOffset: 150),
              IllustrationPieceViewModel(
                  fileName: 'foreground-front.png',
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
                    fileName: 'pyramids.png',
                    enableHero: true,
                    heightFactor: .5,
                    minHeight: 300,
                    zoomAmt: config.shortMode ? -.2 : -2,
                    fractionalOffset: Offset(config.shortMode ? .015 : 0,
                        config.shortMode ? .17 : -.15))));
      case SessionType.tajMahal:
        final mangoScale = max(context.widthPx - 400, 0) / 1000;
        const double minHeight = 230, heightFactor = .6;
        return IllustrationViewModel(
            config: config,
            sessionType: sessionType,
            backgroundViewModel: IllustrationBackgroundViewModel(
                color: sessionType.fgColor,
                textureViewModel: IllustrationTextureViewModel(
                    ImagePaths.roller2,
                    color: sessionType.bgColor,
                    scale: config.shortMode ? 3 : 1.15,
                    flipY: true,
                    tween: Tween(begin: 0, end: 0.7)),
                illustrationPieceViewModel: IllustrationPieceViewModel(
                    fileName: 'sun.png',
                    initialOffset: const Offset(0, 50),
                    enableHero: true,
                    heightFactor: .3,
                    minHeight: 140,
                    offset: config.shortMode
                        ? Offset(-100, context.heightPx * -.02)
                        : Offset(-150, context.heightPx * -.34))),
            illustrationForegroundViewModel:
                IllustrationForegroundViewModel(viewModels: [
              IllustrationPieceViewModel(
                  fileName: 'foreground-right.png',
                  alignment: Alignment.bottomRight,
                  initialOffset: const Offset(20, 40),
                  initialScale: .85,
                  heightFactor: .5 + .4 * mangoScale,
                  fractionalOffset: const Offset(.3, 0),
                  zoomAmt: .25),
              IllustrationPieceViewModel(
                  fileName: 'foreground-left.png',
                  alignment: Alignment.bottomLeft,
                  initialScale: .9,
                  initialOffset: const Offset(-40, 60),
                  heightFactor: .6 + .3 * mangoScale,
                  fractionalOffset: const Offset(-.3, 0),
                  zoomAmt: .25,
                  dynamicHzOffset: 0)
            ]),
            middlegroundViewModel: IllustrationMiddlegroundViewModel(
                illustrationPieceViewModel: IllustrationPieceViewModel(
                    fileName: 'taj-mahal.png',
                    heightFactor: heightFactor,
                    minHeight: minHeight,
                    enableHero: true,
                    zoomAmt: .05,
                    fractionalOffset:
                        Offset(0, config.shortMode ? .12 : -.15))));
      case SessionType.machuPicchu:
        return IllustrationViewModel(
            config: config,
            sessionType: sessionType,
            backgroundViewModel: IllustrationBackgroundViewModel(
                color: sessionType.fgColor,
                textureViewModel: IllustrationTextureViewModel(
                    ImagePaths.roller1,
                    color: const Color(0xff1E736D),
                    flipX: false,
                    scale: config.shortMode ? 3 : 1,
                    tween: Tween(begin: 0, end: 0.5)),
                illustrationPieceViewModel: IllustrationPieceViewModel(
                    fileName: 'sun.png',
                    initialOffset: const Offset(0, 50),
                    enableHero: true,
                    heightFactor: config.shortMode ? .15 : .15,
                    minHeight: 100,
                    offset: config.shortMode
                        ? Offset(150, context.heightPx * -.08)
                        : Offset(150, context.heightPx * -.35))),
            illustrationForegroundViewModel:
                IllustrationForegroundViewModel(viewModels: [
              IllustrationPieceViewModel(
                  fileName: 'foreground-back.png',
                  alignment: Alignment.bottomCenter,
                  initialScale: .9,
                  initialOffset: const Offset(0, 60),
                  heightFactor: .6,
                  fractionalOffset: const Offset(0, .2),
                  zoomAmt: .05,
                  dynamicHzOffset: 150),
              IllustrationPieceViewModel(
                  fileName: 'foreground-front.png',
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
                    fileName: 'machu-picchu.png',
                    heightFactor: .65,
                    minHeight: 230,
                    zoomAmt: config.shortMode ? .1 : -1,
                    enableHero: true,
                    fractionalOffset: Offset(config.shortMode ? 0 : -.05,
                        config.shortMode ? 0.12 : -.12))));
    }
  }
}
