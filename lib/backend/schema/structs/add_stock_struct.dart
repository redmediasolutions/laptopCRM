// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AddStockStruct extends BaseStruct {
  AddStockStruct({
    int? productReference,
    int? businessRef,
    int? purchaseRef,
    String? productSerial,
    int? vendorReference,
    bool? isSold,
    String? stockCost,
    String? condition,
  })  : _productReference = productReference,
        _businessRef = businessRef,
        _purchaseRef = purchaseRef,
        _productSerial = productSerial,
        _vendorReference = vendorReference,
        _isSold = isSold,
        _stockCost = stockCost,
        _condition = condition;

  // "productReference" field.
  int? _productReference;
  int get productReference => _productReference ?? 0;
  set productReference(int? val) => _productReference = val;

  void incrementProductReference(int amount) =>
      productReference = productReference + amount;

  bool hasProductReference() => _productReference != null;

  // "businessRef" field.
  int? _businessRef;
  int get businessRef => _businessRef ?? 0;
  set businessRef(int? val) => _businessRef = val;

  void incrementBusinessRef(int amount) => businessRef = businessRef + amount;

  bool hasBusinessRef() => _businessRef != null;

  // "purchaseRef" field.
  int? _purchaseRef;
  int get purchaseRef => _purchaseRef ?? 0;
  set purchaseRef(int? val) => _purchaseRef = val;

  void incrementPurchaseRef(int amount) => purchaseRef = purchaseRef + amount;

  bool hasPurchaseRef() => _purchaseRef != null;

  // "productSerial" field.
  String? _productSerial;
  String get productSerial => _productSerial ?? '';
  set productSerial(String? val) => _productSerial = val;

  bool hasProductSerial() => _productSerial != null;

  // "vendorReference" field.
  int? _vendorReference;
  int get vendorReference => _vendorReference ?? 0;
  set vendorReference(int? val) => _vendorReference = val;

  void incrementVendorReference(int amount) =>
      vendorReference = vendorReference + amount;

  bool hasVendorReference() => _vendorReference != null;

  // "isSold" field.
  bool? _isSold;
  bool get isSold => _isSold ?? false;
  set isSold(bool? val) => _isSold = val;

  bool hasIsSold() => _isSold != null;

  // "stockCost" field.
  String? _stockCost;
  String get stockCost => _stockCost ?? '';
  set stockCost(String? val) => _stockCost = val;

  bool hasStockCost() => _stockCost != null;

  // "condition" field.
  String? _condition;
  String get condition => _condition ?? '';
  set condition(String? val) => _condition = val;

  bool hasCondition() => _condition != null;

  static AddStockStruct fromMap(Map<String, dynamic> data) => AddStockStruct(
        productReference: castToType<int>(data['productReference']),
        businessRef: castToType<int>(data['businessRef']),
        purchaseRef: castToType<int>(data['purchaseRef']),
        productSerial: data['productSerial'] as String?,
        vendorReference: castToType<int>(data['vendorReference']),
        isSold: data['isSold'] as bool?,
        stockCost: data['stockCost'] as String?,
        condition: data['condition'] as String?,
      );

  static AddStockStruct? maybeFromMap(dynamic data) =>
      data is Map ? AddStockStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'productReference': _productReference,
        'businessRef': _businessRef,
        'purchaseRef': _purchaseRef,
        'productSerial': _productSerial,
        'vendorReference': _vendorReference,
        'isSold': _isSold,
        'stockCost': _stockCost,
        'condition': _condition,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'productReference': serializeParam(
          _productReference,
          ParamType.int,
        ),
        'businessRef': serializeParam(
          _businessRef,
          ParamType.int,
        ),
        'purchaseRef': serializeParam(
          _purchaseRef,
          ParamType.int,
        ),
        'productSerial': serializeParam(
          _productSerial,
          ParamType.String,
        ),
        'vendorReference': serializeParam(
          _vendorReference,
          ParamType.int,
        ),
        'isSold': serializeParam(
          _isSold,
          ParamType.bool,
        ),
        'stockCost': serializeParam(
          _stockCost,
          ParamType.String,
        ),
        'condition': serializeParam(
          _condition,
          ParamType.String,
        ),
      }.withoutNulls;

  static AddStockStruct fromSerializableMap(Map<String, dynamic> data) =>
      AddStockStruct(
        productReference: deserializeParam(
          data['productReference'],
          ParamType.int,
          false,
        ),
        businessRef: deserializeParam(
          data['businessRef'],
          ParamType.int,
          false,
        ),
        purchaseRef: deserializeParam(
          data['purchaseRef'],
          ParamType.int,
          false,
        ),
        productSerial: deserializeParam(
          data['productSerial'],
          ParamType.String,
          false,
        ),
        vendorReference: deserializeParam(
          data['vendorReference'],
          ParamType.int,
          false,
        ),
        isSold: deserializeParam(
          data['isSold'],
          ParamType.bool,
          false,
        ),
        stockCost: deserializeParam(
          data['stockCost'],
          ParamType.String,
          false,
        ),
        condition: deserializeParam(
          data['condition'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AddStockStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AddStockStruct &&
        productReference == other.productReference &&
        businessRef == other.businessRef &&
        purchaseRef == other.purchaseRef &&
        productSerial == other.productSerial &&
        vendorReference == other.vendorReference &&
        isSold == other.isSold &&
        stockCost == other.stockCost &&
        condition == other.condition;
  }

  @override
  int get hashCode => const ListEquality().hash([
        productReference,
        businessRef,
        purchaseRef,
        productSerial,
        vendorReference,
        isSold,
        stockCost,
        condition
      ]);
}

AddStockStruct createAddStockStruct({
  int? productReference,
  int? businessRef,
  int? purchaseRef,
  String? productSerial,
  int? vendorReference,
  bool? isSold,
  String? stockCost,
  String? condition,
}) =>
    AddStockStruct(
      productReference: productReference,
      businessRef: businessRef,
      purchaseRef: purchaseRef,
      productSerial: productSerial,
      vendorReference: vendorReference,
      isSold: isSold,
      stockCost: stockCost,
      condition: condition,
    );
