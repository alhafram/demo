import 'package:demo/wonder_illustrations/data/wonder_type.dart';
import 'package:demo/wonder_illustrations/illustrations/chichen_itza_illustration.dart';
import 'package:demo/wonder_illustrations/illustrations/christ_redeemer_illustration.dart';
import 'package:demo/wonder_illustrations/illustrations/colosseum_illustration.dart';
import 'package:demo/wonder_illustrations/illustrations/great_wall_illustration.dart';
import 'package:demo/wonder_illustrations/illustrations/machu_picchu_illustration.dart';
import 'package:demo/wonder_illustrations/illustrations/petra_illustration.dart';
import 'package:demo/wonder_illustrations/illustrations/pyramids_giza_illustration.dart';
import 'package:demo/wonder_illustrations/illustrations/taj_mahal_illustration.dart';
import 'package:demo/wonder_illustrations/wonder_illustration_config.dart';
import 'package:flutter/material.dart';

class WonderIllustration extends StatelessWidget {
  const WonderIllustration(this.type, {Key? key, required this.config})
      : super(key: key);
  final WonderIllustrationConfig config;
  final SessionType type;

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case SessionType.greatWall:
        return GreatWallIllustration(config: config);
      case SessionType.petra:
        return PetraIllustration(config: config);
      case SessionType.colosseum:
        return ColosseumIllustration(config: config);
      case SessionType.chichenItza:
        return ChichenItzaIllustration(config: config);
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
