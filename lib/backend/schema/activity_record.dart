import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ActivityRecord extends FirestoreRecord {
  ActivityRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "content" field.
  String? _content;
  String get content => _content ?? '';
  bool hasContent() => _content != null;

  // "sentAt" field.
  DateTime? _sentAt;
  DateTime? get sentAt => _sentAt;
  bool hasSentAt() => _sentAt != null;

  // "readAt" field.
  DateTime? _readAt;
  DateTime? get readAt => _readAt;
  bool hasReadAt() => _readAt != null;

  // "userList" field.
  List<DocumentReference>? _userList;
  List<DocumentReference> get userList => _userList ?? const [];
  bool hasUserList() => _userList != null;

  // "productRef" field.
  DocumentReference? _productRef;
  DocumentReference? get productRef => _productRef;
  bool hasProductRef() => _productRef != null;

  // "unreadByUser" field.
  List<DocumentReference>? _unreadByUser;
  List<DocumentReference> get unreadByUser => _unreadByUser ?? const [];
  bool hasUnreadByUser() => _unreadByUser != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _content = snapshotData['content'] as String?;
    _sentAt = snapshotData['sentAt'] as DateTime?;
    _readAt = snapshotData['readAt'] as DateTime?;
    _userList = getDataList(snapshotData['userList']);
    _productRef = snapshotData['productRef'] as DocumentReference?;
    _unreadByUser = getDataList(snapshotData['unreadByUser']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('activity');

  static Stream<ActivityRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ActivityRecord.fromSnapshot(s));

  static Future<ActivityRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ActivityRecord.fromSnapshot(s));

  static ActivityRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ActivityRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ActivityRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ActivityRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ActivityRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ActivityRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createActivityRecordData({
  String? title,
  String? content,
  DateTime? sentAt,
  DateTime? readAt,
  DocumentReference? productRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'content': content,
      'sentAt': sentAt,
      'readAt': readAt,
      'productRef': productRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class ActivityRecordDocumentEquality implements Equality<ActivityRecord> {
  const ActivityRecordDocumentEquality();

  @override
  bool equals(ActivityRecord? e1, ActivityRecord? e2) {
    const listEquality = ListEquality();
    return e1?.title == e2?.title &&
        e1?.content == e2?.content &&
        e1?.sentAt == e2?.sentAt &&
        e1?.readAt == e2?.readAt &&
        listEquality.equals(e1?.userList, e2?.userList) &&
        e1?.productRef == e2?.productRef &&
        listEquality.equals(e1?.unreadByUser, e2?.unreadByUser);
  }

  @override
  int hash(ActivityRecord? e) => const ListEquality().hash([
        e?.title,
        e?.content,
        e?.sentAt,
        e?.readAt,
        e?.userList,
        e?.productRef,
        e?.unreadByUser
      ]);

  @override
  bool isValidKey(Object? o) => o is ActivityRecord;
}
