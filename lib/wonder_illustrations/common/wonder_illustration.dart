import 'package:demo/logic/data/wonder_type.dart';
import 'package:demo/wonder_illustrations/common/illustrations/chichen_itza_illustration.dart';
import 'package:demo/wonder_illustrations/common/illustrations/petra_illustration.dart';
import 'package:flutter/material.dart';

import 'illustrations/christ_redeemer_illustration.dart';
import 'illustrations/colosseum_illustration.dart';
import 'illustrations/great_wall_illustration.dart';
import 'illustrations/machu_picchu_illustration.dart';
import 'illustrations/pyramids_giza_illustration.dart';
import 'illustrations/taj_mahal_illustration.dart';
import 'wonder_illustration_config.dart';

/// Convenience class for showing an illustration when all you have is the type.
class WonderIllustration extends StatelessWidget {
  const WonderIllustration(this.type, {Key? key, required this.config})
      : super(key: key);
  final WonderIllustrationConfig config;
  final WonderType type;

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case WonderType.greatWall:
        return GreatWallIllustration(config: config);
      case WonderType.petra:
        return PetraIllustration(config: config);
      case WonderType.colosseum:
        return ColosseumIllustration(config: config);
      case WonderType.chichenItza:
        return ChichenItzaIllustration(config: config);
      case WonderType.christRedeemer:
        return ChristRedeemerIllustration(config: config);
      case WonderType.pyramidsGiza:
        return PyramidsGizaIllustration(config: config);
      case WonderType.tajMahal:
        return TajMahalIllustration(config: config);
      case WonderType.machuPicchu:
        return MachuPicchuIllustration(config: config);
    }
  }
}
