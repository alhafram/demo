import 'package:demo/assets.dart';
import 'package:demo/colors.dart';
import 'package:demo/wonder_illustrations/data/wonder_type.dart';
import 'package:demo/wonder_illustrations/illustrations/base_illustration.dart';
import 'package:demo/wonder_illustrations/illustrations/christ_redeemer_illustration.dart';
import 'package:demo/wonder_illustrations/illustrations/colosseum_illustration.dart';
import 'package:demo/wonder_illustrations/illustrations/machu_picchu_illustration.dart';
import 'package:demo/wonder_illustrations/illustrations/petra_illustration.dart';
import 'package:demo/wonder_illustrations/illustrations/pyramids_giza_illustration.dart';
import 'package:demo/wonder_illustrations/illustrations/taj_mahal_illustration.dart';
import 'package:demo/wonder_illustrations/illustrations/view_models.dart';
import 'package:demo/wonder_illustrations/wonder_illustration_config.dart';
import 'package:flutter/material.dart';
import 'package:sized_context/sized_context.dart';

class WonderIllustration extends StatelessWidget {
  const WonderIllustration(this.type, {Key? key, required this.config})
      : super(key: key);
  final WonderIllustrationConfig config;
  final SessionType type;

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case SessionType.greatWall:
        var vm = IllustrationViewModel(
            config: config,
            sessionType: type,
            backgroundViewModel: IllustrationBackgroundViewModel(
                color: AppColors().shift(type.fgColor, .15),
                illustrationTexturePath: ImagePaths.roller2,
                illustrationTextureColor: const Color(0xff688750),
                illustrationTextureTweenBegin: 0,
                illustrationTextureTweenEnd: 1,
                illustrationTextureFlipX: true,
                illustrationTextureScale: config.shortMode ? 4 : 1.15,
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
        return BaseIllustration(illustrationViewModel: vm);
      case SessionType.petra:
        return PetraIllustration(config: config);
      case SessionType.colosseum:
        return ColosseumIllustration(config: config);
      case SessionType.chichenItza:
        var vm = IllustrationViewModel(
            config: config,
            sessionType: type,
            backgroundViewModel: IllustrationBackgroundViewModel(
                color: AppColors().shift(type.fgColor, .15),
                illustrationTexturePath: ImagePaths.roller2,
                illustrationTextureColor: const Color(0xffDC762A),
                illustrationTextureTweenBegin: 0,
                illustrationTextureTweenEnd: .5,
                illustrationTextureFlipY: true,
                illustrationTextureScale: config.shortMode ? 4 : 1.15,
                illustrationPieceViewModel: IllustrationPieceViewModel(
                  fileName: 'sun.png',
                  initialOffset: const Offset(0, 50),
                  enableHero: true,
                  heightFactor: .4,
                  minHeight: 200,
                  fractionalOffset: Offset(.55, config.shortMode ? .2 : -.35),
                )),
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
                dynamicHzOffset: 250,
              ),
              IllustrationPieceViewModel(
                fileName: 'foreground-left.png',
                alignment: Alignment.bottomCenter,
                initialScale: .9,
                initialOffset: const Offset(-40, 60),
                heightFactor: .65,
                fractionalOffset: const Offset(-.4, .2),
                zoomAmt: .25,
                dynamicHzOffset: -250,
              ),
              IllustrationPieceViewModel(
                fileName: 'top-left.png',
                alignment: Alignment.topLeft,
                initialScale: .9,
                initialOffset: const Offset(-40, 60),
                heightFactor: .65,
                fractionalOffset: const Offset(-.4, -.4),
                zoomAmt: .05,
                dynamicHzOffset: 100,
              ),
              IllustrationPieceViewModel(
                fileName: 'top-right.png',
                alignment: Alignment.topRight,
                initialOffset: const Offset(20, 40),
                initialScale: .95,
                heightFactor: .65,
                fractionalOffset: const Offset(.35, -.4),
                zoomAmt: .05,
                dynamicHzOffset: -100,
              )
            ]),
            middlegroundViewModel: IllustrationMiddlegroundViewModel(
                offset: Offset(0, config.shortMode ? 70 : -30),
                illustrationPieceViewModel: IllustrationPieceViewModel(
                  fileName: 'chichen.png',
                  heightFactor: .4,
                  minHeight: 180,
                  zoomAmt: -.1,
                  enableHero: true,
                )));
        return BaseIllustration(illustrationViewModel: vm);
      case SessionType.christRedeemer:
        return ChristRedeemerIllustration(config: config);
      case SessionType.pyramidsGiza:
        return PyramidsGizaIllustration(config: config);
      case SessionType.tajMahal:
        return TajMahalIllustration(config: config);
      case SessionType.machuPicchu:
        return MachuPicchuIllustration(config: config);
    }
  }
}
