import 'package:demo/wonder_illustrations/data/wonder_type.dart';
import 'package:demo/wonder_illustrations/wonder_illustration_config.dart';
import 'package:flutter/material.dart';

class IllustrationBackgroundViewModel {
  final String illustrationTexturePath;
  final Color color;
  final double tweenBegin;
  final double tweenEnd;
  final bool flipY;
  final double scale;

  final IllustrationPieceViewModel illustrationPieceViewModel;

  IllustrationBackgroundViewModel(
      this.illustrationTexturePath,
      this.color,
      this.tweenBegin,
      this.tweenEnd,
      this.flipY,
      this.scale,
      this.illustrationPieceViewModel);
}

class IllustrationMiddlegroundViewModel {
  final Offset offset;
  final String fileName;
  final double heightFactor;
  final double minHeight;
  final double zoomAmt;
  final bool enableHero;

  IllustrationMiddlegroundViewModel(this.offset, this.fileName,
      this.heightFactor, this.minHeight, this.zoomAmt, this.enableHero);
}

class IllustrationPieceViewModel {
  final String fileName;
  final Alignment alignment;
  final Offset initialOffset;
  final double initialScale;
  final double heightFactor;
  final double fractionalOffset;
  final double zoomAmt;
  final double dynamicHzOffset;
  final double minHeight;
  final Offset offset;
  final bool enableHero;
  // final top
  // final bottom

  IllustrationPieceViewModel(
      this.fileName,
      this.alignment,
      this.initialOffset,
      this.initialScale,
      this.heightFactor,
      this.fractionalOffset,
      this.zoomAmt,
      this.dynamicHzOffset,
      this.minHeight,
      this.offset,
      this.enableHero);
}

class IllustrationForegroundViewModel {
  final List<IllustrationPieceViewModel> viewModels;

  IllustrationForegroundViewModel(this.viewModels);
}

class IllustrationViewModel {
  final WonderIllustrationConfig config;
  final SessionType sessionType;

  final IllustrationBackgroundViewModel backgroundViewModel;
  final IllustrationMiddlegroundViewModel middlegroundViewModel;
  final IllustrationForegroundViewModel illustrationForegroundViewModel;

  IllustrationViewModel(this.config, this.sessionType, this.backgroundViewModel,
      this.middlegroundViewModel, this.illustrationForegroundViewModel);
}
