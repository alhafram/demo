import 'data/chichen_itza_data.dart';
import 'data/machu_picchu_data.dart';
import 'data/wonder_data.dart';
import 'data/christ_redeemer_data.dart';
import 'data/colosseum_data.dart';
import 'data/great_wall_data.dart';
import 'data/petra_data.dart';
import 'data/pyramids_giza_data.dart';
import 'data/taj_mahal_data.dart';

class WondersLogic {
  List<WonderData> all = [];

  final int timelineStartYear = -3000;
  final int timelineEndYear = 2200;

  WondersLogic() {
    all = [
      GreatWallData(),
      PetraData(),
      ColosseumData(),
      ChichenItzaData(),
      MachuPicchuData(),
      TajMahalData(),
      ChristRedeemerData(),
      PyramidsGizaData(),
    ];
  }
}
