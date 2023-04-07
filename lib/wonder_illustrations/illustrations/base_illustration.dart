import 'package:demo/wonder_illustrations/fade_color_transition.dart';
import 'package:demo/wonder_illustrations/illustration_piece.dart';
import 'package:demo/wonder_illustrations/illustrations/view_models.dart';
import 'package:demo/wonder_illustrations/paint_textures.dart';
import 'package:demo/wonder_illustrations/wonder_illustration_builder.dart';
import 'package:demo/wonders_color_extensions.dart';
import 'package:flutter/material.dart';

class BaseIllustration extends StatelessWidget {
  final IllustrationViewModel illustrationViewModel;

  const BaseIllustration({super.key, required this.illustrationViewModel});
  @override
  Widget build(BuildContext context) {
    return WonderIllustrationBuilder(
        config: illustrationViewModel.config,
        bgBuilder: _buildBg,
        mgBuilder: _buildMg,
        fgBuilder: _buildFg,
        wonderType: illustrationViewModel.sessionType);
  }

  List<Widget> _buildBg(BuildContext context, Animation<double> anim) {
    return [
      FadeColorTransition(
          animation: anim, color: illustrationViewModel.sessionType.fgColor),
      Positioned.fill(
          child: IllustrationTexture(
              illustrationViewModel.backgroundViewModel.illustrationTexturePath,
              color: illustrationViewModel
                  .backgroundViewModel.illustrationTextureColor,
              opacity: anim.drive(Tween(
                  begin: illustrationViewModel
                      .backgroundViewModel.illustrationTextureTweenBegin,
                  end: illustrationViewModel
                      .backgroundViewModel.illustrationTextureTweenEnd)),
              flipY: illustrationViewModel
                  .backgroundViewModel.illustrationTextureFlipY,
              flipX: illustrationViewModel
                  .backgroundViewModel.illustrationTextureFlipX,
              scale: illustrationViewModel
                  .backgroundViewModel.illustrationTextureScale)),
      IllustrationPiece(
          fileName: illustrationViewModel
              .backgroundViewModel.illustrationPieceViewModel.fileName,
          initialOffset: illustrationViewModel
              .backgroundViewModel.illustrationPieceViewModel.initialOffset,
          enableHero: illustrationViewModel
              .backgroundViewModel.illustrationPieceViewModel.enableHero,
          heightFactor: illustrationViewModel
              .backgroundViewModel.illustrationPieceViewModel.heightFactor,
          minHeight: illustrationViewModel
              .backgroundViewModel.illustrationPieceViewModel.minHeight,
          offset: illustrationViewModel
              .backgroundViewModel.illustrationPieceViewModel.offset,
          fractionalOffset: illustrationViewModel
              .backgroundViewModel.illustrationPieceViewModel.fractionalOffset,
          alignment: illustrationViewModel
              .backgroundViewModel.illustrationPieceViewModel.alignment,
          initialScale: illustrationViewModel
              .backgroundViewModel.illustrationPieceViewModel.initialScale,
          dynamicHzOffset: illustrationViewModel
              .backgroundViewModel.illustrationPieceViewModel.dynamicHzOffset)
    ];
  }

  List<Widget> _buildMg(BuildContext context, Animation<double> anim) {
    if (illustrationViewModel.middlegroundViewModel.offset != null) {
      return [
        Transform.translate(
            offset: illustrationViewModel.middlegroundViewModel.offset!,
            child: IllustrationPiece(
                fileName: illustrationViewModel
                    .middlegroundViewModel.illustrationPieceViewModel.fileName,
                initialOffset: illustrationViewModel.middlegroundViewModel
                    .illustrationPieceViewModel.initialOffset,
                enableHero: illustrationViewModel.middlegroundViewModel
                    .illustrationPieceViewModel.enableHero,
                heightFactor: illustrationViewModel.middlegroundViewModel
                    .illustrationPieceViewModel.heightFactor,
                minHeight: illustrationViewModel
                    .middlegroundViewModel.illustrationPieceViewModel.minHeight,
                offset: illustrationViewModel
                    .middlegroundViewModel.illustrationPieceViewModel.offset,
                fractionalOffset: illustrationViewModel.middlegroundViewModel
                    .illustrationPieceViewModel.fractionalOffset,
                alignment: illustrationViewModel
                    .middlegroundViewModel.illustrationPieceViewModel.alignment,
                initialScale:
                    illustrationViewModel.middlegroundViewModel.illustrationPieceViewModel.initialScale,
                dynamicHzOffset: illustrationViewModel.middlegroundViewModel.illustrationPieceViewModel.dynamicHzOffset))
      ];
    }
    if (illustrationViewModel.middlegroundViewModel.clipBehavior != null) {
      return [
        ClipRect(
            clipBehavior:
                illustrationViewModel.middlegroundViewModel.clipBehavior!,
            child: IllustrationPiece(
                fileName: illustrationViewModel
                    .middlegroundViewModel.illustrationPieceViewModel.fileName,
                initialOffset: illustrationViewModel.middlegroundViewModel
                    .illustrationPieceViewModel.initialOffset,
                enableHero: illustrationViewModel.middlegroundViewModel
                    .illustrationPieceViewModel.enableHero,
                heightFactor: illustrationViewModel.middlegroundViewModel
                    .illustrationPieceViewModel.heightFactor,
                minHeight: illustrationViewModel
                    .middlegroundViewModel.illustrationPieceViewModel.minHeight,
                offset: illustrationViewModel
                    .middlegroundViewModel.illustrationPieceViewModel.offset,
                fractionalOffset: illustrationViewModel.middlegroundViewModel
                    .illustrationPieceViewModel.fractionalOffset,
                alignment: illustrationViewModel
                    .middlegroundViewModel.illustrationPieceViewModel.alignment,
                initialScale: illustrationViewModel.middlegroundViewModel
                    .illustrationPieceViewModel.initialScale,
                dynamicHzOffset: illustrationViewModel.middlegroundViewModel.illustrationPieceViewModel.dynamicHzOffset))
      ];
    }
    if (illustrationViewModel.middlegroundViewModel.heightFactor != null &&
        illustrationViewModel.middlegroundViewModel.alignment != null) {
      return [
        FractionallySizedBox(
            heightFactor:
                illustrationViewModel.middlegroundViewModel.heightFactor!,
            alignment: illustrationViewModel.middlegroundViewModel.alignment!,
            child: IllustrationPiece(
                fileName: illustrationViewModel
                    .middlegroundViewModel.illustrationPieceViewModel.fileName,
                initialOffset: illustrationViewModel.middlegroundViewModel
                    .illustrationPieceViewModel.initialOffset,
                enableHero: illustrationViewModel.middlegroundViewModel
                    .illustrationPieceViewModel.enableHero,
                heightFactor: illustrationViewModel.middlegroundViewModel
                    .illustrationPieceViewModel.heightFactor,
                minHeight: illustrationViewModel
                    .middlegroundViewModel.illustrationPieceViewModel.minHeight,
                offset: illustrationViewModel
                    .middlegroundViewModel.illustrationPieceViewModel.offset,
                fractionalOffset: illustrationViewModel.middlegroundViewModel
                    .illustrationPieceViewModel.fractionalOffset,
                alignment: illustrationViewModel
                    .middlegroundViewModel.illustrationPieceViewModel.alignment,
                initialScale: illustrationViewModel.middlegroundViewModel
                    .illustrationPieceViewModel.initialScale,
                dynamicHzOffset: illustrationViewModel.middlegroundViewModel.illustrationPieceViewModel.dynamicHzOffset))
      ];
    }
    return [
      IllustrationPiece(
          fileName: illustrationViewModel
              .middlegroundViewModel.illustrationPieceViewModel.fileName,
          initialOffset: illustrationViewModel
              .middlegroundViewModel.illustrationPieceViewModel.initialOffset,
          enableHero: illustrationViewModel
              .middlegroundViewModel.illustrationPieceViewModel.enableHero,
          heightFactor: illustrationViewModel
              .middlegroundViewModel.illustrationPieceViewModel.heightFactor,
          minHeight: illustrationViewModel
              .middlegroundViewModel.illustrationPieceViewModel.minHeight,
          offset: illustrationViewModel
              .middlegroundViewModel.illustrationPieceViewModel.offset,
          fractionalOffset: illustrationViewModel.middlegroundViewModel
              .illustrationPieceViewModel.fractionalOffset,
          alignment: illustrationViewModel
              .middlegroundViewModel.illustrationPieceViewModel.alignment,
          initialScale: illustrationViewModel
              .middlegroundViewModel.illustrationPieceViewModel.initialScale,
          dynamicHzOffset: illustrationViewModel
              .middlegroundViewModel.illustrationPieceViewModel.dynamicHzOffset)
    ];
  }

  List<Widget> _buildFg(BuildContext context, Animation<double> anim) {
    var list = List<Widget>.empty(growable: true);
    for (var viewModel
        in illustrationViewModel.illustrationForegroundViewModel.viewModels) {
      list.add(IllustrationPiece(
          fileName: viewModel.fileName,
          alignment: viewModel.alignment,
          initialOffset: viewModel.initialOffset,
          enableHero: viewModel.enableHero,
          minHeight: viewModel.minHeight,
          offset: viewModel.offset,
          initialScale: viewModel.initialScale,
          heightFactor: viewModel.heightFactor,
          fractionalOffset: viewModel.fractionalOffset,
          zoomAmt: viewModel.zoomAmt,
          dynamicHzOffset: viewModel.dynamicHzOffset));
    }
    return list;
  }
}
