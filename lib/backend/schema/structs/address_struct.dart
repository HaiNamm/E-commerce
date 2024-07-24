// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class AddressStruct extends FFFirebaseStruct {
  AddressStruct({
    bool? defaultAddress,
    String? addressName,
    String? address,
    String? address2,
    String? city,
    String? state,
    int? postalCode,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _defaultAddress = defaultAddress,
        _addressName = addressName,
        _address = address,
        _address2 = address2,
        _city = city,
        _state = state,
        _postalCode = postalCode,
        super(firestoreUtilData);

  // "defaultAddress" field.
  bool? _defaultAddress;
  bool get defaultAddress => _defaultAddress ?? false;
  set defaultAddress(bool? val) => _defaultAddress = val;

  bool hasDefaultAddress() => _defaultAddress != null;

  // "addressName" field.
  String? _addressName;
  String get addressName => _addressName ?? '';
  set addressName(String? val) => _addressName = val;

  bool hasAddressName() => _addressName != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  set address(String? val) => _address = val;

  bool hasAddress() => _address != null;

  // "address_2" field.
  String? _address2;
  String get address2 => _address2 ?? '';
  set address2(String? val) => _address2 = val;

  bool hasAddress2() => _address2 != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  set city(String? val) => _city = val;

  bool hasCity() => _city != null;

  // "state" field.
  String? _state;
  String get state => _state ?? '';
  set state(String? val) => _state = val;

  bool hasState() => _state != null;

  // "postalCode" field.
  int? _postalCode;
  int get postalCode => _postalCode ?? 0;
  set postalCode(int? val) => _postalCode = val;

  void incrementPostalCode(int amount) => postalCode = postalCode + amount;

  bool hasPostalCode() => _postalCode != null;

  static AddressStruct fromMap(Map<String, dynamic> data) => AddressStruct(
        defaultAddress: data['defaultAddress'] as bool?,
        addressName: data['addressName'] as String?,
        address: data['address'] as String?,
        address2: data['address_2'] as String?,
        city: data['city'] as String?,
        state: data['state'] as String?,
        postalCode: castToType<int>(data['postalCode']),
      );

  static AddressStruct? maybeFromMap(dynamic data) =>
      data is Map ? AddressStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'defaultAddress': _defaultAddress,
        'addressName': _addressName,
        'address': _address,
        'address_2': _address2,
        'city': _city,
        'state': _state,
        'postalCode': _postalCode,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'defaultAddress': serializeParam(
          _defaultAddress,
          ParamType.bool,
        ),
        'addressName': serializeParam(
          _addressName,
          ParamType.String,
        ),
        'address': serializeParam(
          _address,
          ParamType.String,
        ),
        'address_2': serializeParam(
          _address2,
          ParamType.String,
        ),
        'city': serializeParam(
          _city,
          ParamType.String,
        ),
        'state': serializeParam(
          _state,
          ParamType.String,
        ),
        'postalCode': serializeParam(
          _postalCode,
          ParamType.int,
        ),
      }.withoutNulls;

  static AddressStruct fromSerializableMap(Map<String, dynamic> data) =>
      AddressStruct(
        defaultAddress: deserializeParam(
          data['defaultAddress'],
          ParamType.bool,
          false,
        ),
        addressName: deserializeParam(
          data['addressName'],
          ParamType.String,
          false,
        ),
        address: deserializeParam(
          data['address'],
          ParamType.String,
          false,
        ),
        address2: deserializeParam(
          data['address_2'],
          ParamType.String,
          false,
        ),
        city: deserializeParam(
          data['city'],
          ParamType.String,
          false,
        ),
        state: deserializeParam(
          data['state'],
          ParamType.String,
          false,
        ),
        postalCode: deserializeParam(
          data['postalCode'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'AddressStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AddressStruct &&
        defaultAddress == other.defaultAddress &&
        addressName == other.addressName &&
        address == other.address &&
        address2 == other.address2 &&
        city == other.city &&
        state == other.state &&
        postalCode == other.postalCode;
  }

  @override
  int get hashCode => const ListEquality().hash([
        defaultAddress,
        addressName,
        address,
        address2,
        city,
        state,
        postalCode
      ]);
}

AddressStruct createAddressStruct({
  bool? defaultAddress,
  String? addressName,
  String? address,
  String? address2,
  String? city,
  String? state,
  int? postalCode,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AddressStruct(
      defaultAddress: defaultAddress,
      addressName: addressName,
      address: address,
      address2: address2,
      city: city,
      state: state,
      postalCode: postalCode,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AddressStruct? updateAddressStruct(
  AddressStruct? addressStruct, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    addressStruct
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAddressStructData(
  Map<String, dynamic> firestoreData,
  AddressStruct? addressStruct,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (addressStruct == null) {
    return;
  }
  if (addressStruct.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && addressStruct.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final addressStructData =
      getAddressFirestoreData(addressStruct, forFieldValue);
  final nestedData =
      addressStructData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = addressStruct.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAddressFirestoreData(
  AddressStruct? addressStruct, [
  bool forFieldValue = false,
]) {
  if (addressStruct == null) {
    return {};
  }
  final firestoreData = mapToFirestore(addressStruct.toMap());

  // Add any Firestore field values
  addressStruct.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAddressListFirestoreData(
  List<AddressStruct>? addressStructs,
) =>
    addressStructs?.map((e) => getAddressFirestoreData(e, true)).toList() ?? [];
