// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReportProductbySaleStruct extends BaseStruct {
  ReportProductbySaleStruct({
    int? stockRef,
    String? invoiceItem,
    String? invoiceItemID,
    String? invoiceItemHSN,
    double? invoiceItemCost,
    double? invoiceTaxAmount,
    double? invoiceItemAmount,
    String? invoiceItemConfig,
    double? invoiceItemTaxRate,
    double? invoiceItemQuantity,
    String? invoiceItemSerialNo,
    double? invoiceAmountBeforeTax,
    String? invoiceItembarCodeNumber,
  })  : _stockRef = stockRef,
        _invoiceItem = invoiceItem,
        _invoiceItemID = invoiceItemID,
        _invoiceItemHSN = invoiceItemHSN,
        _invoiceItemCost = invoiceItemCost,
        _invoiceTaxAmount = invoiceTaxAmount,
        _invoiceItemAmount = invoiceItemAmount,
        _invoiceItemConfig = invoiceItemConfig,
        _invoiceItemTaxRate = invoiceItemTaxRate,
        _invoiceItemQuantity = invoiceItemQuantity,
        _invoiceItemSerialNo = invoiceItemSerialNo,
        _invoiceAmountBeforeTax = invoiceAmountBeforeTax,
        _invoiceItembarCodeNumber = invoiceItembarCodeNumber;

  // "stockRef" field.
  int? _stockRef;
  int get stockRef => _stockRef ?? 0;
  set stockRef(int? val) => _stockRef = val;

  void incrementStockRef(int amount) => stockRef = stockRef + amount;

  bool hasStockRef() => _stockRef != null;

  // "invoiceItem" field.
  String? _invoiceItem;
  String get invoiceItem => _invoiceItem ?? '';
  set invoiceItem(String? val) => _invoiceItem = val;

  bool hasInvoiceItem() => _invoiceItem != null;

  // "invoiceItemID" field.
  String? _invoiceItemID;
  String get invoiceItemID => _invoiceItemID ?? '';
  set invoiceItemID(String? val) => _invoiceItemID = val;

  bool hasInvoiceItemID() => _invoiceItemID != null;

  // "invoiceItemHSN" field.
  String? _invoiceItemHSN;
  String get invoiceItemHSN => _invoiceItemHSN ?? '';
  set invoiceItemHSN(String? val) => _invoiceItemHSN = val;

  bool hasInvoiceItemHSN() => _invoiceItemHSN != null;

  // "invoiceItemCost" field.
  double? _invoiceItemCost;
  double get invoiceItemCost => _invoiceItemCost ?? 0.0;
  set invoiceItemCost(double? val) => _invoiceItemCost = val;

  void incrementInvoiceItemCost(double amount) =>
      invoiceItemCost = invoiceItemCost + amount;

  bool hasInvoiceItemCost() => _invoiceItemCost != null;

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

  // "invoiceItemConfig" field.
  String? _invoiceItemConfig;
  String get invoiceItemConfig => _invoiceItemConfig ?? '';
  set invoiceItemConfig(String? val) => _invoiceItemConfig = val;

  bool hasInvoiceItemConfig() => _invoiceItemConfig != null;

  // "invoiceItemTaxRate" field.
  double? _invoiceItemTaxRate;
  double get invoiceItemTaxRate => _invoiceItemTaxRate ?? 0.0;
  set invoiceItemTaxRate(double? val) => _invoiceItemTaxRate = val;

  void incrementInvoiceItemTaxRate(double amount) =>
      invoiceItemTaxRate = invoiceItemTaxRate + amount;

  bool hasInvoiceItemTaxRate() => _invoiceItemTaxRate != null;

  // "invoiceItemQuantity" field.
  double? _invoiceItemQuantity;
  double get invoiceItemQuantity => _invoiceItemQuantity ?? 0.0;
  set invoiceItemQuantity(double? val) => _invoiceItemQuantity = val;

  void incrementInvoiceItemQuantity(double amount) =>
      invoiceItemQuantity = invoiceItemQuantity + amount;

  bool hasInvoiceItemQuantity() => _invoiceItemQuantity != null;

  // "invoiceItemSerialNo" field.
  String? _invoiceItemSerialNo;
  String get invoiceItemSerialNo => _invoiceItemSerialNo ?? '';
  set invoiceItemSerialNo(String? val) => _invoiceItemSerialNo = val;

  bool hasInvoiceItemSerialNo() => _invoiceItemSerialNo != null;

  // "invoiceAmountBeforeTax" field.
  double? _invoiceAmountBeforeTax;
  double get invoiceAmountBeforeTax => _invoiceAmountBeforeTax ?? 0.0;
  set invoiceAmountBeforeTax(double? val) => _invoiceAmountBeforeTax = val;

  void incrementInvoiceAmountBeforeTax(double amount) =>
      invoiceAmountBeforeTax = invoiceAmountBeforeTax + amount;

  bool hasInvoiceAmountBeforeTax() => _invoiceAmountBeforeTax != null;

  // "invoiceItembarCodeNumber" field.
  String? _invoiceItembarCodeNumber;
  String get invoiceItembarCodeNumber => _invoiceItembarCodeNumber ?? '';
  set invoiceItembarCodeNumber(String? val) => _invoiceItembarCodeNumber = val;

  bool hasInvoiceItembarCodeNumber() => _invoiceItembarCodeNumber != null;

  static ReportProductbySaleStruct fromMap(Map<String, dynamic> data) =>
      ReportProductbySaleStruct(
        stockRef: castToType<int>(data['stockRef']),
        invoiceItem: data['invoiceItem'] as String?,
        invoiceItemID: data['invoiceItemID'] as String?,
        invoiceItemHSN: data['invoiceItemHSN'] as String?,
        invoiceItemCost: castToType<double>(data['invoiceItemCost']),
        invoiceTaxAmount: castToType<double>(data['invoiceTaxAmount']),
        invoiceItemAmount: castToType<double>(data['invoiceItemAmount']),
        invoiceItemConfig: data['invoiceItemConfig'] as String?,
        invoiceItemTaxRate: castToType<double>(data['invoiceItemTaxRate']),
        invoiceItemQuantity: castToType<double>(data['invoiceItemQuantity']),
        invoiceItemSerialNo: data['invoiceItemSerialNo'] as String?,
        invoiceAmountBeforeTax:
            castToType<double>(data['invoiceAmountBeforeTax']),
        invoiceItembarCodeNumber: data['invoiceItembarCodeNumber'] as String?,
      );

  static ReportProductbySaleStruct? maybeFromMap(dynamic data) => data is Map
      ? ReportProductbySaleStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'stockRef': _stockRef,
        'invoiceItem': _invoiceItem,
        'invoiceItemID': _invoiceItemID,
        'invoiceItemHSN': _invoiceItemHSN,
        'invoiceItemCost': _invoiceItemCost,
        'invoiceTaxAmount': _invoiceTaxAmount,
        'invoiceItemAmount': _invoiceItemAmount,
        'invoiceItemConfig': _invoiceItemConfig,
        'invoiceItemTaxRate': _invoiceItemTaxRate,
        'invoiceItemQuantity': _invoiceItemQuantity,
        'invoiceItemSerialNo': _invoiceItemSerialNo,
        'invoiceAmountBeforeTax': _invoiceAmountBeforeTax,
        'invoiceItembarCodeNumber': _invoiceItembarCodeNumber,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'stockRef': serializeParam(
          _stockRef,
          ParamType.int,
        ),
        'invoiceItem': serializeParam(
          _invoiceItem,
          ParamType.String,
        ),
        'invoiceItemID': serializeParam(
          _invoiceItemID,
          ParamType.String,
        ),
        'invoiceItemHSN': serializeParam(
          _invoiceItemHSN,
          ParamType.String,
        ),
        'invoiceItemCost': serializeParam(
          _invoiceItemCost,
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
        'invoiceItemConfig': serializeParam(
          _invoiceItemConfig,
          ParamType.String,
        ),
        'invoiceItemTaxRate': serializeParam(
          _invoiceItemTaxRate,
          ParamType.double,
        ),
        'invoiceItemQuantity': serializeParam(
          _invoiceItemQuantity,
          ParamType.double,
        ),
        'invoiceItemSerialNo': serializeParam(
          _invoiceItemSerialNo,
          ParamType.String,
        ),
        'invoiceAmountBeforeTax': serializeParam(
          _invoiceAmountBeforeTax,
          ParamType.double,
        ),
        'invoiceItembarCodeNumber': serializeParam(
          _invoiceItembarCodeNumber,
          ParamType.String,
        ),
      }.withoutNulls;

  static ReportProductbySaleStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ReportProductbySaleStruct(
        stockRef: deserializeParam(
          data['stockRef'],
          ParamType.int,
          false,
        ),
        invoiceItem: deserializeParam(
          data['invoiceItem'],
          ParamType.String,
          false,
        ),
        invoiceItemID: deserializeParam(
          data['invoiceItemID'],
          ParamType.String,
          false,
        ),
        invoiceItemHSN: deserializeParam(
          data['invoiceItemHSN'],
          ParamType.String,
          false,
        ),
        invoiceItemCost: deserializeParam(
          data['invoiceItemCost'],
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
        invoiceItemConfig: deserializeParam(
          data['invoiceItemConfig'],
          ParamType.String,
          false,
        ),
        invoiceItemTaxRate: deserializeParam(
          data['invoiceItemTaxRate'],
          ParamType.double,
          false,
        ),
        invoiceItemQuantity: deserializeParam(
          data['invoiceItemQuantity'],
          ParamType.double,
          false,
        ),
        invoiceItemSerialNo: deserializeParam(
          data['invoiceItemSerialNo'],
          ParamType.String,
          false,
        ),
        invoiceAmountBeforeTax: deserializeParam(
          data['invoiceAmountBeforeTax'],
          ParamType.double,
          false,
        ),
        invoiceItembarCodeNumber: deserializeParam(
          data['invoiceItembarCodeNumber'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ReportProductbySaleStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ReportProductbySaleStruct &&
        stockRef == other.stockRef &&
        invoiceItem == other.invoiceItem &&
        invoiceItemID == other.invoiceItemID &&
        invoiceItemHSN == other.invoiceItemHSN &&
        invoiceItemCost == other.invoiceItemCost &&
        invoiceTaxAmount == other.invoiceTaxAmount &&
        invoiceItemAmount == other.invoiceItemAmount &&
        invoiceItemConfig == other.invoiceItemConfig &&
        invoiceItemTaxRate == other.invoiceItemTaxRate &&
        invoiceItemQuantity == other.invoiceItemQuantity &&
        invoiceItemSerialNo == other.invoiceItemSerialNo &&
        invoiceAmountBeforeTax == other.invoiceAmountBeforeTax &&
        invoiceItembarCodeNumber == other.invoiceItembarCodeNumber;
  }

  @override
  int get hashCode => const ListEquality().hash([
        stockRef,
        invoiceItem,
        invoiceItemID,
        invoiceItemHSN,
        invoiceItemCost,
        invoiceTaxAmount,
        invoiceItemAmount,
        invoiceItemConfig,
        invoiceItemTaxRate,
        invoiceItemQuantity,
        invoiceItemSerialNo,
        invoiceAmountBeforeTax,
        invoiceItembarCodeNumber
      ]);
}

ReportProductbySaleStruct createReportProductbySaleStruct({
  int? stockRef,
  String? invoiceItem,
  String? invoiceItemID,
  String? invoiceItemHSN,
  double? invoiceItemCost,
  double? invoiceTaxAmount,
  double? invoiceItemAmount,
  String? invoiceItemConfig,
  double? invoiceItemTaxRate,
  double? invoiceItemQuantity,
  String? invoiceItemSerialNo,
  double? invoiceAmountBeforeTax,
  String? invoiceItembarCodeNumber,
}) =>
    ReportProductbySaleStruct(
      stockRef: stockRef,
      invoiceItem: invoiceItem,
      invoiceItemID: invoiceItemID,
      invoiceItemHSN: invoiceItemHSN,
      invoiceItemCost: invoiceItemCost,
      invoiceTaxAmount: invoiceTaxAmount,
      invoiceItemAmount: invoiceItemAmount,
      invoiceItemConfig: invoiceItemConfig,
      invoiceItemTaxRate: invoiceItemTaxRate,
      invoiceItemQuantity: invoiceItemQuantity,
      invoiceItemSerialNo: invoiceItemSerialNo,
      invoiceAmountBeforeTax: invoiceAmountBeforeTax,
      invoiceItembarCodeNumber: invoiceItembarCodeNumber,
    );
