// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class ShippingOptionsStruct extends FFFirebaseStruct {
  ShippingOptionsStruct({
    String? shippingName,
    String? description,
    double? price,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _shippingName = shippingName,
        _description = description,
        _price = price,
        super(firestoreUtilData);

  // "shippingName" field.
  String? _shippingName;
  String get shippingName => _shippingName ?? '';
  set shippingName(String? val) => _shippingName = val;

  bool hasShippingName() => _shippingName != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  set price(double? val) => _price = val;

  void incrementPrice(double amount) => price = price + amount;

  bool hasPrice() => _price != null;

  static ShippingOptionsStruct fromMap(Map<String, dynamic> data) =>
      ShippingOptionsStruct(
        shippingName: data['shippingName'] as String?,
        description: data['description'] as String?,
        price: castToType<double>(data['price']),
      );

  static ShippingOptionsStruct? maybeFromMap(dynamic data) => data is Map
      ? ShippingOptionsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'shippingName': _shippingName,
        'description': _description,
        'price': _price,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'shippingName': serializeParam(
          _shippingName,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'price': serializeParam(
          _price,
          ParamType.double,
        ),
      }.withoutNulls;

  static ShippingOptionsStruct fromSerializableMap(Map<String, dynamic> data) =>
      ShippingOptionsStruct(
        shippingName: deserializeParam(
          data['shippingName'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        price: deserializeParam(
          data['price'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'ShippingOptionsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ShippingOptionsStruct &&
        shippingName == other.shippingName &&
        description == other.description &&
        price == other.price;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([shippingName, description, price]);
}

ShippingOptionsStruct createShippingOptionsStruct({
  String? shippingName,
  String? description,
  double? price,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ShippingOptionsStruct(
      shippingName: shippingName,
      description: description,
      price: price,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ShippingOptionsStruct? updateShippingOptionsStruct(
  ShippingOptionsStruct? shippingOptions, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    shippingOptions
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addShippingOptionsStructData(
  Map<String, dynamic> firestoreData,
  ShippingOptionsStruct? shippingOptions,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (shippingOptions == null) {
    return;
  }
  if (shippingOptions.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && shippingOptions.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final shippingOptionsData =
      getShippingOptionsFirestoreData(shippingOptions, forFieldValue);
  final nestedData =
      shippingOptionsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = shippingOptions.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getShippingOptionsFirestoreData(
  ShippingOptionsStruct? shippingOptions, [
  bool forFieldValue = false,
]) {
  if (shippingOptions == null) {
    return {};
  }
  final firestoreData = mapToFirestore(shippingOptions.toMap());

  // Add any Firestore field values
  shippingOptions.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getShippingOptionsListFirestoreData(
  List<ShippingOptionsStruct>? shippingOptionss,
) =>
    shippingOptionss
        ?.map((e) => getShippingOptionsFirestoreData(e, true))
        .toList() ??
    [];
