// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

class Projects extends _Projects
    with RealmEntity, RealmObjectBase, RealmObject {
  Projects(
    String uuid,
    String projectName,
    String projectDescription,
    String projectLocation,
    DateTime projectCreationDate,
    DateTime projectLastUpdateDate,
    String principalInvestigator,
    String dataCollector,
  ) {
    RealmObjectBase.set(this, 'uuid', uuid);
    RealmObjectBase.set(this, 'projectName', projectName);
    RealmObjectBase.set(this, 'projectDescription', projectDescription);
    RealmObjectBase.set(this, 'projectLocation', projectLocation);
    RealmObjectBase.set(this, 'projectCreationDate', projectCreationDate);
    RealmObjectBase.set(this, 'projectLastUpdateDate', projectLastUpdateDate);
    RealmObjectBase.set(this, 'principalInvestigator', principalInvestigator);
    RealmObjectBase.set(this, 'dataCollector', dataCollector);
  }

  Projects._();

  @override
  String get uuid => RealmObjectBase.get<String>(this, 'uuid') as String;
  @override
  set uuid(String value) => RealmObjectBase.set(this, 'uuid', value);

  @override
  String get projectName =>
      RealmObjectBase.get<String>(this, 'projectName') as String;
  @override
  set projectName(String value) =>
      RealmObjectBase.set(this, 'projectName', value);

  @override
  String get projectDescription =>
      RealmObjectBase.get<String>(this, 'projectDescription') as String;
  @override
  set projectDescription(String value) =>
      RealmObjectBase.set(this, 'projectDescription', value);

  @override
  String get projectLocation =>
      RealmObjectBase.get<String>(this, 'projectLocation') as String;
  @override
  set projectLocation(String value) =>
      RealmObjectBase.set(this, 'projectLocation', value);

  @override
  DateTime get projectCreationDate =>
      RealmObjectBase.get<DateTime>(this, 'projectCreationDate') as DateTime;
  @override
  set projectCreationDate(DateTime value) =>
      RealmObjectBase.set(this, 'projectCreationDate', value);

  @override
  DateTime get projectLastUpdateDate =>
      RealmObjectBase.get<DateTime>(this, 'projectLastUpdateDate') as DateTime;
  @override
  set projectLastUpdateDate(DateTime value) =>
      RealmObjectBase.set(this, 'projectLastUpdateDate', value);

  @override
  String get principalInvestigator =>
      RealmObjectBase.get<String>(this, 'principalInvestigator') as String;
  @override
  set principalInvestigator(String value) =>
      RealmObjectBase.set(this, 'principalInvestigator', value);

  @override
  String get dataCollector =>
      RealmObjectBase.get<String>(this, 'dataCollector') as String;
  @override
  set dataCollector(String value) =>
      RealmObjectBase.set(this, 'dataCollector', value);

  @override
  Stream<RealmObjectChanges<Projects>> get changes =>
      RealmObjectBase.getChanges<Projects>(this);

  @override
  Projects freeze() => RealmObjectBase.freezeObject<Projects>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(Projects._);
    return const SchemaObject(ObjectType.realmObject, Projects, 'Projects', [
      SchemaProperty('uuid', RealmPropertyType.string, primaryKey: true),
      SchemaProperty('projectName', RealmPropertyType.string),
      SchemaProperty('projectDescription', RealmPropertyType.string),
      SchemaProperty('projectLocation', RealmPropertyType.string),
      SchemaProperty('projectCreationDate', RealmPropertyType.timestamp),
      SchemaProperty('projectLastUpdateDate', RealmPropertyType.timestamp),
      SchemaProperty('principalInvestigator', RealmPropertyType.string),
      SchemaProperty('dataCollector', RealmPropertyType.string),
    ]);
  }
}

class Images extends _Images with RealmEntity, RealmObjectBase, RealmObject {
  Images(
    String projectUuid,
    String imageParentPath,
    String deploymentId,
    String age,
    String sex,
    int temperatureInCelsius, {
    String? gridId,
    ImageMetadata? imageMetadata,
    String? identifiedBy,
    Taxonomy? taxon,
  }) {
    RealmObjectBase.set(this, 'projectUuid', projectUuid);
    RealmObjectBase.set(this, 'imageParentPath', imageParentPath);
    RealmObjectBase.set(this, 'deploymentId', deploymentId);
    RealmObjectBase.set(this, 'gridId', gridId);
    RealmObjectBase.set(this, 'imageMetadata', imageMetadata);
    RealmObjectBase.set(this, 'identifiedBy', identifiedBy);
    RealmObjectBase.set(this, 'taxon', taxon);
    RealmObjectBase.set(this, 'age', age);
    RealmObjectBase.set(this, 'sex', sex);
    RealmObjectBase.set(this, 'temperatureInCelsius', temperatureInCelsius);
  }

  Images._();

  @override
  String get projectUuid =>
      RealmObjectBase.get<String>(this, 'projectUuid') as String;
  @override
  set projectUuid(String value) =>
      RealmObjectBase.set(this, 'projectUuid', value);

  @override
  String get imageParentPath =>
      RealmObjectBase.get<String>(this, 'imageParentPath') as String;
  @override
  set imageParentPath(String value) =>
      RealmObjectBase.set(this, 'imageParentPath', value);

  @override
  String get deploymentId =>
      RealmObjectBase.get<String>(this, 'deploymentId') as String;
  @override
  set deploymentId(String value) =>
      RealmObjectBase.set(this, 'deploymentId', value);

  @override
  String? get gridId => RealmObjectBase.get<String>(this, 'gridId') as String?;
  @override
  set gridId(String? value) => RealmObjectBase.set(this, 'gridId', value);

  @override
  ImageMetadata? get imageMetadata =>
      RealmObjectBase.get<ImageMetadata>(this, 'imageMetadata')
          as ImageMetadata?;
  @override
  set imageMetadata(covariant ImageMetadata? value) =>
      RealmObjectBase.set(this, 'imageMetadata', value);

  @override
  String? get identifiedBy =>
      RealmObjectBase.get<String>(this, 'identifiedBy') as String?;
  @override
  set identifiedBy(String? value) =>
      RealmObjectBase.set(this, 'identifiedBy', value);

  @override
  Taxonomy? get taxon =>
      RealmObjectBase.get<Taxonomy>(this, 'taxon') as Taxonomy?;
  @override
  set taxon(covariant Taxonomy? value) =>
      RealmObjectBase.set(this, 'taxon', value);

  @override
  String get age => RealmObjectBase.get<String>(this, 'age') as String;
  @override
  set age(String value) => RealmObjectBase.set(this, 'age', value);

  @override
  String get sex => RealmObjectBase.get<String>(this, 'sex') as String;
  @override
  set sex(String value) => RealmObjectBase.set(this, 'sex', value);

  @override
  int get temperatureInCelsius =>
      RealmObjectBase.get<int>(this, 'temperatureInCelsius') as int;
  @override
  set temperatureInCelsius(int value) =>
      RealmObjectBase.set(this, 'temperatureInCelsius', value);

  @override
  Stream<RealmObjectChanges<Images>> get changes =>
      RealmObjectBase.getChanges<Images>(this);

  @override
  Images freeze() => RealmObjectBase.freezeObject<Images>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(Images._);
    return const SchemaObject(ObjectType.realmObject, Images, 'Images', [
      SchemaProperty('projectUuid', RealmPropertyType.string, primaryKey: true),
      SchemaProperty('imageParentPath', RealmPropertyType.string),
      SchemaProperty('deploymentId', RealmPropertyType.string),
      SchemaProperty('gridId', RealmPropertyType.string, optional: true),
      SchemaProperty('imageMetadata', RealmPropertyType.object,
          optional: true, linkTarget: 'ImageMetadata'),
      SchemaProperty('identifiedBy', RealmPropertyType.string, optional: true),
      SchemaProperty('taxon', RealmPropertyType.object,
          optional: true, linkTarget: 'Taxonomy'),
      SchemaProperty('age', RealmPropertyType.string),
      SchemaProperty('sex', RealmPropertyType.string),
      SchemaProperty('temperatureInCelsius', RealmPropertyType.int),
    ]);
  }
}

class ImageMetadata extends _ImageMetadata
    with RealmEntity, RealmObjectBase, RealmObject {
  ImageMetadata(
    String imageId,
    String imagePath, {
    String? imageType,
    String? imageFormat,
    DateTime? captureDate,
  }) {
    RealmObjectBase.set(this, 'imageId', imageId);
    RealmObjectBase.set(this, 'imagePath', imagePath);
    RealmObjectBase.set(this, 'imageType', imageType);
    RealmObjectBase.set(this, 'imageFormat', imageFormat);
    RealmObjectBase.set(this, 'captureDate', captureDate);
  }

  ImageMetadata._();

  @override
  String get imageId => RealmObjectBase.get<String>(this, 'imageId') as String;
  @override
  set imageId(String value) => RealmObjectBase.set(this, 'imageId', value);

  @override
  String get imagePath =>
      RealmObjectBase.get<String>(this, 'imagePath') as String;
  @override
  set imagePath(String value) => RealmObjectBase.set(this, 'imagePath', value);

  @override
  String? get imageType =>
      RealmObjectBase.get<String>(this, 'imageType') as String?;
  @override
  set imageType(String? value) => RealmObjectBase.set(this, 'imageType', value);

  @override
  String? get imageFormat =>
      RealmObjectBase.get<String>(this, 'imageFormat') as String?;
  @override
  set imageFormat(String? value) =>
      RealmObjectBase.set(this, 'imageFormat', value);

  @override
  DateTime? get captureDate =>
      RealmObjectBase.get<DateTime>(this, 'captureDate') as DateTime?;
  @override
  set captureDate(DateTime? value) =>
      RealmObjectBase.set(this, 'captureDate', value);

  @override
  Stream<RealmObjectChanges<ImageMetadata>> get changes =>
      RealmObjectBase.getChanges<ImageMetadata>(this);

  @override
  ImageMetadata freeze() => RealmObjectBase.freezeObject<ImageMetadata>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(ImageMetadata._);
    return const SchemaObject(
        ObjectType.realmObject, ImageMetadata, 'ImageMetadata', [
      SchemaProperty('imageId', RealmPropertyType.string, primaryKey: true),
      SchemaProperty('imagePath', RealmPropertyType.string),
      SchemaProperty('imageType', RealmPropertyType.string, optional: true),
      SchemaProperty('imageFormat', RealmPropertyType.string, optional: true),
      SchemaProperty('captureDate', RealmPropertyType.timestamp,
          optional: true),
    ]);
  }
}

class Taxonomy extends _Taxonomy
    with RealmEntity, RealmObjectBase, RealmObject {
  Taxonomy(
    ObjectId taxonId,
    String taxonClass,
    String taxonOrder,
    String taxonFamily,
    String genus,
    String specificEpithet, {
    String? infraspecificEpithet,
    String? taxonCommonName,
  }) {
    RealmObjectBase.set(this, 'taxonId', taxonId);
    RealmObjectBase.set(this, 'taxonClass', taxonClass);
    RealmObjectBase.set(this, 'taxonOrder', taxonOrder);
    RealmObjectBase.set(this, 'taxonFamily', taxonFamily);
    RealmObjectBase.set(this, 'genus', genus);
    RealmObjectBase.set(this, 'specificEpithet', specificEpithet);
    RealmObjectBase.set(this, 'infraspecificEpithet', infraspecificEpithet);
    RealmObjectBase.set(this, 'taxonCommonName', taxonCommonName);
  }

  Taxonomy._();

  @override
  ObjectId get taxonId =>
      RealmObjectBase.get<ObjectId>(this, 'taxonId') as ObjectId;
  @override
  set taxonId(ObjectId value) => RealmObjectBase.set(this, 'taxonId', value);

  @override
  String get taxonClass =>
      RealmObjectBase.get<String>(this, 'taxonClass') as String;
  @override
  set taxonClass(String value) =>
      RealmObjectBase.set(this, 'taxonClass', value);

  @override
  String get taxonOrder =>
      RealmObjectBase.get<String>(this, 'taxonOrder') as String;
  @override
  set taxonOrder(String value) =>
      RealmObjectBase.set(this, 'taxonOrder', value);

  @override
  String get taxonFamily =>
      RealmObjectBase.get<String>(this, 'taxonFamily') as String;
  @override
  set taxonFamily(String value) =>
      RealmObjectBase.set(this, 'taxonFamily', value);

  @override
  String get genus => RealmObjectBase.get<String>(this, 'genus') as String;
  @override
  set genus(String value) => RealmObjectBase.set(this, 'genus', value);

  @override
  String get specificEpithet =>
      RealmObjectBase.get<String>(this, 'specificEpithet') as String;
  @override
  set specificEpithet(String value) =>
      RealmObjectBase.set(this, 'specificEpithet', value);

  @override
  String? get infraspecificEpithet =>
      RealmObjectBase.get<String>(this, 'infraspecificEpithet') as String?;
  @override
  set infraspecificEpithet(String? value) =>
      RealmObjectBase.set(this, 'infraspecificEpithet', value);

  @override
  String? get taxonCommonName =>
      RealmObjectBase.get<String>(this, 'taxonCommonName') as String?;
  @override
  set taxonCommonName(String? value) =>
      RealmObjectBase.set(this, 'taxonCommonName', value);

  @override
  Stream<RealmObjectChanges<Taxonomy>> get changes =>
      RealmObjectBase.getChanges<Taxonomy>(this);

  @override
  Taxonomy freeze() => RealmObjectBase.freezeObject<Taxonomy>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(Taxonomy._);
    return const SchemaObject(ObjectType.realmObject, Taxonomy, 'Taxonomy', [
      SchemaProperty('taxonId', RealmPropertyType.objectid, primaryKey: true),
      SchemaProperty('taxonClass', RealmPropertyType.string),
      SchemaProperty('taxonOrder', RealmPropertyType.string),
      SchemaProperty('taxonFamily', RealmPropertyType.string),
      SchemaProperty('genus', RealmPropertyType.string),
      SchemaProperty('specificEpithet', RealmPropertyType.string),
      SchemaProperty('infraspecificEpithet', RealmPropertyType.string,
          optional: true),
      SchemaProperty('taxonCommonName', RealmPropertyType.string,
          optional: true),
    ]);
  }
}
