import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MembersRecord extends FirestoreRecord {
  MembersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "JoinDate" field.
  DateTime? _joinDate;
  DateTime? get joinDate => _joinDate;
  bool hasJoinDate() => _joinDate != null;

  // "GroupName" field.
  String? _groupName;
  String get groupName => _groupName ?? '';
  bool hasGroupName() => _groupName != null;

  void _initializeFields() {
    _joinDate = snapshotData['JoinDate'] as DateTime?;
    _groupName = snapshotData['GroupName'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('members');

  static Stream<MembersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MembersRecord.fromSnapshot(s));

  static Future<MembersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MembersRecord.fromSnapshot(s));

  static MembersRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MembersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MembersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MembersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MembersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MembersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMembersRecordData({
  DateTime? joinDate,
  String? groupName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'JoinDate': joinDate,
      'GroupName': groupName,
    }.withoutNulls,
  );

  return firestoreData;
}

class MembersRecordDocumentEquality implements Equality<MembersRecord> {
  const MembersRecordDocumentEquality();

  @override
  bool equals(MembersRecord? e1, MembersRecord? e2) {
    return e1?.joinDate == e2?.joinDate && e1?.groupName == e2?.groupName;
  }

  @override
  int hash(MembersRecord? e) =>
      const ListEquality().hash([e?.joinDate, e?.groupName]);

  @override
  bool isValidKey(Object? o) => o is MembersRecord;
}
