import 'package:demo/logic/data/wonder_type.dart';
import 'package:demo/wonder_illustrations/common/data/wonder_data.dart';

class GreatWallData extends WonderData {
  GreatWallData()
      : super(
          searchData: [], // included as a part from ./search/
          searchSuggestions: [], // included as a part from ./search/
          type: WonderType.greatWall,
          title: "greatWallTitle",
          subTitle: "greatWallSubTitle",
          regionTitle: "greatWallRegionTitle",
          videoId: 'do1Go22Wu8o',
          startYr: -700,
          endYr: 1644,
          artifactStartYr: -700,
          artifactEndYr: 1650,
          artifactCulture: "greatWallArtifactCulture",
          artifactGeolocation: "greatWallArtifactGeolocation",
          lat: 40.43199751120627,
          lng: 116.57040708482984,
          unsplashCollectionId: 'Kg_h04xvZEo',
          pullQuote1Top: "greatWallPullQuote1Top",
          pullQuote1Bottom: "greatWallPullQuote1Bottom",
          pullQuote1Author:
              '', //No key because it doesn't generate for empty values
          pullQuote2: "greatWallPullQuote2",
          pullQuote2Author: "greatWallPullQuote2Author",
          callout1: "greatWallCallout1",
          callout2: "greatWallCallout2",
          videoCaption: "greatWallVideoCaption",
          mapCaption: "greatWallMapCaption",
          historyInfo1: "greatWallHistoryInfo1",
          historyInfo2: "greatWallHistoryInfo2",
          constructionInfo1: "greatWallConstructionInfo1",
          constructionInfo2: "greatWallConstructionInfo2",
          locationInfo1: "greatWallLocationInfo1",
          locationInfo2: "greatWallLocationInfo2",
          highlightArtifacts: const [
            '79091',
            '781812',
            '40213',
            '40765',
            '57612',
            '666573',
          ],
          hiddenArtifacts: const [
            '39918',
            '39666',
            '39735',
          ],
          events: {
            -700: "greatWall700bce",
            -214: "greatWall214bce",
            -121: "greatWall121bce",
            556: "greatWall556ce",
            618: "greatWall618ce",
            1487: "greatWall1487ce",
          },
        );
}
