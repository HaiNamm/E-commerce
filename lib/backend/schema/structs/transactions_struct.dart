// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class TransactionsStruct extends FFFirebaseStruct {
  TransactionsStruct({
    String? name,
    DateTime? dateCreated,
    String? description,
    String? vendor,
    double? amount,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _name = name,
        _dateCreated = dateCreated,
        _description = description,
        _vendor = vendor,
        _amount = amount,
        super(firestoreUtilData);

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "dateCreated" field.
  DateTime? _dateCreated;
  DateTime? get dateCreated => _dateCreated;
  set dateCreated(DateTime? val) => _dateCreated = val;

  bool hasDateCreated() => _dateCreated != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "vendor" field.
  String? _vendor;
  String get vendor => _vendor ?? '';
  set vendor(String? val) => _vendor = val;

  bool hasVendor() => _vendor != null;

  // "amount" field.
  double? _amount;
  double get amount => _amount ?? 0.0;
  set amount(double? val) => _amount = val;

  void incrementAmount(double amount) => amount = amount + amount;

  bool hasAmount() => _amount != null;

  static TransactionsStruct fromMap(Map<String, dynamic> data) =>
      TransactionsStruct(
        name: data['name'] as String?,
        dateCreated: data['dateCreated'] as DateTime?,
        description: data['description'] as String?,
        vendor: data['vendor'] as String?,
        amount: castToType<double>(data['amount']),
      );

  static TransactionsStruct? maybeFromMap(dynamic data) => data is Map
      ? TransactionsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'dateCreated': _dateCreated,
        'description': _description,
        'vendor': _vendor,
        'amount': _amount,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'dateCreated': serializeParam(
          _dateCreated,
          ParamType.DateTime,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'vendor': serializeParam(
          _vendor,
          ParamType.String,
        ),
        'amount': serializeParam(
          _amount,
          ParamType.double,
        ),
      }.withoutNulls;

  static TransactionsStruct fromSerializableMap(Map<String, dynamic> data) =>
      TransactionsStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        dateCreated: deserializeParam(
          data['dateCreated'],
          ParamType.DateTime,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        vendor: deserializeParam(
          data['vendor'],
          ParamType.String,
          false,
        ),
        amount: deserializeParam(
          data['amount'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'TransactionsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TransactionsStruct &&
        name == other.name &&
        dateCreated == other.dateCreated &&
        description == other.description &&
        vendor == other.vendor &&
        amount == other.amount;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([name, dateCreated, description, vendor, amount]);
}

TransactionsStruct createTransactionsStruct({
  String? name,
  DateTime? dateCreated,
  String? description,
  String? vendor,
  double? amount,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    TransactionsStruct(
      name: name,
      dateCreated: dateCreated,
      description: description,
      vendor: vendor,
      amount: amount,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

TransactionsStruct? updateTransactionsStruct(
  TransactionsStruct? transactions, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    transactions
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addTransactionsStructData(
  Map<String, dynamic> firestoreData,
  TransactionsStruct? transactions,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (transactions == null) {
    return;
  }
  if (transactions.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && transactions.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final transactionsData =
      getTransactionsFirestoreData(transactions, forFieldValue);
  final nestedData =
      transactionsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = transactions.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getTransactionsFirestoreData(
  TransactionsStruct? transactions, [
  bool forFieldValue = false,
]) {
  if (transactions == null) {
    return {};
  }
  final firestoreData = mapToFirestore(transactions.toMap());

  // Add any Firestore field values
  transactions.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getTransactionsListFirestoreData(
  List<TransactionsStruct>? transactionss,
) =>
    transactionss?.map((e) => getTransactionsFirestoreData(e, true)).toList() ??
    [];
