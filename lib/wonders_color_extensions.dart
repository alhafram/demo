import 'package:flutter/cupertino.dart';
import 'wonder_illustrations/illustrations/wonder_type.dart';

extension WonderColorExtensions on SessionType {
  Color get bgColor {
    switch (this) {
      case SessionType.pyramidsGiza:
        return const Color(0xFF16184D);
      case SessionType.greatWall:
        return const Color(0xFF642828);
      case SessionType.petra:
        return const Color(0xFF444B9B);
      case SessionType.colosseum:
        return const Color(0xFF1E736D);
      case SessionType.chichenItza:
        return const Color(0xFF164F2A);
      case SessionType.machuPicchu:
        return const Color(0xFF0E4064);
      case SessionType.tajMahal:
        return const Color(0xFFC96454);
      case SessionType.christRedeemer:
        return const Color(0xFF1C4D46);
    }
  }

  Color get fgColor {
    switch (this) {
      case SessionType.pyramidsGiza:
        return const Color(0xFF444B9B);
      case SessionType.greatWall:
        return const Color(0xFF688750);
      case SessionType.petra:
        return const Color(0xFF1B1A65);
      case SessionType.colosseum:
        return const Color(0xFF4AA39D);
      case SessionType.chichenItza:
        return const Color(0xFFE2CFBB);
      case SessionType.machuPicchu:
        return const Color(0xFFC1D9D1);
      case SessionType.tajMahal:
        return const Color(0xFF642828);
      case SessionType.christRedeemer:
        return const Color(0xFFED7967);
    }
  }
}
