import 'package:demo/wonder_illustrations/data/wonder_type.dart';
import 'package:demo/wonder_illustrations/wonder_illustration_config.dart';
import 'package:flutter/material.dart';

class IllustrationBackgroundViewModel {
  final Color color;

  final IllustrationTextureViewModel textureViewModel;
  final IllustrationPieceViewModel illustrationPieceViewModel;

  IllustrationBackgroundViewModel(
      {required this.color,
      required this.textureViewModel,
      required this.illustrationPieceViewModel});
}

class IllustrationMiddlegroundViewModel {
  final Offset? offset; // Translate

  final Clip? clipBehavior; // ClipRect

  final double? heightFactor; // FractionallySizedBox
  final Alignment? alignment;

  final IllustrationPieceViewModel illustrationPieceViewModel;

  IllustrationMiddlegroundViewModel(
      {this.offset,
      this.clipBehavior,
      this.heightFactor,
      this.alignment,
      required this.illustrationPieceViewModel});
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
  final Widget Function(BuildContext context)? top;
  final Widget Function(BuildContext context)? bottom;

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

class IllustrationTextureViewModel {
  final Color? color;
  final double scale;
  final bool flipX;
  final bool flipY;
  final String path;
  final Tween<double> tween;

  IllustrationTextureViewModel(this.path,
      {this.scale = 1,
      this.color,
      this.flipX = false,
      this.flipY = false,
      required this.tween});
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
