// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SearchCustomerStruct extends BaseStruct {
  SearchCustomerStruct({
    String? name,
    String? businessName,
    String? email,
    String? phone,
    String? customerGst,
  })  : _name = name,
        _businessName = businessName,
        _email = email,
        _phone = phone,
        _customerGst = customerGst;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "businessName" field.
  String? _businessName;
  String get businessName => _businessName ?? '';
  set businessName(String? val) => _businessName = val;

  bool hasBusinessName() => _businessName != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  set phone(String? val) => _phone = val;

  bool hasPhone() => _phone != null;

  // "customerGst" field.
  String? _customerGst;
  String get customerGst => _customerGst ?? '';
  set customerGst(String? val) => _customerGst = val;

  bool hasCustomerGst() => _customerGst != null;

  static SearchCustomerStruct fromMap(Map<String, dynamic> data) =>
      SearchCustomerStruct(
        name: data['name'] as String?,
        businessName: data['businessName'] as String?,
        email: data['email'] as String?,
        phone: data['phone'] as String?,
        customerGst: data['customerGst'] as String?,
      );

  static SearchCustomerStruct? maybeFromMap(dynamic data) => data is Map
      ? SearchCustomerStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'businessName': _businessName,
        'email': _email,
        'phone': _phone,
        'customerGst': _customerGst,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'businessName': serializeParam(
          _businessName,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'phone': serializeParam(
          _phone,
          ParamType.String,
        ),
        'customerGst': serializeParam(
          _customerGst,
          ParamType.String,
        ),
      }.withoutNulls;

  static SearchCustomerStruct fromSerializableMap(Map<String, dynamic> data) =>
      SearchCustomerStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        businessName: deserializeParam(
          data['businessName'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        phone: deserializeParam(
          data['phone'],
          ParamType.String,
          false,
        ),
        customerGst: deserializeParam(
          data['customerGst'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'SearchCustomerStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SearchCustomerStruct &&
        name == other.name &&
        businessName == other.businessName &&
        email == other.email &&
        phone == other.phone &&
        customerGst == other.customerGst;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([name, businessName, email, phone, customerGst]);
}

SearchCustomerStruct createSearchCustomerStruct({
  String? name,
  String? businessName,
  String? email,
  String? phone,
  String? customerGst,
}) =>
    SearchCustomerStruct(
      name: name,
      businessName: businessName,
      email: email,
      phone: phone,
      customerGst: customerGst,
    );
