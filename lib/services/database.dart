import 'package:realm/realm.dart';

import 'package:trapir/models/project.dart';

class DatabaseService {
  DatabaseService() {
    openRealm();
  }

  final Configuration _config = Configuration.local(
      [Projects.schema, Images.schema, ImageMetadata.schema, Taxonomy.schema],
      path: 'trapir.realm');

  late Realm _realm;

  openRealm() {
    _realm = Realm(_config);
  }

  closeRealm() {
    if (!_realm.isClosed) {
      _realm.close();
    }
  }
}
