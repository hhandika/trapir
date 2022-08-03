// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: type=lint
class ProjectData extends DataClass implements Insertable<ProjectData> {
  final String projectUuid;
  final String projectName;
  final String? projectDescription;
  final String? principalInvestigator;
  final String? cataloger;
  ProjectData(
      {required this.projectUuid,
      required this.projectName,
      this.projectDescription,
      this.principalInvestigator,
      this.cataloger});
  factory ProjectData.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return ProjectData(
      projectUuid: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}projectUuid'])!,
      projectName: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}projectName'])!,
      projectDescription: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}projectDescription']),
      principalInvestigator: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}principalInvestigator']),
      cataloger: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}cataloger']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['projectUuid'] = Variable<String>(projectUuid);
    map['projectName'] = Variable<String>(projectName);
    if (!nullToAbsent || projectDescription != null) {
      map['projectDescription'] = Variable<String?>(projectDescription);
    }
    if (!nullToAbsent || principalInvestigator != null) {
      map['principalInvestigator'] = Variable<String?>(principalInvestigator);
    }
    if (!nullToAbsent || cataloger != null) {
      map['cataloger'] = Variable<String?>(cataloger);
    }
    return map;
  }

  ProjectCompanion toCompanion(bool nullToAbsent) {
    return ProjectCompanion(
      projectUuid: Value(projectUuid),
      projectName: Value(projectName),
      projectDescription: projectDescription == null && nullToAbsent
          ? const Value.absent()
          : Value(projectDescription),
      principalInvestigator: principalInvestigator == null && nullToAbsent
          ? const Value.absent()
          : Value(principalInvestigator),
      cataloger: cataloger == null && nullToAbsent
          ? const Value.absent()
          : Value(cataloger),
    );
  }

  factory ProjectData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ProjectData(
      projectUuid: serializer.fromJson<String>(json['projectUuid']),
      projectName: serializer.fromJson<String>(json['projectName']),
      projectDescription:
          serializer.fromJson<String?>(json['projectDescription']),
      principalInvestigator:
          serializer.fromJson<String?>(json['principalInvestigator']),
      cataloger: serializer.fromJson<String?>(json['cataloger']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'projectUuid': serializer.toJson<String>(projectUuid),
      'projectName': serializer.toJson<String>(projectName),
      'projectDescription': serializer.toJson<String?>(projectDescription),
      'principalInvestigator':
          serializer.toJson<String?>(principalInvestigator),
      'cataloger': serializer.toJson<String?>(cataloger),
    };
  }

  ProjectData copyWith(
          {String? projectUuid,
          String? projectName,
          String? projectDescription,
          String? principalInvestigator,
          String? cataloger}) =>
      ProjectData(
        projectUuid: projectUuid ?? this.projectUuid,
        projectName: projectName ?? this.projectName,
        projectDescription: projectDescription ?? this.projectDescription,
        principalInvestigator:
            principalInvestigator ?? this.principalInvestigator,
        cataloger: cataloger ?? this.cataloger,
      );
  @override
  String toString() {
    return (StringBuffer('ProjectData(')
          ..write('projectUuid: $projectUuid, ')
          ..write('projectName: $projectName, ')
          ..write('projectDescription: $projectDescription, ')
          ..write('principalInvestigator: $principalInvestigator, ')
          ..write('cataloger: $cataloger')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(projectUuid, projectName, projectDescription,
      principalInvestigator, cataloger);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ProjectData &&
          other.projectUuid == this.projectUuid &&
          other.projectName == this.projectName &&
          other.projectDescription == this.projectDescription &&
          other.principalInvestigator == this.principalInvestigator &&
          other.cataloger == this.cataloger);
}

class ProjectCompanion extends UpdateCompanion<ProjectData> {
  final Value<String> projectUuid;
  final Value<String> projectName;
  final Value<String?> projectDescription;
  final Value<String?> principalInvestigator;
  final Value<String?> cataloger;
  const ProjectCompanion({
    this.projectUuid = const Value.absent(),
    this.projectName = const Value.absent(),
    this.projectDescription = const Value.absent(),
    this.principalInvestigator = const Value.absent(),
    this.cataloger = const Value.absent(),
  });
  ProjectCompanion.insert({
    required String projectUuid,
    required String projectName,
    this.projectDescription = const Value.absent(),
    this.principalInvestigator = const Value.absent(),
    this.cataloger = const Value.absent(),
  })  : projectUuid = Value(projectUuid),
        projectName = Value(projectName);
  static Insertable<ProjectData> custom({
    Expression<String>? projectUuid,
    Expression<String>? projectName,
    Expression<String?>? projectDescription,
    Expression<String?>? principalInvestigator,
    Expression<String?>? cataloger,
  }) {
    return RawValuesInsertable({
      if (projectUuid != null) 'projectUuid': projectUuid,
      if (projectName != null) 'projectName': projectName,
      if (projectDescription != null) 'projectDescription': projectDescription,
      if (principalInvestigator != null)
        'principalInvestigator': principalInvestigator,
      if (cataloger != null) 'cataloger': cataloger,
    });
  }

  ProjectCompanion copyWith(
      {Value<String>? projectUuid,
      Value<String>? projectName,
      Value<String?>? projectDescription,
      Value<String?>? principalInvestigator,
      Value<String?>? cataloger}) {
    return ProjectCompanion(
      projectUuid: projectUuid ?? this.projectUuid,
      projectName: projectName ?? this.projectName,
      projectDescription: projectDescription ?? this.projectDescription,
      principalInvestigator:
          principalInvestigator ?? this.principalInvestigator,
      cataloger: cataloger ?? this.cataloger,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (projectUuid.present) {
      map['projectUuid'] = Variable<String>(projectUuid.value);
    }
    if (projectName.present) {
      map['projectName'] = Variable<String>(projectName.value);
    }
    if (projectDescription.present) {
      map['projectDescription'] = Variable<String?>(projectDescription.value);
    }
    if (principalInvestigator.present) {
      map['principalInvestigator'] =
          Variable<String?>(principalInvestigator.value);
    }
    if (cataloger.present) {
      map['cataloger'] = Variable<String?>(cataloger.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProjectCompanion(')
          ..write('projectUuid: $projectUuid, ')
          ..write('projectName: $projectName, ')
          ..write('projectDescription: $projectDescription, ')
          ..write('principalInvestigator: $principalInvestigator, ')
          ..write('cataloger: $cataloger')
          ..write(')'))
        .toString();
  }
}

class Project extends Table with TableInfo<Project, ProjectData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  Project(this.attachedDatabase, [this._alias]);
  final VerificationMeta _projectUuidMeta =
      const VerificationMeta('projectUuid');
  late final GeneratedColumn<String?> projectUuid = GeneratedColumn<String?>(
      'projectUuid', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL PRIMARY KEY');
  final VerificationMeta _projectNameMeta =
      const VerificationMeta('projectName');
  late final GeneratedColumn<String?> projectName = GeneratedColumn<String?>(
      'projectName', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL UNIQUE');
  final VerificationMeta _projectDescriptionMeta =
      const VerificationMeta('projectDescription');
  late final GeneratedColumn<String?> projectDescription =
      GeneratedColumn<String?>('projectDescription', aliasedName, true,
          type: const StringType(),
          requiredDuringInsert: false,
          $customConstraints: '');
  final VerificationMeta _principalInvestigatorMeta =
      const VerificationMeta('principalInvestigator');
  late final GeneratedColumn<String?> principalInvestigator =
      GeneratedColumn<String?>('principalInvestigator', aliasedName, true,
          type: const StringType(),
          requiredDuringInsert: false,
          $customConstraints: '');
  final VerificationMeta _catalogerMeta = const VerificationMeta('cataloger');
  late final GeneratedColumn<String?> cataloger = GeneratedColumn<String?>(
      'cataloger', aliasedName, true,
      type: const StringType(),
      requiredDuringInsert: false,
      $customConstraints: '');
  @override
  List<GeneratedColumn> get $columns => [
        projectUuid,
        projectName,
        projectDescription,
        principalInvestigator,
        cataloger
      ];
  @override
  String get aliasedName => _alias ?? 'project';
  @override
  String get actualTableName => 'project';
  @override
  VerificationContext validateIntegrity(Insertable<ProjectData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('projectUuid')) {
      context.handle(
          _projectUuidMeta,
          projectUuid.isAcceptableOrUnknown(
              data['projectUuid']!, _projectUuidMeta));
    } else if (isInserting) {
      context.missing(_projectUuidMeta);
    }
    if (data.containsKey('projectName')) {
      context.handle(
          _projectNameMeta,
          projectName.isAcceptableOrUnknown(
              data['projectName']!, _projectNameMeta));
    } else if (isInserting) {
      context.missing(_projectNameMeta);
    }
    if (data.containsKey('projectDescription')) {
      context.handle(
          _projectDescriptionMeta,
          projectDescription.isAcceptableOrUnknown(
              data['projectDescription']!, _projectDescriptionMeta));
    }
    if (data.containsKey('principalInvestigator')) {
      context.handle(
          _principalInvestigatorMeta,
          principalInvestigator.isAcceptableOrUnknown(
              data['principalInvestigator']!, _principalInvestigatorMeta));
    }
    if (data.containsKey('cataloger')) {
      context.handle(_catalogerMeta,
          cataloger.isAcceptableOrUnknown(data['cataloger']!, _catalogerMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {projectUuid};
  @override
  ProjectData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return ProjectData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  Project createAlias(String alias) {
    return Project(attachedDatabase, alias);
  }

  @override
  bool get dontWriteConstraints => true;
}

class Image extends DataClass implements Insertable<Image> {
  final String siteID;
  final String? projectUuid;
  final String? taxon;
  final String? leadStuff;
  final String? type;
  final String? country;
  final String? state;
  final String? preciseLocality;
  final double? latitude;
  final double? longitude;
  final int? elevation;
  Image(
      {required this.siteID,
      this.projectUuid,
      this.taxon,
      this.leadStuff,
      this.type,
      this.country,
      this.state,
      this.preciseLocality,
      this.latitude,
      this.longitude,
      this.elevation});
  factory Image.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Image(
      siteID: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}siteID'])!,
      projectUuid: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}projectUuid']),
      taxon: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}taxon']),
      leadStuff: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}leadStuff']),
      type: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}type']),
      country: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}country']),
      state: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}state']),
      preciseLocality: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}preciseLocality']),
      latitude: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}latitude']),
      longitude: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}longitude']),
      elevation: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}elevation']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['siteID'] = Variable<String>(siteID);
    if (!nullToAbsent || projectUuid != null) {
      map['projectUuid'] = Variable<String?>(projectUuid);
    }
    if (!nullToAbsent || taxon != null) {
      map['taxon'] = Variable<String?>(taxon);
    }
    if (!nullToAbsent || leadStuff != null) {
      map['leadStuff'] = Variable<String?>(leadStuff);
    }
    if (!nullToAbsent || type != null) {
      map['type'] = Variable<String?>(type);
    }
    if (!nullToAbsent || country != null) {
      map['country'] = Variable<String?>(country);
    }
    if (!nullToAbsent || state != null) {
      map['state'] = Variable<String?>(state);
    }
    if (!nullToAbsent || preciseLocality != null) {
      map['preciseLocality'] = Variable<String?>(preciseLocality);
    }
    if (!nullToAbsent || latitude != null) {
      map['latitude'] = Variable<double?>(latitude);
    }
    if (!nullToAbsent || longitude != null) {
      map['longitude'] = Variable<double?>(longitude);
    }
    if (!nullToAbsent || elevation != null) {
      map['elevation'] = Variable<int?>(elevation);
    }
    return map;
  }

  ImagesCompanion toCompanion(bool nullToAbsent) {
    return ImagesCompanion(
      siteID: Value(siteID),
      projectUuid: projectUuid == null && nullToAbsent
          ? const Value.absent()
          : Value(projectUuid),
      taxon:
          taxon == null && nullToAbsent ? const Value.absent() : Value(taxon),
      leadStuff: leadStuff == null && nullToAbsent
          ? const Value.absent()
          : Value(leadStuff),
      type: type == null && nullToAbsent ? const Value.absent() : Value(type),
      country: country == null && nullToAbsent
          ? const Value.absent()
          : Value(country),
      state:
          state == null && nullToAbsent ? const Value.absent() : Value(state),
      preciseLocality: preciseLocality == null && nullToAbsent
          ? const Value.absent()
          : Value(preciseLocality),
      latitude: latitude == null && nullToAbsent
          ? const Value.absent()
          : Value(latitude),
      longitude: longitude == null && nullToAbsent
          ? const Value.absent()
          : Value(longitude),
      elevation: elevation == null && nullToAbsent
          ? const Value.absent()
          : Value(elevation),
    );
  }

  factory Image.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Image(
      siteID: serializer.fromJson<String>(json['siteID']),
      projectUuid: serializer.fromJson<String?>(json['projectUuid']),
      taxon: serializer.fromJson<String?>(json['taxon']),
      leadStuff: serializer.fromJson<String?>(json['leadStuff']),
      type: serializer.fromJson<String?>(json['type']),
      country: serializer.fromJson<String?>(json['country']),
      state: serializer.fromJson<String?>(json['state']),
      preciseLocality: serializer.fromJson<String?>(json['preciseLocality']),
      latitude: serializer.fromJson<double?>(json['latitude']),
      longitude: serializer.fromJson<double?>(json['longitude']),
      elevation: serializer.fromJson<int?>(json['elevation']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'siteID': serializer.toJson<String>(siteID),
      'projectUuid': serializer.toJson<String?>(projectUuid),
      'taxon': serializer.toJson<String?>(taxon),
      'leadStuff': serializer.toJson<String?>(leadStuff),
      'type': serializer.toJson<String?>(type),
      'country': serializer.toJson<String?>(country),
      'state': serializer.toJson<String?>(state),
      'preciseLocality': serializer.toJson<String?>(preciseLocality),
      'latitude': serializer.toJson<double?>(latitude),
      'longitude': serializer.toJson<double?>(longitude),
      'elevation': serializer.toJson<int?>(elevation),
    };
  }

  Image copyWith(
          {String? siteID,
          String? projectUuid,
          String? taxon,
          String? leadStuff,
          String? type,
          String? country,
          String? state,
          String? preciseLocality,
          double? latitude,
          double? longitude,
          int? elevation}) =>
      Image(
        siteID: siteID ?? this.siteID,
        projectUuid: projectUuid ?? this.projectUuid,
        taxon: taxon ?? this.taxon,
        leadStuff: leadStuff ?? this.leadStuff,
        type: type ?? this.type,
        country: country ?? this.country,
        state: state ?? this.state,
        preciseLocality: preciseLocality ?? this.preciseLocality,
        latitude: latitude ?? this.latitude,
        longitude: longitude ?? this.longitude,
        elevation: elevation ?? this.elevation,
      );
  @override
  String toString() {
    return (StringBuffer('Image(')
          ..write('siteID: $siteID, ')
          ..write('projectUuid: $projectUuid, ')
          ..write('taxon: $taxon, ')
          ..write('leadStuff: $leadStuff, ')
          ..write('type: $type, ')
          ..write('country: $country, ')
          ..write('state: $state, ')
          ..write('preciseLocality: $preciseLocality, ')
          ..write('latitude: $latitude, ')
          ..write('longitude: $longitude, ')
          ..write('elevation: $elevation')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(siteID, projectUuid, taxon, leadStuff, type,
      country, state, preciseLocality, latitude, longitude, elevation);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Image &&
          other.siteID == this.siteID &&
          other.projectUuid == this.projectUuid &&
          other.taxon == this.taxon &&
          other.leadStuff == this.leadStuff &&
          other.type == this.type &&
          other.country == this.country &&
          other.state == this.state &&
          other.preciseLocality == this.preciseLocality &&
          other.latitude == this.latitude &&
          other.longitude == this.longitude &&
          other.elevation == this.elevation);
}

class ImagesCompanion extends UpdateCompanion<Image> {
  final Value<String> siteID;
  final Value<String?> projectUuid;
  final Value<String?> taxon;
  final Value<String?> leadStuff;
  final Value<String?> type;
  final Value<String?> country;
  final Value<String?> state;
  final Value<String?> preciseLocality;
  final Value<double?> latitude;
  final Value<double?> longitude;
  final Value<int?> elevation;
  const ImagesCompanion({
    this.siteID = const Value.absent(),
    this.projectUuid = const Value.absent(),
    this.taxon = const Value.absent(),
    this.leadStuff = const Value.absent(),
    this.type = const Value.absent(),
    this.country = const Value.absent(),
    this.state = const Value.absent(),
    this.preciseLocality = const Value.absent(),
    this.latitude = const Value.absent(),
    this.longitude = const Value.absent(),
    this.elevation = const Value.absent(),
  });
  ImagesCompanion.insert({
    required String siteID,
    this.projectUuid = const Value.absent(),
    this.taxon = const Value.absent(),
    this.leadStuff = const Value.absent(),
    this.type = const Value.absent(),
    this.country = const Value.absent(),
    this.state = const Value.absent(),
    this.preciseLocality = const Value.absent(),
    this.latitude = const Value.absent(),
    this.longitude = const Value.absent(),
    this.elevation = const Value.absent(),
  }) : siteID = Value(siteID);
  static Insertable<Image> custom({
    Expression<String>? siteID,
    Expression<String?>? projectUuid,
    Expression<String?>? taxon,
    Expression<String?>? leadStuff,
    Expression<String?>? type,
    Expression<String?>? country,
    Expression<String?>? state,
    Expression<String?>? preciseLocality,
    Expression<double?>? latitude,
    Expression<double?>? longitude,
    Expression<int?>? elevation,
  }) {
    return RawValuesInsertable({
      if (siteID != null) 'siteID': siteID,
      if (projectUuid != null) 'projectUuid': projectUuid,
      if (taxon != null) 'taxon': taxon,
      if (leadStuff != null) 'leadStuff': leadStuff,
      if (type != null) 'type': type,
      if (country != null) 'country': country,
      if (state != null) 'state': state,
      if (preciseLocality != null) 'preciseLocality': preciseLocality,
      if (latitude != null) 'latitude': latitude,
      if (longitude != null) 'longitude': longitude,
      if (elevation != null) 'elevation': elevation,
    });
  }

  ImagesCompanion copyWith(
      {Value<String>? siteID,
      Value<String?>? projectUuid,
      Value<String?>? taxon,
      Value<String?>? leadStuff,
      Value<String?>? type,
      Value<String?>? country,
      Value<String?>? state,
      Value<String?>? preciseLocality,
      Value<double?>? latitude,
      Value<double?>? longitude,
      Value<int?>? elevation}) {
    return ImagesCompanion(
      siteID: siteID ?? this.siteID,
      projectUuid: projectUuid ?? this.projectUuid,
      taxon: taxon ?? this.taxon,
      leadStuff: leadStuff ?? this.leadStuff,
      type: type ?? this.type,
      country: country ?? this.country,
      state: state ?? this.state,
      preciseLocality: preciseLocality ?? this.preciseLocality,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      elevation: elevation ?? this.elevation,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (siteID.present) {
      map['siteID'] = Variable<String>(siteID.value);
    }
    if (projectUuid.present) {
      map['projectUuid'] = Variable<String?>(projectUuid.value);
    }
    if (taxon.present) {
      map['taxon'] = Variable<String?>(taxon.value);
    }
    if (leadStuff.present) {
      map['leadStuff'] = Variable<String?>(leadStuff.value);
    }
    if (type.present) {
      map['type'] = Variable<String?>(type.value);
    }
    if (country.present) {
      map['country'] = Variable<String?>(country.value);
    }
    if (state.present) {
      map['state'] = Variable<String?>(state.value);
    }
    if (preciseLocality.present) {
      map['preciseLocality'] = Variable<String?>(preciseLocality.value);
    }
    if (latitude.present) {
      map['latitude'] = Variable<double?>(latitude.value);
    }
    if (longitude.present) {
      map['longitude'] = Variable<double?>(longitude.value);
    }
    if (elevation.present) {
      map['elevation'] = Variable<int?>(elevation.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ImagesCompanion(')
          ..write('siteID: $siteID, ')
          ..write('projectUuid: $projectUuid, ')
          ..write('taxon: $taxon, ')
          ..write('leadStuff: $leadStuff, ')
          ..write('type: $type, ')
          ..write('country: $country, ')
          ..write('state: $state, ')
          ..write('preciseLocality: $preciseLocality, ')
          ..write('latitude: $latitude, ')
          ..write('longitude: $longitude, ')
          ..write('elevation: $elevation')
          ..write(')'))
        .toString();
  }
}

class Images extends Table with TableInfo<Images, Image> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  Images(this.attachedDatabase, [this._alias]);
  final VerificationMeta _siteIDMeta = const VerificationMeta('siteID');
  late final GeneratedColumn<String?> siteID = GeneratedColumn<String?>(
      'siteID', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL PRIMARY KEY');
  final VerificationMeta _projectUuidMeta =
      const VerificationMeta('projectUuid');
  late final GeneratedColumn<String?> projectUuid = GeneratedColumn<String?>(
      'projectUuid', aliasedName, true,
      type: const StringType(),
      requiredDuringInsert: false,
      $customConstraints: '');
  final VerificationMeta _taxonMeta = const VerificationMeta('taxon');
  late final GeneratedColumn<String?> taxon = GeneratedColumn<String?>(
      'taxon', aliasedName, true,
      type: const StringType(),
      requiredDuringInsert: false,
      $customConstraints: '');
  final VerificationMeta _leadStuffMeta = const VerificationMeta('leadStuff');
  late final GeneratedColumn<String?> leadStuff = GeneratedColumn<String?>(
      'leadStuff', aliasedName, true,
      type: const StringType(),
      requiredDuringInsert: false,
      $customConstraints: '');
  final VerificationMeta _typeMeta = const VerificationMeta('type');
  late final GeneratedColumn<String?> type = GeneratedColumn<String?>(
      'type', aliasedName, true,
      type: const StringType(),
      requiredDuringInsert: false,
      $customConstraints: '');
  final VerificationMeta _countryMeta = const VerificationMeta('country');
  late final GeneratedColumn<String?> country = GeneratedColumn<String?>(
      'country', aliasedName, true,
      type: const StringType(),
      requiredDuringInsert: false,
      $customConstraints: '');
  final VerificationMeta _stateMeta = const VerificationMeta('state');
  late final GeneratedColumn<String?> state = GeneratedColumn<String?>(
      'state', aliasedName, true,
      type: const StringType(),
      requiredDuringInsert: false,
      $customConstraints: '');
  final VerificationMeta _preciseLocalityMeta =
      const VerificationMeta('preciseLocality');
  late final GeneratedColumn<String?> preciseLocality =
      GeneratedColumn<String?>('preciseLocality', aliasedName, true,
          type: const StringType(),
          requiredDuringInsert: false,
          $customConstraints: '');
  final VerificationMeta _latitudeMeta = const VerificationMeta('latitude');
  late final GeneratedColumn<double?> latitude = GeneratedColumn<double?>(
      'latitude', aliasedName, true,
      type: const RealType(),
      requiredDuringInsert: false,
      $customConstraints: '');
  final VerificationMeta _longitudeMeta = const VerificationMeta('longitude');
  late final GeneratedColumn<double?> longitude = GeneratedColumn<double?>(
      'longitude', aliasedName, true,
      type: const RealType(),
      requiredDuringInsert: false,
      $customConstraints: '');
  final VerificationMeta _elevationMeta = const VerificationMeta('elevation');
  late final GeneratedColumn<int?> elevation = GeneratedColumn<int?>(
      'elevation', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      $customConstraints: '');
  @override
  List<GeneratedColumn> get $columns => [
        siteID,
        projectUuid,
        taxon,
        leadStuff,
        type,
        country,
        state,
        preciseLocality,
        latitude,
        longitude,
        elevation
      ];
  @override
  String get aliasedName => _alias ?? 'images';
  @override
  String get actualTableName => 'images';
  @override
  VerificationContext validateIntegrity(Insertable<Image> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('siteID')) {
      context.handle(_siteIDMeta,
          siteID.isAcceptableOrUnknown(data['siteID']!, _siteIDMeta));
    } else if (isInserting) {
      context.missing(_siteIDMeta);
    }
    if (data.containsKey('projectUuid')) {
      context.handle(
          _projectUuidMeta,
          projectUuid.isAcceptableOrUnknown(
              data['projectUuid']!, _projectUuidMeta));
    }
    if (data.containsKey('taxon')) {
      context.handle(
          _taxonMeta, taxon.isAcceptableOrUnknown(data['taxon']!, _taxonMeta));
    }
    if (data.containsKey('leadStuff')) {
      context.handle(_leadStuffMeta,
          leadStuff.isAcceptableOrUnknown(data['leadStuff']!, _leadStuffMeta));
    }
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type']!, _typeMeta));
    }
    if (data.containsKey('country')) {
      context.handle(_countryMeta,
          country.isAcceptableOrUnknown(data['country']!, _countryMeta));
    }
    if (data.containsKey('state')) {
      context.handle(
          _stateMeta, state.isAcceptableOrUnknown(data['state']!, _stateMeta));
    }
    if (data.containsKey('preciseLocality')) {
      context.handle(
          _preciseLocalityMeta,
          preciseLocality.isAcceptableOrUnknown(
              data['preciseLocality']!, _preciseLocalityMeta));
    }
    if (data.containsKey('latitude')) {
      context.handle(_latitudeMeta,
          latitude.isAcceptableOrUnknown(data['latitude']!, _latitudeMeta));
    }
    if (data.containsKey('longitude')) {
      context.handle(_longitudeMeta,
          longitude.isAcceptableOrUnknown(data['longitude']!, _longitudeMeta));
    }
    if (data.containsKey('elevation')) {
      context.handle(_elevationMeta,
          elevation.isAcceptableOrUnknown(data['elevation']!, _elevationMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {siteID};
  @override
  Image map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Image.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  Images createAlias(String alias) {
    return Images(attachedDatabase, alias);
  }

  @override
  bool get dontWriteConstraints => true;
}

abstract class _$Database extends GeneratedDatabase {
  _$Database(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final Project project = Project(this);
  late final Images images = Images(this);
  Selectable<ListProjectResult> listProject() {
    return customSelect('SELECT projectUuid,projectName FROM project',
        variables: [],
        readsFrom: {
          project,
        }).map((QueryRow row) {
      return ListProjectResult(
        projectUuid: row.read<String>('projectUuid'),
        projectName: row.read<String>('projectName'),
      );
    });
  }

  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [project, images];
}

class ListProjectResult {
  final String projectUuid;
  final String projectName;
  ListProjectResult({
    required this.projectUuid,
    required this.projectName,
  });
}
