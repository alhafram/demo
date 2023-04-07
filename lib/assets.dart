import 'wonder_illustrations/illustrations/wonder_type.dart';

/// Consolidates raster image paths used across the app
class ImagePaths {
  static String root = 'assets/images';
  static String common = 'assets/images/_common';
  static String cloud = '$common/cloud-white.png';

  static String textures = '$common/texture';

  static String roller1 = '$textures/roller-1-white.gif';
  static String roller2 = '$textures/roller-2-white.gif';
}

extension WonderAssetExtensions on SessionType {
  String get assetPath {
    switch (this) {
      case SessionType.pyramidsGiza:
        return '${ImagePaths.root}/pyramids';
      case SessionType.greatWall:
        return '${ImagePaths.root}/great_wall_of_china';
      case SessionType.petra:
        return '${ImagePaths.root}/petra';
      case SessionType.colosseum:
        return '${ImagePaths.root}/colosseum';
      case SessionType.chichenItza:
        return '${ImagePaths.root}/chichen_itza';
      case SessionType.machuPicchu:
        return '${ImagePaths.root}/machu_picchu';
      case SessionType.tajMahal:
        return '${ImagePaths.root}/taj_mahal';
      case SessionType.christRedeemer:
        return '${ImagePaths.root}/christ_the_redeemer';
    }
  }
}
