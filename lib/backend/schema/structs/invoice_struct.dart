// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class InvoiceStruct extends BaseStruct {
  InvoiceStruct({
    String? invoiceitemID,
    String? invoiceItem,
    String? invoiceItemConfig,
    String? invoiceItemDescription,
    double? invoiceItemCost,
    int? invoiceItemQuantity,
    double? invoiceAmountBeforeTax,
    String? invoiceItemHSN,
    double? invoiceItemTaxRate,
    double? invoiceTaxAmount,
    double? invoiceItemAmount,
    String? invoiceItemSerialNo,
    String? invoiceItembarCodeNumber,
    int? stockRef,
  })  : _invoiceitemID = invoiceitemID,
        _invoiceItem = invoiceItem,
        _invoiceItemConfig = invoiceItemConfig,
        _invoiceItemDescription = invoiceItemDescription,
        _invoiceItemCost = invoiceItemCost,
        _invoiceItemQuantity = invoiceItemQuantity,
        _invoiceAmountBeforeTax = invoiceAmountBeforeTax,
        _invoiceItemHSN = invoiceItemHSN,
        _invoiceItemTaxRate = invoiceItemTaxRate,
        _invoiceTaxAmount = invoiceTaxAmount,
        _invoiceItemAmount = invoiceItemAmount,
        _invoiceItemSerialNo = invoiceItemSerialNo,
        _invoiceItembarCodeNumber = invoiceItembarCodeNumber,
        _stockRef = stockRef;

  // "invoiceitemID" field.
  String? _invoiceitemID;
  String get invoiceitemID => _invoiceitemID ?? '';
  set invoiceitemID(String? val) => _invoiceitemID = val;

  bool hasInvoiceitemID() => _invoiceitemID != null;

  // "invoiceItem" field.
  String? _invoiceItem;
  String get invoiceItem => _invoiceItem ?? '';
  set invoiceItem(String? val) => _invoiceItem = val;

  bool hasInvoiceItem() => _invoiceItem != null;

  // "invoiceItemConfig" field.
  String? _invoiceItemConfig;
  String get invoiceItemConfig => _invoiceItemConfig ?? '';
  set invoiceItemConfig(String? val) => _invoiceItemConfig = val;

  bool hasInvoiceItemConfig() => _invoiceItemConfig != null;

  // "invoiceItemDescription" field.
  String? _invoiceItemDescription;
  String get invoiceItemDescription => _invoiceItemDescription ?? '';
  set invoiceItemDescription(String? val) => _invoiceItemDescription = val;

  bool hasInvoiceItemDescription() => _invoiceItemDescription != null;

  // "invoiceItemCost" field.
  double? _invoiceItemCost;
  double get invoiceItemCost => _invoiceItemCost ?? 0.0;
  set invoiceItemCost(double? val) => _invoiceItemCost = val;

  void incrementInvoiceItemCost(double amount) =>
      invoiceItemCost = invoiceItemCost + amount;

  bool hasInvoiceItemCost() => _invoiceItemCost != null;

  // "invoiceItemQuantity" field.
  int? _invoiceItemQuantity;
  int get invoiceItemQuantity => _invoiceItemQuantity ?? 0;
  set invoiceItemQuantity(int? val) => _invoiceItemQuantity = val;

  void incrementInvoiceItemQuantity(int amount) =>
      invoiceItemQuantity = invoiceItemQuantity + amount;

  bool hasInvoiceItemQuantity() => _invoiceItemQuantity != null;

  // "invoiceAmountBeforeTax" field.
  double? _invoiceAmountBeforeTax;
  double get invoiceAmountBeforeTax => _invoiceAmountBeforeTax ?? 0.0;
  set invoiceAmountBeforeTax(double? val) => _invoiceAmountBeforeTax = val;

  void incrementInvoiceAmountBeforeTax(double amount) =>
      invoiceAmountBeforeTax = invoiceAmountBeforeTax + amount;

  bool hasInvoiceAmountBeforeTax() => _invoiceAmountBeforeTax != null;

  // "invoiceItemHSN" field.
  String? _invoiceItemHSN;
  String get invoiceItemHSN => _invoiceItemHSN ?? '';
  set invoiceItemHSN(String? val) => _invoiceItemHSN = val;

  bool hasInvoiceItemHSN() => _invoiceItemHSN != null;

  // "invoiceItemTaxRate" field.
  double? _invoiceItemTaxRate;
  double get invoiceItemTaxRate => _invoiceItemTaxRate ?? 0.0;
  set invoiceItemTaxRate(double? val) => _invoiceItemTaxRate = val;

  void incrementInvoiceItemTaxRate(double amount) =>
      invoiceItemTaxRate = invoiceItemTaxRate + amount;

  bool hasInvoiceItemTaxRate() => _invoiceItemTaxRate != null;

  // "invoiceTaxAmount" field.
  double? _invoiceTaxAmount;
  double get invoiceTaxAmount => _invoiceTaxAmount ?? 0.0;
  set invoiceTaxAmount(double? val) => _invoiceTaxAmount = val;

  void incrementInvoiceTaxAmount(double amount) =>
      invoiceTaxAmount = invoiceTaxAmount + amount;

  bool hasInvoiceTaxAmount() => _invoiceTaxAmount != null;

  // "invoiceItemAmount" field.
  double? _invoiceItemAmount;
  double get invoiceItemAmount => _invoiceItemAmount ?? 0.0;
  set invoiceItemAmount(double? val) => _invoiceItemAmount = val;

  void incrementInvoiceItemAmount(double amount) =>
      invoiceItemAmount = invoiceItemAmount + amount;

  bool hasInvoiceItemAmount() => _invoiceItemAmount != null;

  // "invoiceItemSerialNo" field.
  String? _invoiceItemSerialNo;
  String get invoiceItemSerialNo => _invoiceItemSerialNo ?? '';
  set invoiceItemSerialNo(String? val) => _invoiceItemSerialNo = val;

  bool hasInvoiceItemSerialNo() => _invoiceItemSerialNo != null;

  // "invoiceItembarCodeNumber" field.
  String? _invoiceItembarCodeNumber;
  String get invoiceItembarCodeNumber => _invoiceItembarCodeNumber ?? '';
  set invoiceItembarCodeNumber(String? val) => _invoiceItembarCodeNumber = val;

  bool hasInvoiceItembarCodeNumber() => _invoiceItembarCodeNumber != null;

  // "stockRef" field.
  int? _stockRef;
  int get stockRef => _stockRef ?? 0;
  set stockRef(int? val) => _stockRef = val;

  void incrementStockRef(int amount) => stockRef = stockRef + amount;

  bool hasStockRef() => _stockRef != null;

  static InvoiceStruct fromMap(Map<String, dynamic> data) => InvoiceStruct(
        invoiceitemID: data['invoiceitemID'] as String?,
        invoiceItem: data['invoiceItem'] as String?,
        invoiceItemConfig: data['invoiceItemConfig'] as String?,
        invoiceItemDescription: data['invoiceItemDescription'] as String?,
        invoiceItemCost: castToType<double>(data['invoiceItemCost']),
        invoiceItemQuantity: castToType<int>(data['invoiceItemQuantity']),
        invoiceAmountBeforeTax:
            castToType<double>(data['invoiceAmountBeforeTax']),
        invoiceItemHSN: data['invoiceItemHSN'] as String?,
        invoiceItemTaxRate: castToType<double>(data['invoiceItemTaxRate']),
        invoiceTaxAmount: castToType<double>(data['invoiceTaxAmount']),
        invoiceItemAmount: castToType<double>(data['invoiceItemAmount']),
        invoiceItemSerialNo: data['invoiceItemSerialNo'] as String?,
        invoiceItembarCodeNumber: data['invoiceItembarCodeNumber'] as String?,
        stockRef: castToType<int>(data['stockRef']),
      );

  static InvoiceStruct? maybeFromMap(dynamic data) =>
      data is Map ? InvoiceStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'invoiceitemID': _invoiceitemID,
        'invoiceItem': _invoiceItem,
        'invoiceItemConfig': _invoiceItemConfig,
        'invoiceItemDescription': _invoiceItemDescription,
        'invoiceItemCost': _invoiceItemCost,
        'invoiceItemQuantity': _invoiceItemQuantity,
        'invoiceAmountBeforeTax': _invoiceAmountBeforeTax,
        'invoiceItemHSN': _invoiceItemHSN,
        'invoiceItemTaxRate': _invoiceItemTaxRate,
        'invoiceTaxAmount': _invoiceTaxAmount,
        'invoiceItemAmount': _invoiceItemAmount,
        'invoiceItemSerialNo': _invoiceItemSerialNo,
        'invoiceItembarCodeNumber': _invoiceItembarCodeNumber,
        'stockRef': _stockRef,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'invoiceitemID': serializeParam(
          _invoiceitemID,
          ParamType.String,
        ),
        'invoiceItem': serializeParam(
          _invoiceItem,
          ParamType.String,
        ),
        'invoiceItemConfig': serializeParam(
          _invoiceItemConfig,
          ParamType.String,
        ),
        'invoiceItemDescription': serializeParam(
          _invoiceItemDescription,
          ParamType.String,
        ),
        'invoiceItemCost': serializeParam(
          _invoiceItemCost,
          ParamType.double,
        ),
        'invoiceItemQuantity': serializeParam(
          _invoiceItemQuantity,
          ParamType.int,
        ),
        'invoiceAmountBeforeTax': serializeParam(
          _invoiceAmountBeforeTax,
          ParamType.double,
        ),
        'invoiceItemHSN': serializeParam(
          _invoiceItemHSN,
          ParamType.String,
        ),
        'invoiceItemTaxRate': serializeParam(
          _invoiceItemTaxRate,
          ParamType.double,
        ),
        'invoiceTaxAmount': serializeParam(
          _invoiceTaxAmount,
          ParamType.double,
        ),
        'invoiceItemAmount': serializeParam(
          _invoiceItemAmount,
          ParamType.double,
        ),
        'invoiceItemSerialNo': serializeParam(
          _invoiceItemSerialNo,
          ParamType.String,
        ),
        'invoiceItembarCodeNumber': serializeParam(
          _invoiceItembarCodeNumber,
          ParamType.String,
        ),
        'stockRef': serializeParam(
          _stockRef,
          ParamType.int,
        ),
      }.withoutNulls;

  static InvoiceStruct fromSerializableMap(Map<String, dynamic> data) =>
      InvoiceStruct(
        invoiceitemID: deserializeParam(
          data['invoiceitemID'],
          ParamType.String,
          false,
        ),
        invoiceItem: deserializeParam(
          data['invoiceItem'],
          ParamType.String,
          false,
        ),
        invoiceItemConfig: deserializeParam(
          data['invoiceItemConfig'],
          ParamType.String,
          false,
        ),
        invoiceItemDescription: deserializeParam(
          data['invoiceItemDescription'],
          ParamType.String,
          false,
        ),
        invoiceItemCost: deserializeParam(
          data['invoiceItemCost'],
          ParamType.double,
          false,
        ),
        invoiceItemQuantity: deserializeParam(
          data['invoiceItemQuantity'],
          ParamType.int,
          false,
        ),
        invoiceAmountBeforeTax: deserializeParam(
          data['invoiceAmountBeforeTax'],
          ParamType.double,
          false,
        ),
        invoiceItemHSN: deserializeParam(
          data['invoiceItemHSN'],
          ParamType.String,
          false,
        ),
        invoiceItemTaxRate: deserializeParam(
          data['invoiceItemTaxRate'],
          ParamType.double,
          false,
        ),
        invoiceTaxAmount: deserializeParam(
          data['invoiceTaxAmount'],
          ParamType.double,
          false,
        ),
        invoiceItemAmount: deserializeParam(
          data['invoiceItemAmount'],
          ParamType.double,
          false,
        ),
        invoiceItemSerialNo: deserializeParam(
          data['invoiceItemSerialNo'],
          ParamType.String,
          false,
        ),
        invoiceItembarCodeNumber: deserializeParam(
          data['invoiceItembarCodeNumber'],
          ParamType.String,
          false,
        ),
        stockRef: deserializeParam(
          data['stockRef'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'InvoiceStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is InvoiceStruct &&
        invoiceitemID == other.invoiceitemID &&
        invoiceItem == other.invoiceItem &&
        invoiceItemConfig == other.invoiceItemConfig &&
        invoiceItemDescription == other.invoiceItemDescription &&
        invoiceItemCost == other.invoiceItemCost &&
        invoiceItemQuantity == other.invoiceItemQuantity &&
        invoiceAmountBeforeTax == other.invoiceAmountBeforeTax &&
        invoiceItemHSN == other.invoiceItemHSN &&
        invoiceItemTaxRate == other.invoiceItemTaxRate &&
        invoiceTaxAmount == other.invoiceTaxAmount &&
        invoiceItemAmount == other.invoiceItemAmount &&
        invoiceItemSerialNo == other.invoiceItemSerialNo &&
        invoiceItembarCodeNumber == other.invoiceItembarCodeNumber &&
        stockRef == other.stockRef;
  }

  @override
  int get hashCode => const ListEquality().hash([
        invoiceitemID,
        invoiceItem,
        invoiceItemConfig,
        invoiceItemDescription,
        invoiceItemCost,
        invoiceItemQuantity,
        invoiceAmountBeforeTax,
        invoiceItemHSN,
        invoiceItemTaxRate,
        invoiceTaxAmount,
        invoiceItemAmount,
        invoiceItemSerialNo,
        invoiceItembarCodeNumber,
        stockRef
      ]);
}

InvoiceStruct createInvoiceStruct({
  String? invoiceitemID,
  String? invoiceItem,
  String? invoiceItemConfig,
  String? invoiceItemDescription,
  double? invoiceItemCost,
  int? invoiceItemQuantity,
  double? invoiceAmountBeforeTax,
  String? invoiceItemHSN,
  double? invoiceItemTaxRate,
  double? invoiceTaxAmount,
  double? invoiceItemAmount,
  String? invoiceItemSerialNo,
  String? invoiceItembarCodeNumber,
  int? stockRef,
}) =>
    InvoiceStruct(
      invoiceitemID: invoiceitemID,
      invoiceItem: invoiceItem,
      invoiceItemConfig: invoiceItemConfig,
      invoiceItemDescription: invoiceItemDescription,
      invoiceItemCost: invoiceItemCost,
      invoiceItemQuantity: invoiceItemQuantity,
      invoiceAmountBeforeTax: invoiceAmountBeforeTax,
      invoiceItemHSN: invoiceItemHSN,
      invoiceItemTaxRate: invoiceItemTaxRate,
      invoiceTaxAmount: invoiceTaxAmount,
      invoiceItemAmount: invoiceItemAmount,
      invoiceItemSerialNo: invoiceItemSerialNo,
      invoiceItembarCodeNumber: invoiceItembarCodeNumber,
      stockRef: stockRef,
    );
