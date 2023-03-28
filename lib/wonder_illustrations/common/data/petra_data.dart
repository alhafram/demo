import 'package:demo/logic/data/wonder_type.dart';
import 'package:demo/wonder_illustrations/common/data/wonder_data.dart';

class PetraData extends WonderData {
  PetraData()
      : super(
          searchData: [], // included as a part from ./search/
          searchSuggestions: [], // included as a part from ./search/
          type: WonderType.petra,
          title: "petraTitle",
          subTitle: "petraSubTitle",
          regionTitle: "petraRegionTitle",
          videoId: 'ezDiSkOU0wc',
          startYr: -312,
          endYr: 100,
          artifactStartYr: -500,
          artifactEndYr: 500,
          artifactCulture: "petraArtifactCulture",
          artifactGeolocation: "petraArtifactGeolocation",
          lat: 30.328830750209903,
          lng: 35.44398203484667,
          unsplashCollectionId: 'qWQJbDvCMW8',
          pullQuote1Top: "petraPullQuote1Top",
          pullQuote1Bottom: "petraPullQuote1Bottom",
          pullQuote1Author: "petraPullQuote1Author",
          pullQuote2: "petraPullQuote2",
          pullQuote2Author: "petraPullQuote2Author",
          callout1: "petraCallout1",
          callout2: "petraCallout2",
          videoCaption: "petraVideoCaption",
          mapCaption: "petraMapCaption",
          historyInfo1: "petraHistoryInfo1",
          historyInfo2: "petraHistoryInfo2",
          constructionInfo1: "petraConstructionInfo1",
          constructionInfo2: "petraConstructionInfo2",
          locationInfo1: "petraLocationInfo1",
          locationInfo2: "petraLocationInfo2",
          highlightArtifacts: const [
            '325900',
            '325902',
            '325919',
            '325884',
            '325887',
            '325891',
          ],
          hiddenArtifacts: const [
            '322592',
            '325918',
            '326243',
          ],
          events: {
            -1200: "petra1200bce",
            -106: "petra106bce",
            551: "petra551ce",
            1812: "petra1812ce",
            1958: "petra1958ce",
            1989: "petra1989ce",
          },
        );
}
