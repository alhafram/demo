import 'package:demo/wonder_illustrations/data/chichen_itza_data.dart';
import 'package:demo/wonder_illustrations/data/christ_redeemer_data.dart';
import 'package:demo/wonder_illustrations/data/colosseum_data.dart';
import 'package:demo/wonder_illustrations/data/great_wall_data.dart';
import 'package:demo/wonder_illustrations/data/machu_picchu_data.dart';
import 'package:demo/wonder_illustrations/data/petra_data.dart';
import 'package:demo/wonder_illustrations/data/pyramids_giza_data.dart';
import 'package:demo/wonder_illustrations/data/taj_mahal_data.dart';
import 'package:demo/wonder_illustrations/data/wonder_data.dart';

class WondersLogic {
  List<WonderData> all = [];

  final int timelineStartYear = -3000;
  final int timelineEndYear = 2200;

  WondersLogic() {
    all = [
      const GreatWallData(),
      const PetraData(),
      const ColosseumData(),
      const ChichenItzaData(),
      const MachuPicchuData(),
      const TajMahalData(),
      const ChristRedeemerData(),
      const PyramidsGizaData(),
    ];
  }
}
