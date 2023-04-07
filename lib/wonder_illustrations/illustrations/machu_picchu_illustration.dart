import 'package:demo/assets.dart';
import 'package:demo/wonder_illustrations/illustrations/wonder_type.dart';
import 'package:demo/wonder_illustrations/fade_color_transition.dart';
import 'package:demo/wonder_illustrations/illustration_piece.dart';
import 'package:demo/wonder_illustrations/paint_textures.dart';
import 'package:demo/wonder_illustrations/wonder_illustration_builder.dart';
import 'package:demo/wonder_illustrations/wonder_illustration_config.dart';
import 'package:demo/wonders_color_extensions.dart';
import 'package:flutter/material.dart';
import 'package:sized_context/sized_context.dart';

class MachuPicchuIllustration extends StatelessWidget {
  MachuPicchuIllustration({Key? key, required this.config}) : super(key: key);
  final WonderIllustrationConfig config;
  final String assetPath = SessionType.machuPicchu.assetPath;
  final fgColor = SessionType.machuPicchu.fgColor;
  final bgColor = SessionType.machuPicchu.bgColor;

  @override
  Widget build(BuildContext context) {
    return WonderIllustrationBuilder(
      config: config,
      bgBuilder: _buildBg,
      mgBuilder: _buildMg,
      fgBuilder: _buildFg,
      wonderType: SessionType.machuPicchu,
    );
  }

  List<Widget> _buildBg(BuildContext context, Animation<double> anim) {
    return [
      FadeColorTransition(animation: anim, color: fgColor),
      Positioned.fill(
        child: IllustrationTexture(
          ImagePaths.roller1,
          flipX: false,
          color: const Color(0xff1E736D),
          opacity: anim.drive(Tween(begin: 0, end: .5)),
          scale: config.shortMode ? 3 : 1,
        ),
      ),
      IllustrationPiece(
        fileName: 'sun.png',
        initialOffset: const Offset(0, 50),
        enableHero: true,
        heightFactor: config.shortMode ? .15 : .15,
        minHeight: 100,
        offset: config.shortMode
            ? Offset(150, context.heightPx * -.08)
            : Offset(150, context.heightPx * -.35),
      ),
    ];
  }

  List<Widget> _buildMg(BuildContext context, Animation<double> anim) => [
        IllustrationPiece(
          fileName: 'machu-picchu.png',
          heightFactor: .65,
          minHeight: 230,
          zoomAmt: config.shortMode ? .1 : -1,
          enableHero: true,
          fractionalOffset: Offset(
              config.shortMode ? 0 : -.05, config.shortMode ? 0.12 : -.12),
        ),
      ];

  List<Widget> _buildFg(BuildContext context, Animation<double> anim) {
    return [
      const IllustrationPiece(
        fileName: 'foreground-back.png',
        alignment: Alignment.bottomCenter,
        initialScale: .9,
        initialOffset: Offset(0, 60),
        heightFactor: .6,
        fractionalOffset: Offset(0, .2),
        zoomAmt: .05,
        dynamicHzOffset: 150,
      ),
      const IllustrationPiece(
        fileName: 'foreground-front.png',
        alignment: Alignment.bottomCenter,
        initialOffset: Offset(20, 40),
        heightFactor: .6,
        initialScale: 1.2,
        fractionalOffset: Offset(-.35, .4),
        zoomAmt: .2,
        dynamicHzOffset: -50,
      ),
    ];
  }
}
