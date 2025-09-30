// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AddProductserialStruct extends BaseStruct {
  AddProductserialStruct({
    String? serial,
    String? condition,
    bool? isDuplicate,
  })  : _serial = serial,
        _condition = condition,
        _isDuplicate = isDuplicate;

  // "serial" field.
  String? _serial;
  String get serial => _serial ?? '';
  set serial(String? val) => _serial = val;

  bool hasSerial() => _serial != null;

  // "condition" field.
  String? _condition;
  String get condition => _condition ?? '';
  set condition(String? val) => _condition = val;

  bool hasCondition() => _condition != null;

  // "isDuplicate" field.
  bool? _isDuplicate;
  bool get isDuplicate => _isDuplicate ?? false;
  set isDuplicate(bool? val) => _isDuplicate = val;

  bool hasIsDuplicate() => _isDuplicate != null;

  static AddProductserialStruct fromMap(Map<String, dynamic> data) =>
      AddProductserialStruct(
        serial: data['serial'] as String?,
        condition: data['condition'] as String?,
        isDuplicate: data['isDuplicate'] as bool?,
      );

  static AddProductserialStruct? maybeFromMap(dynamic data) => data is Map
      ? AddProductserialStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'serial': _serial,
        'condition': _condition,
        'isDuplicate': _isDuplicate,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'serial': serializeParam(
          _serial,
          ParamType.String,
        ),
        'condition': serializeParam(
          _condition,
          ParamType.String,
        ),
        'isDuplicate': serializeParam(
          _isDuplicate,
          ParamType.bool,
        ),
      }.withoutNulls;

  static AddProductserialStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      AddProductserialStruct(
        serial: deserializeParam(
          data['serial'],
          ParamType.String,
          false,
        ),
        condition: deserializeParam(
          data['condition'],
          ParamType.String,
          false,
        ),
        isDuplicate: deserializeParam(
          data['isDuplicate'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'AddProductserialStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AddProductserialStruct &&
        serial == other.serial &&
        condition == other.condition &&
        isDuplicate == other.isDuplicate;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([serial, condition, isDuplicate]);
}

AddProductserialStruct createAddProductserialStruct({
  String? serial,
  String? condition,
  bool? isDuplicate,
}) =>
    AddProductserialStruct(
      serial: serial,
      condition: condition,
      isDuplicate: isDuplicate,
    );
