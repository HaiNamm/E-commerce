import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrdersRecord extends FirestoreRecord {
  OrdersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "amount" field.
  double? _amount;
  double get amount => _amount ?? 0.0;
  bool hasAmount() => _amount != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "tax" field.
  double? _tax;
  double get tax => _tax ?? 0.0;
  bool hasTax() => _tax != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "vendor_name" field.
  String? _vendorName;
  String get vendorName => _vendorName ?? '';
  bool hasVendorName() => _vendorName != null;

  // "itemsOrdered" field.
  List<DocumentReference>? _itemsOrdered;
  List<DocumentReference> get itemsOrdered => _itemsOrdered ?? const [];
  bool hasItemsOrdered() => _itemsOrdered != null;

  // "fee" field.
  double? _fee;
  double get fee => _fee ?? 0.0;
  bool hasFee() => _fee != null;

  // "userPurchased" field.
  DocumentReference? _userPurchased;
  DocumentReference? get userPurchased => _userPurchased;
  bool hasUserPurchased() => _userPurchased != null;

  // "address" field.
  AddressStruct? _address;
  AddressStruct get address => _address ?? AddressStruct();
  bool hasAddress() => _address != null;

  // "shippingSelected" field.
  ShippingOptionsStruct? _shippingSelected;
  ShippingOptionsStruct get shippingSelected =>
      _shippingSelected ?? ShippingOptionsStruct();
  bool hasShippingSelected() => _shippingSelected != null;

  // "lastEdited" field.
  DateTime? _lastEdited;
  DateTime? get lastEdited => _lastEdited;
  bool hasLastEdited() => _lastEdited != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _amount = castToType<double>(snapshotData['amount']);
    _status = snapshotData['status'] as String?;
    _tax = castToType<double>(snapshotData['tax']);
    _createdAt = snapshotData['created_at'] as DateTime?;
    _vendorName = snapshotData['vendor_name'] as String?;
    _itemsOrdered = getDataList(snapshotData['itemsOrdered']);
    _fee = castToType<double>(snapshotData['fee']);
    _userPurchased = snapshotData['userPurchased'] as DocumentReference?;
    _address = AddressStruct.maybeFromMap(snapshotData['address']);
    _shippingSelected =
        ShippingOptionsStruct.maybeFromMap(snapshotData['shippingSelected']);
    _lastEdited = snapshotData['lastEdited'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('orders');

  static Stream<OrdersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OrdersRecord.fromSnapshot(s));

  static Future<OrdersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OrdersRecord.fromSnapshot(s));

  static OrdersRecord fromSnapshot(DocumentSnapshot snapshot) => OrdersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OrdersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OrdersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OrdersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OrdersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOrdersRecordData({
  String? name,
  double? amount,
  String? status,
  double? tax,
  DateTime? createdAt,
  String? vendorName,
  double? fee,
  DocumentReference? userPurchased,
  AddressStruct? address,
  ShippingOptionsStruct? shippingSelected,
  DateTime? lastEdited,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'amount': amount,
      'status': status,
      'tax': tax,
      'created_at': createdAt,
      'vendor_name': vendorName,
      'fee': fee,
      'userPurchased': userPurchased,
      'address': AddressStruct().toMap(),
      'shippingSelected': ShippingOptionsStruct().toMap(),
      'lastEdited': lastEdited,
    }.withoutNulls,
  );

  // Handle nested data for "address" field.
  addAddressStructData(firestoreData, address, 'address');

  // Handle nested data for "shippingSelected" field.
  addShippingOptionsStructData(
      firestoreData, shippingSelected, 'shippingSelected');

  return firestoreData;
}

class OrdersRecordDocumentEquality implements Equality<OrdersRecord> {
  const OrdersRecordDocumentEquality();

  @override
  bool equals(OrdersRecord? e1, OrdersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.amount == e2?.amount &&
        e1?.status == e2?.status &&
        e1?.tax == e2?.tax &&
        e1?.createdAt == e2?.createdAt &&
        e1?.vendorName == e2?.vendorName &&
        listEquality.equals(e1?.itemsOrdered, e2?.itemsOrdered) &&
        e1?.fee == e2?.fee &&
        e1?.userPurchased == e2?.userPurchased &&
        e1?.address == e2?.address &&
        e1?.shippingSelected == e2?.shippingSelected &&
        e1?.lastEdited == e2?.lastEdited;
  }

  @override
  int hash(OrdersRecord? e) => const ListEquality().hash([
        e?.name,
        e?.amount,
        e?.status,
        e?.tax,
        e?.createdAt,
        e?.vendorName,
        e?.itemsOrdered,
        e?.fee,
        e?.userPurchased,
        e?.address,
        e?.shippingSelected,
        e?.lastEdited
      ]);

  @override
  bool isValidKey(Object? o) => o is OrdersRecord;
}
