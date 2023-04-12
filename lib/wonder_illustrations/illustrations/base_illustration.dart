import 'package:demo/wonder_illustrations/fade_color_transition.dart';
import 'package:demo/wonder_illustrations/illustration_piece.dart';
import 'package:demo/wonder_illustrations/illustrations/view_models.dart';
import 'package:demo/wonder_illustrations/paint_textures.dart';
import 'package:demo/wonder_illustrations/wonder_illustration_builder.dart';
import 'package:demo/wonder_illustrations/wonder_illustration_config.dart';
import 'package:flutter/material.dart';

class BaseIllustration extends StatelessWidget {
  final IllustrationViewModel illustrationViewModel;
  final WonderIllustrationConfig config;

  const BaseIllustration(
      {super.key, required this.illustrationViewModel, required this.config});
  @override
  Widget build(BuildContext context) {
    return WonderIllustrationBuilder(
        config: config,
        bgBuilder: _buildBg,
        mgBuilder: _buildMg,
        fgBuilder: _buildFg);
  }

  List<Widget> _buildBg(BuildContext context, Animation<double> anim) {
    return [
      FadeColorTransition(
          animation: anim,
          color: illustrationViewModel.backgroundViewModel.color),
      Positioned.fill(
          child: IllustrationTexture.withViewModel(
              viewModel:
                  illustrationViewModel.backgroundViewModel.textureViewModel,
              opacity: anim.drive(illustrationViewModel
                  .backgroundViewModel.textureViewModel.tween))),
      IllustrationPiece.withViewModel(
          viewModel: illustrationViewModel
              .backgroundViewModel.illustrationPieceViewModel)
    ];
  }

  List<Widget> _buildMg(BuildContext context, Animation<double> anim) {
    if (illustrationViewModel.middlegroundViewModel.offset != null) {
      return [
        Transform.translate(
            offset: illustrationViewModel.middlegroundViewModel.offset!,
            child: IllustrationPiece.withViewModel(
                viewModel: illustrationViewModel
                    .middlegroundViewModel.illustrationPieceViewModel))
      ];
    }
    if (illustrationViewModel.middlegroundViewModel.clipBehavior != null) {
      return [
        ClipRect(
            clipBehavior:
                illustrationViewModel.middlegroundViewModel.clipBehavior!,
            child: IllustrationPiece.withViewModel(
                viewModel: illustrationViewModel
                    .middlegroundViewModel.illustrationPieceViewModel))
      ];
    }
    if (illustrationViewModel.middlegroundViewModel.heightFactor != null &&
        illustrationViewModel.middlegroundViewModel.alignment != null) {
      return [
        FractionallySizedBox(
            heightFactor:
                illustrationViewModel.middlegroundViewModel.heightFactor!,
            alignment: illustrationViewModel.middlegroundViewModel.alignment!,
            child: IllustrationPiece.withViewModel(
                viewModel: illustrationViewModel
                    .middlegroundViewModel.illustrationPieceViewModel))
      ];
    }
    return [
      IllustrationPiece.withViewModel(
          viewModel: illustrationViewModel
              .middlegroundViewModel.illustrationPieceViewModel)
    ];
  }

  List<Widget> _buildFg(BuildContext context, Animation<double> anim) {
    var list = List<Widget>.empty(growable: true);
    for (var viewModel
        in illustrationViewModel.illustrationForegroundViewModel.viewModels) {
      list.add(IllustrationPiece.withViewModel(viewModel: viewModel));
    }
    return list;
  }
}
