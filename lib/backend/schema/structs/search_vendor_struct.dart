// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SearchVendorStruct extends BaseStruct {
  SearchVendorStruct({
    String? name,
    String? phone,
    String? email,
    String? address,
  })  : _name = name,
        _phone = phone,
        _email = email,
        _address = address;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  set phone(String? val) => _phone = val;

  bool hasPhone() => _phone != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  set address(String? val) => _address = val;

  bool hasAddress() => _address != null;

  static SearchVendorStruct fromMap(Map<String, dynamic> data) =>
      SearchVendorStruct(
        name: data['name'] as String?,
        phone: data['phone'] as String?,
        email: data['email'] as String?,
        address: data['address'] as String?,
      );

  static SearchVendorStruct? maybeFromMap(dynamic data) => data is Map
      ? SearchVendorStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'phone': _phone,
        'email': _email,
        'address': _address,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'phone': serializeParam(
          _phone,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'address': serializeParam(
          _address,
          ParamType.String,
        ),
      }.withoutNulls;

  static SearchVendorStruct fromSerializableMap(Map<String, dynamic> data) =>
      SearchVendorStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        phone: deserializeParam(
          data['phone'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        address: deserializeParam(
          data['address'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'SearchVendorStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SearchVendorStruct &&
        name == other.name &&
        phone == other.phone &&
        email == other.email &&
        address == other.address;
  }

  @override
  int get hashCode => const ListEquality().hash([name, phone, email, address]);
}

SearchVendorStruct createSearchVendorStruct({
  String? name,
  String? phone,
  String? email,
  String? address,
}) =>
    SearchVendorStruct(
      name: name,
      phone: phone,
      email: email,
      address: address,
    );
