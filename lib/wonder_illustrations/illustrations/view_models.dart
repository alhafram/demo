import 'package:demo/wonder_illustrations/data/wonder_type.dart';
import 'package:demo/wonder_illustrations/wonder_illustration_config.dart';
import 'package:flutter/material.dart';

class IllustrationBackgroundViewModel {
  final Color color;
  final String illustrationTexturePath;
  final Color? illustrationTextureColor;
  final double illustrationTextureTweenBegin;
  final double illustrationTextureTweenEnd;
  final bool illustrationTextureFlipY;
  final bool illustrationTextureFlipX;
  final double illustrationTextureScale;

  final IllustrationPieceViewModel illustrationPieceViewModel;

  IllustrationBackgroundViewModel(
      {required this.color,
      required this.illustrationTexturePath,
      this.illustrationTextureColor,
      required this.illustrationTextureTweenBegin,
      required this.illustrationTextureTweenEnd,
      this.illustrationTextureFlipY = false,
      this.illustrationTextureFlipX = false,
      this.illustrationTextureScale = 1,
      required this.illustrationPieceViewModel});
}

class IllustrationMiddlegroundViewModel {
  final Offset? offset;
  final IllustrationPieceViewModel illustrationPieceViewModel;

  IllustrationMiddlegroundViewModel(
      {this.offset, required this.illustrationPieceViewModel});
}

class IllustrationPieceViewModel {
  final String fileName;
  final Alignment alignment;
  final Offset initialOffset;
  final double initialScale;
  final double heightFactor;
  final Offset? fractionalOffset;
  final double zoomAmt;
  final double dynamicHzOffset;
  final double? minHeight;
  final Offset offset;
  final bool enableHero;
  final Widget? top;
  final Widget? bottom;

  IllustrationPieceViewModel({
    required this.fileName,
    required this.heightFactor,
    this.alignment = Alignment.center,
    this.minHeight,
    this.offset = Offset.zero,
    this.fractionalOffset,
    this.zoomAmt = 0,
    this.initialOffset = Offset.zero,
    this.enableHero = false,
    this.initialScale = 1,
    this.dynamicHzOffset = 0,
    this.top,
    this.bottom,
  });
}

class IllustrationForegroundViewModel {
  final List<IllustrationPieceViewModel> viewModels;

  IllustrationForegroundViewModel({required this.viewModels});
}

class IllustrationViewModel {
  final WonderIllustrationConfig config;
  final SessionType sessionType;

  final IllustrationBackgroundViewModel backgroundViewModel;
  final IllustrationMiddlegroundViewModel middlegroundViewModel;
  final IllustrationForegroundViewModel illustrationForegroundViewModel;

  IllustrationViewModel(
      {required this.config,
      required this.sessionType,
      required this.backgroundViewModel,
      required this.middlegroundViewModel,
      required this.illustrationForegroundViewModel});
}
