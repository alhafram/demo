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
      )
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
                heightFactor: illustrationViewModel.middlegroundViewModel
                    .illustrationPieceViewModel.heightFactor,
                minHeight: illustrationViewModel
                    .middlegroundViewModel.illustrationPieceViewModel.minHeight,
                zoomAmt: illustrationViewModel
                    .middlegroundViewModel.illustrationPieceViewModel.zoomAmt,
                enableHero: illustrationViewModel.middlegroundViewModel
                    .illustrationPieceViewModel.enableHero))
      ];
    }
    return [
      IllustrationPiece(
          fileName: illustrationViewModel
              .middlegroundViewModel.illustrationPieceViewModel.fileName,
          heightFactor: illustrationViewModel
              .middlegroundViewModel.illustrationPieceViewModel.heightFactor,
          minHeight: illustrationViewModel
              .middlegroundViewModel.illustrationPieceViewModel.minHeight,
          zoomAmt: illustrationViewModel
              .middlegroundViewModel.illustrationPieceViewModel.zoomAmt,
          enableHero: illustrationViewModel
              .middlegroundViewModel.illustrationPieceViewModel.enableHero)
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
          initialScale: viewModel.initialScale,
          heightFactor: viewModel.heightFactor,
          fractionalOffset: viewModel.fractionalOffset,
          zoomAmt: viewModel.zoomAmt,
          dynamicHzOffset: viewModel.dynamicHzOffset));
    }
    return list;
  }
}
