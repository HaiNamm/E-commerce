import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SellersRecord extends FirestoreRecord {
  SellersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "userRef" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _userRef = snapshotData['userRef'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('sellers');

  static Stream<SellersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SellersRecord.fromSnapshot(s));

  static Future<SellersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SellersRecord.fromSnapshot(s));

  static SellersRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SellersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SellersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SellersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SellersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SellersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSellersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? phoneNumber,
  DateTime? createdAt,
  DocumentReference? userRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'phone_number': phoneNumber,
      'created_at': createdAt,
      'userRef': userRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class SellersRecordDocumentEquality implements Equality<SellersRecord> {
  const SellersRecordDocumentEquality();

  @override
  bool equals(SellersRecord? e1, SellersRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.createdAt == e2?.createdAt &&
        e1?.userRef == e2?.userRef;
  }

  @override
  int hash(SellersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.phoneNumber,
        e?.createdAt,
        e?.userRef
      ]);

  @override
  bool isValidKey(Object? o) => o is SellersRecord;
}
