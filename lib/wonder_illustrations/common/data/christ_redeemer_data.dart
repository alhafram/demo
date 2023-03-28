import 'package:demo/logic/data/wonder_type.dart';
import 'package:demo/wonder_illustrations/common/data/wonder_data.dart';

class ChristRedeemerData extends WonderData {
  ChristRedeemerData()
      : super(
          searchData: [], // included as a part from ./search/
          searchSuggestions: [], // included as a part from ./search/
          type: WonderType.christRedeemer,
          title: "christRedeemerTitle",
          subTitle: "christRedeemerSubTitle",
          regionTitle: "christRedeemerRegionTitle",
          videoId: 'k_615AauSds',
          startYr: 1922,
          endYr: 1931,
          artifactStartYr: 1600,
          artifactEndYr: 2100,
          artifactCulture: '',
          artifactGeolocation: "christRedeemerArtifactGeolocation",
          lat: -22.95238891944396,
          lng: -43.21045520611561,
          unsplashCollectionId: 'dPgX5iK8Ufo',
          pullQuote1Top: "christRedeemerPullQuote1Top",
          pullQuote1Bottom: "christRedeemerPullQuote1Bottom",
          pullQuote1Author: '',
          pullQuote2: "christRedeemerPullQuote2",
          pullQuote2Author: "christRedeemerPullQuote2Author",
          callout1: "christRedeemerCallout1",
          callout2: "christRedeemerCallout2",
          videoCaption: "christRedeemerVideoCaption",
          mapCaption: "christRedeemerMapCaption",
          historyInfo1: "christRedeemerHistoryInfo1",
          historyInfo2: "christRedeemerHistoryInfo2",
          constructionInfo1: "christRedeemerConstructionInfo1",
          constructionInfo2: "christRedeemerConstructionInfo2",
          locationInfo1: "christRedeemerLocationInfo1",
          locationInfo2: "christRedeemerLocationInfo2",
          highlightArtifacts: const [
            '501319',
            '764815',
            '502019',
            '764814',
            '764816',
          ],
          hiddenArtifacts: const [
            '501302',
            '157985',
            '227759',
          ],
          events: {
            1850: "christRedeemer1850ce",
            1921: "christRedeemer1921ce",
            1922: "christRedeemer1922ce",
            1926: "christRedeemer1926ce",
            1931: "christRedeemer1931ce",
            2006: "christRedeemer2006ce",
          },
        );
}
