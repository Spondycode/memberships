import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GroupsRecord extends FirestoreRecord {
  GroupsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "groupName" field.
  String? _groupName;
  String get groupName => _groupName ?? '';
  bool hasGroupName() => _groupName != null;

  // "headerPhoto" field.
  String? _headerPhoto;
  String get headerPhoto => _headerPhoto ?? '';
  bool hasHeaderPhoto() => _headerPhoto != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "admin1" field.
  String? _admin1;
  String get admin1 => _admin1 ?? '';
  bool hasAdmin1() => _admin1 != null;

  // "admin2" field.
  String? _admin2;
  String get admin2 => _admin2 ?? '';
  bool hasAdmin2() => _admin2 != null;

  // "admin3" field.
  String? _admin3;
  String get admin3 => _admin3 ?? '';
  bool hasAdmin3() => _admin3 != null;

  // "notifyOfInfoChanges" field.
  bool? _notifyOfInfoChanges;
  bool get notifyOfInfoChanges => _notifyOfInfoChanges ?? false;
  bool hasNotifyOfInfoChanges() => _notifyOfInfoChanges != null;

  // "emailSubsDefaults" field.
  String? _emailSubsDefaults;
  String get emailSubsDefaults => _emailSubsDefaults ?? '';
  bool hasEmailSubsDefaults() => _emailSubsDefaults != null;

  // "welcomeEmailEnabled" field.
  bool? _welcomeEmailEnabled;
  bool get welcomeEmailEnabled => _welcomeEmailEnabled ?? false;
  bool hasWelcomeEmailEnabled() => _welcomeEmailEnabled != null;

  // "welcomeEmailTitle" field.
  String? _welcomeEmailTitle;
  String get welcomeEmailTitle => _welcomeEmailTitle ?? '';
  bool hasWelcomeEmailTitle() => _welcomeEmailTitle != null;

  // "welcomeEmailContent" field.
  String? _welcomeEmailContent;
  String get welcomeEmailContent => _welcomeEmailContent ?? '';
  bool hasWelcomeEmailContent() => _welcomeEmailContent != null;

  // "groupPrivacyOptions" field.
  String? _groupPrivacyOptions;
  String get groupPrivacyOptions => _groupPrivacyOptions ?? '';
  bool hasGroupPrivacyOptions() => _groupPrivacyOptions != null;

  // "members" field.
  int? _members;
  int get members => _members ?? 0;
  bool hasMembers() => _members != null;

  void _initializeFields() {
    _groupName = snapshotData['groupName'] as String?;
    _headerPhoto = snapshotData['headerPhoto'] as String?;
    _description = snapshotData['description'] as String?;
    _admin1 = snapshotData['admin1'] as String?;
    _admin2 = snapshotData['admin2'] as String?;
    _admin3 = snapshotData['admin3'] as String?;
    _notifyOfInfoChanges = snapshotData['notifyOfInfoChanges'] as bool?;
    _emailSubsDefaults = snapshotData['emailSubsDefaults'] as String?;
    _welcomeEmailEnabled = snapshotData['welcomeEmailEnabled'] as bool?;
    _welcomeEmailTitle = snapshotData['welcomeEmailTitle'] as String?;
    _welcomeEmailContent = snapshotData['welcomeEmailContent'] as String?;
    _groupPrivacyOptions = snapshotData['groupPrivacyOptions'] as String?;
    _members = castToType<int>(snapshotData['members']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Groups');

  static Stream<GroupsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => GroupsRecord.fromSnapshot(s));

  static Future<GroupsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => GroupsRecord.fromSnapshot(s));

  static GroupsRecord fromSnapshot(DocumentSnapshot snapshot) => GroupsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static GroupsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      GroupsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'GroupsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is GroupsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGroupsRecordData({
  String? groupName,
  String? headerPhoto,
  String? description,
  String? admin1,
  String? admin2,
  String? admin3,
  bool? notifyOfInfoChanges,
  String? emailSubsDefaults,
  bool? welcomeEmailEnabled,
  String? welcomeEmailTitle,
  String? welcomeEmailContent,
  String? groupPrivacyOptions,
  int? members,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'groupName': groupName,
      'headerPhoto': headerPhoto,
      'description': description,
      'admin1': admin1,
      'admin2': admin2,
      'admin3': admin3,
      'notifyOfInfoChanges': notifyOfInfoChanges,
      'emailSubsDefaults': emailSubsDefaults,
      'welcomeEmailEnabled': welcomeEmailEnabled,
      'welcomeEmailTitle': welcomeEmailTitle,
      'welcomeEmailContent': welcomeEmailContent,
      'groupPrivacyOptions': groupPrivacyOptions,
      'members': members,
    }.withoutNulls,
  );

  return firestoreData;
}

class GroupsRecordDocumentEquality implements Equality<GroupsRecord> {
  const GroupsRecordDocumentEquality();

  @override
  bool equals(GroupsRecord? e1, GroupsRecord? e2) {
    return e1?.groupName == e2?.groupName &&
        e1?.headerPhoto == e2?.headerPhoto &&
        e1?.description == e2?.description &&
        e1?.admin1 == e2?.admin1 &&
        e1?.admin2 == e2?.admin2 &&
        e1?.admin3 == e2?.admin3 &&
        e1?.notifyOfInfoChanges == e2?.notifyOfInfoChanges &&
        e1?.emailSubsDefaults == e2?.emailSubsDefaults &&
        e1?.welcomeEmailEnabled == e2?.welcomeEmailEnabled &&
        e1?.welcomeEmailTitle == e2?.welcomeEmailTitle &&
        e1?.welcomeEmailContent == e2?.welcomeEmailContent &&
        e1?.groupPrivacyOptions == e2?.groupPrivacyOptions &&
        e1?.members == e2?.members;
  }

  @override
  int hash(GroupsRecord? e) => const ListEquality().hash([
        e?.groupName,
        e?.headerPhoto,
        e?.description,
        e?.admin1,
        e?.admin2,
        e?.admin3,
        e?.notifyOfInfoChanges,
        e?.emailSubsDefaults,
        e?.welcomeEmailEnabled,
        e?.welcomeEmailTitle,
        e?.welcomeEmailContent,
        e?.groupPrivacyOptions,
        e?.members
      ]);

  @override
  bool isValidKey(Object? o) => o is GroupsRecord;
}
