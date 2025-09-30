// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VendorPaymentStruct extends BaseStruct {
  VendorPaymentStruct({
    int? itemId,
    double? itemLineCost,
    int? itemQuantity,
    double? itemCostPerItem,
    String? itemName,
    int? purchaseId,
  })  : _itemId = itemId,
        _itemLineCost = itemLineCost,
        _itemQuantity = itemQuantity,
        _itemCostPerItem = itemCostPerItem,
        _itemName = itemName,
        _purchaseId = purchaseId;

  // "itemId" field.
  int? _itemId;
  int get itemId => _itemId ?? 0;
  set itemId(int? val) => _itemId = val;

  void incrementItemId(int amount) => itemId = itemId + amount;

  bool hasItemId() => _itemId != null;

  // "itemLineCost" field.
  double? _itemLineCost;
  double get itemLineCost => _itemLineCost ?? 0.0;
  set itemLineCost(double? val) => _itemLineCost = val;

  void incrementItemLineCost(double amount) =>
      itemLineCost = itemLineCost + amount;

  bool hasItemLineCost() => _itemLineCost != null;

  // "itemQuantity" field.
  int? _itemQuantity;
  int get itemQuantity => _itemQuantity ?? 0;
  set itemQuantity(int? val) => _itemQuantity = val;

  void incrementItemQuantity(int amount) =>
      itemQuantity = itemQuantity + amount;

  bool hasItemQuantity() => _itemQuantity != null;

  // "itemCostPerItem" field.
  double? _itemCostPerItem;
  double get itemCostPerItem => _itemCostPerItem ?? 0.0;
  set itemCostPerItem(double? val) => _itemCostPerItem = val;

  void incrementItemCostPerItem(double amount) =>
      itemCostPerItem = itemCostPerItem + amount;

  bool hasItemCostPerItem() => _itemCostPerItem != null;

  // "itemName" field.
  String? _itemName;
  String get itemName => _itemName ?? '';
  set itemName(String? val) => _itemName = val;

  bool hasItemName() => _itemName != null;

  // "purchaseId" field.
  int? _purchaseId;
  int get purchaseId => _purchaseId ?? 0;
  set purchaseId(int? val) => _purchaseId = val;

  void incrementPurchaseId(int amount) => purchaseId = purchaseId + amount;

  bool hasPurchaseId() => _purchaseId != null;

  static VendorPaymentStruct fromMap(Map<String, dynamic> data) =>
      VendorPaymentStruct(
        itemId: castToType<int>(data['itemId']),
        itemLineCost: castToType<double>(data['itemLineCost']),
        itemQuantity: castToType<int>(data['itemQuantity']),
        itemCostPerItem: castToType<double>(data['itemCostPerItem']),
        itemName: data['itemName'] as String?,
        purchaseId: castToType<int>(data['purchaseId']),
      );

  static VendorPaymentStruct? maybeFromMap(dynamic data) => data is Map
      ? VendorPaymentStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'itemId': _itemId,
        'itemLineCost': _itemLineCost,
        'itemQuantity': _itemQuantity,
        'itemCostPerItem': _itemCostPerItem,
        'itemName': _itemName,
        'purchaseId': _purchaseId,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'itemId': serializeParam(
          _itemId,
          ParamType.int,
        ),
        'itemLineCost': serializeParam(
          _itemLineCost,
          ParamType.double,
        ),
        'itemQuantity': serializeParam(
          _itemQuantity,
          ParamType.int,
        ),
        'itemCostPerItem': serializeParam(
          _itemCostPerItem,
          ParamType.double,
        ),
        'itemName': serializeParam(
          _itemName,
          ParamType.String,
        ),
        'purchaseId': serializeParam(
          _purchaseId,
          ParamType.int,
        ),
      }.withoutNulls;

  static VendorPaymentStruct fromSerializableMap(Map<String, dynamic> data) =>
      VendorPaymentStruct(
        itemId: deserializeParam(
          data['itemId'],
          ParamType.int,
          false,
        ),
        itemLineCost: deserializeParam(
          data['itemLineCost'],
          ParamType.double,
          false,
        ),
        itemQuantity: deserializeParam(
          data['itemQuantity'],
          ParamType.int,
          false,
        ),
        itemCostPerItem: deserializeParam(
          data['itemCostPerItem'],
          ParamType.double,
          false,
        ),
        itemName: deserializeParam(
          data['itemName'],
          ParamType.String,
          false,
        ),
        purchaseId: deserializeParam(
          data['purchaseId'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'VendorPaymentStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is VendorPaymentStruct &&
        itemId == other.itemId &&
        itemLineCost == other.itemLineCost &&
        itemQuantity == other.itemQuantity &&
        itemCostPerItem == other.itemCostPerItem &&
        itemName == other.itemName &&
        purchaseId == other.purchaseId;
  }

  @override
  int get hashCode => const ListEquality().hash([
        itemId,
        itemLineCost,
        itemQuantity,
        itemCostPerItem,
        itemName,
        purchaseId
      ]);
}

VendorPaymentStruct createVendorPaymentStruct({
  int? itemId,
  double? itemLineCost,
  int? itemQuantity,
  double? itemCostPerItem,
  String? itemName,
  int? purchaseId,
}) =>
    VendorPaymentStruct(
      itemId: itemId,
      itemLineCost: itemLineCost,
      itemQuantity: itemQuantity,
      itemCostPerItem: itemCostPerItem,
      itemName: itemName,
      purchaseId: purchaseId,
    );
