import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trapir/services/database.dart';

final realmProvider = Provider<DatabaseService>((ref) {
  final db = DatabaseService();
  ref.onDispose(db.closeRealm);
  return db;
});
