import 'wonder_illustrations/data/wonder_type.dart';

/// Consolidates raster image paths used across the app
class ImagePaths {
  static String root = 'assets/images';
  static String common = 'assets/images/_common';
  static String cloud = '$common/cloud-white.png';

  static String textures = '$common/texture';

  static String roller1 = '$textures/roller-1-white.gif';
  static String roller2 = '$textures/roller-2-white.gif';
}

extension WonderAssetExtensions on WonderType {
  String get assetPath {
    switch (this) {
      case WonderType.pyramidsGiza:
        return '${ImagePaths.root}/pyramids';
      case WonderType.greatWall:
        return '${ImagePaths.root}/great_wall_of_china';
      case WonderType.petra:
        return '${ImagePaths.root}/petra';
      case WonderType.colosseum:
        return '${ImagePaths.root}/colosseum';
      case WonderType.chichenItza:
        return '${ImagePaths.root}/chichen_itza';
      case WonderType.machuPicchu:
        return '${ImagePaths.root}/machu_picchu';
      case WonderType.tajMahal:
        return '${ImagePaths.root}/taj_mahal';
      case WonderType.christRedeemer:
        return '${ImagePaths.root}/christ_the_redeemer';
    }
  }
}
