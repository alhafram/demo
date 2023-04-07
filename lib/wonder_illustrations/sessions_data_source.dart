import 'package:demo/wonder_illustrations/data/wonder_type.dart';

class SessionDataSource {
  List<SessionType> all = [];

  SessionDataSource() {
    all = [
      SessionType.greatWall,
      SessionType.petra,
      SessionType.colosseum,
      SessionType.chichenItza,
      SessionType.machuPicchu,
      SessionType.tajMahal,
      SessionType.christRedeemer,
      SessionType.pyramidsGiza
    ];
  }
}
