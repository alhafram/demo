import 'package:demo/logic/data/wonder_type.dart';
import 'package:demo/wonder_illustrations/common/data/wonder_data.dart';

class ColosseumData extends WonderData {
  ColosseumData()
      : super(
          searchData: [], // included as a part from ./search/
          searchSuggestions: [], // included as a part from ./search/
          type: WonderType.colosseum,
          title: "colosseumTitle",
          subTitle: "colosseumSubTitle",
          regionTitle: "colosseumRegionTitle",
          videoId: 'GXoEpNjgKzg',
          startYr: 70,
          endYr: 80,
          artifactStartYr: 0,
          artifactEndYr: 500,
          artifactCulture: "colosseumArtifactCulture",
          artifactGeolocation: "colosseumArtifactGeolocation",
          lat: 41.890242126393495,
          lng: 12.492349361871392,
          unsplashCollectionId: 'VPdti8Kjq9o',
          pullQuote1Top: "colosseumPullQuote1Top",
          pullQuote1Bottom: "colosseumPullQuote1Bottom",
          pullQuote1Author: '',
          pullQuote2: "colosseumPullQuote2",
          pullQuote2Author: "colosseumPullQuote2Author",
          callout1: "colosseumCallout1",
          callout2: "colosseumCallout2",
          videoCaption: "colosseumVideoCaption",
          mapCaption: "colosseumMapCaption",
          historyInfo1: "colosseumHistoryInfo1",
          historyInfo2: "colosseumHistoryInfo2",
          constructionInfo1: "colosseumConstructionInfo1",
          constructionInfo2: "colosseumConstructionInfo2",
          locationInfo1: "colosseumLocationInfo1",
          locationInfo2: "colosseumLocationInfo2",
          highlightArtifacts: const [
            '251350',
            '255960',
            '247993',
            '250464',
            '251476',
            '255960',
          ],
          hiddenArtifacts: const [
            '245376',
            '256570',
            '286136',
          ],
          events: {
            70: "colosseum70ce",
            82: "colosseum82ce",
            1140: "colosseum1140ce",
            1490: "colosseum1490ce",
            1829: "colosseum1829ce",
            1990: "colosseum1990ce",
          },
        );
}
