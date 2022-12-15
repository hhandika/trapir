import 'package:realm/realm.dart';

part 'project.g.dart';

@RealmModel()
class _Projects {
  @PrimaryKey()
  late String uuid;

  late String projectName;
  late String projectDescription;
  late String projectLocation;
  late String projectCreationDate;
  late String projectLastUpdateDate;
  late String principalInvestigator;
  late String dataCollector;
}

@RealmModel()
class _Images {
  @PrimaryKey()
  late String projectUuid;

  late String imageParentPath;
  late String deploymentId;
  late String? gridId;
  late _ImageMetadata? imageMetadata;
  late String? identifiedBy;
  late _Taxonomy? taxon;
  late String age;
  late String sex;
  late int temperatureInCelsius;
}

@RealmModel()
class _ImageMetadata {
  @PrimaryKey()
  late String imageId;

  late String imagePath;
  late String? imageType;
  late String? imageFormat;
  late DateTime? captureDate;
}

@RealmModel()
class _Taxonomy {
  @PrimaryKey()
  late ObjectId taxonId;

  late String taxonClass;
  late String taxonOrder;
  late String taxonFamily;
  late String genus;
  late String specificEpithet;
  late String? infraspecificEpithet;
  late String? taxonCommonName;
}
