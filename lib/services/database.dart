import 'package:realm/realm.dart';

import 'package:trapir/models/project.dart';

class DatabaseService {
  DatabaseService() {
    openRealm();
  }

  final Configuration _config = Configuration.local(
    [Projects.schema, Images.schema, ImageMetadata.schema, Taxonomy.schema],
  );

  late Realm _realm;

  openRealm() {
    Configuration.defaultRealmName = 'trapir.realm';
    _realm = Realm(_config);
  }

  closeRealm() {
    if (!_realm.isClosed) {
      _realm.close();
    }
  }

  Future<void> addProject(Projects project) async {
    _realm.write(() {
      _realm.add(project);
    });
  }

  Future<void> addImage(Images image) async {
    _realm.write(() {
      _realm.add(image);
    });
  }

  Future<void> addImageMetadata(ImageMetadata imageMetadata) async {
    _realm.write(() {
      _realm.add(imageMetadata);
    });
  }

  Future<void> addTaxonomy(Taxonomy taxonomy) async {
    _realm.write(() {
      _realm.add(taxonomy);
    });
  }

  Future<RealmResults<Projects>> getProjects() async {
    final projects = _realm.all<Projects>();
    projects.changes.listen((changes) {
      changes.inserted; // indexes of inserted objects
      changes.modified; // indexes of modified objects
      changes.deleted; // indexes of deleted objects
      changes.newModified; // indexes of modified objects
      // after deletions and insertions are accounted for
      changes.moved; // indexes of moved objects
      changes.results; // the full List of objects
    });
    return projects;
  }
}
