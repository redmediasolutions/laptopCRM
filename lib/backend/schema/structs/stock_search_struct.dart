// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class StockSearchStruct extends BaseStruct {
  StockSearchStruct({
    String? model,
    String? productDescription,
    String? serialNo,
    String? vendor,
    String? costPrice,
    String? salePrice,
    String? condition,
    DateTime? purchaseDate,
    bool? isSold,
    String? stockReference,
    String? phone,
    String? productconfig,
    int? stockid,
    int? purchaseid,
    String? vendorPhone,
    int? stockId,
    String? productReference,
  })  : _model = model,
        _productDescription = productDescription,
        _serialNo = serialNo,
        _vendor = vendor,
        _costPrice = costPrice,
        _salePrice = salePrice,
        _condition = condition,
        _purchaseDate = purchaseDate,
        _isSold = isSold,
        _stockReference = stockReference,
        _phone = phone,
        _productconfig = productconfig,
        _stockid = stockid,
        _purchaseid = purchaseid,
        _vendorPhone = vendorPhone,
        _stockId = stockId,
        _productReference = productReference;

  // "model" field.
  String? _model;
  String get model => _model ?? '';
  set model(String? val) => _model = val;

  bool hasModel() => _model != null;

  // "productDescription" field.
  String? _productDescription;
  String get productDescription => _productDescription ?? '';
  set productDescription(String? val) => _productDescription = val;

  bool hasProductDescription() => _productDescription != null;

  // "serialNo" field.
  String? _serialNo;
  String get serialNo => _serialNo ?? '';
  set serialNo(String? val) => _serialNo = val;

  bool hasSerialNo() => _serialNo != null;

  // "vendor" field.
  String? _vendor;
  String get vendor => _vendor ?? '';
  set vendor(String? val) => _vendor = val;

  bool hasVendor() => _vendor != null;

  // "costPrice" field.
  String? _costPrice;
  String get costPrice => _costPrice ?? '';
  set costPrice(String? val) => _costPrice = val;

  bool hasCostPrice() => _costPrice != null;

  // "salePrice" field.
  String? _salePrice;
  String get salePrice => _salePrice ?? '';
  set salePrice(String? val) => _salePrice = val;

  bool hasSalePrice() => _salePrice != null;

  // "condition" field.
  String? _condition;
  String get condition => _condition ?? '';
  set condition(String? val) => _condition = val;

  bool hasCondition() => _condition != null;

  // "purchaseDate" field.
  DateTime? _purchaseDate;
  DateTime? get purchaseDate => _purchaseDate;
  set purchaseDate(DateTime? val) => _purchaseDate = val;

  bool hasPurchaseDate() => _purchaseDate != null;

  // "isSold" field.
  bool? _isSold;
  bool get isSold => _isSold ?? false;
  set isSold(bool? val) => _isSold = val;

  bool hasIsSold() => _isSold != null;

  // "stockReference" field.
  String? _stockReference;
  String get stockReference => _stockReference ?? '';
  set stockReference(String? val) => _stockReference = val;

  bool hasStockReference() => _stockReference != null;

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  set phone(String? val) => _phone = val;

  bool hasPhone() => _phone != null;

  // "productconfig" field.
  String? _productconfig;
  String get productconfig => _productconfig ?? '';
  set productconfig(String? val) => _productconfig = val;

  bool hasProductconfig() => _productconfig != null;

  // "stockid" field.
  int? _stockid;
  int get stockid => _stockid ?? 0;
  set stockid(int? val) => _stockid = val;

  void incrementStockid(int amount) => stockid = stockid + amount;

  bool hasStockid() => _stockid != null;

  // "purchaseid" field.
  int? _purchaseid;
  int get purchaseid => _purchaseid ?? 0;
  set purchaseid(int? val) => _purchaseid = val;

  void incrementPurchaseid(int amount) => purchaseid = purchaseid + amount;

  bool hasPurchaseid() => _purchaseid != null;

  // "vendorPhone" field.
  String? _vendorPhone;
  String get vendorPhone => _vendorPhone ?? '';
  set vendorPhone(String? val) => _vendorPhone = val;

  bool hasVendorPhone() => _vendorPhone != null;

  // "stockId" field.
  int? _stockId;
  int get stockId => _stockId ?? 0;
  set stockId(int? val) => _stockId = val;

  void incrementStockId(int amount) => stockId = stockId + amount;

  bool hasStockId() => _stockId != null;

  // "productReference" field.
  String? _productReference;
  String get productReference => _productReference ?? '';
  set productReference(String? val) => _productReference = val;

  bool hasProductReference() => _productReference != null;

  static StockSearchStruct fromMap(Map<String, dynamic> data) =>
      StockSearchStruct(
        model: data['model'] as String?,
        productDescription: data['productDescription'] as String?,
        serialNo: data['serialNo'] as String?,
        vendor: data['vendor'] as String?,
        costPrice: data['costPrice'] as String?,
        salePrice: data['salePrice'] as String?,
        condition: data['condition'] as String?,
        purchaseDate: data['purchaseDate'] as DateTime?,
        isSold: data['isSold'] as bool?,
        stockReference: data['stockReference'] as String?,
        phone: data['phone'] as String?,
        productconfig: data['productconfig'] as String?,
        stockid: castToType<int>(data['stockid']),
        purchaseid: castToType<int>(data['purchaseid']),
        vendorPhone: data['vendorPhone'] as String?,
        stockId: castToType<int>(data['stockId']),
        productReference: data['productReference'] as String?,
      );

  static StockSearchStruct? maybeFromMap(dynamic data) => data is Map
      ? StockSearchStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'model': _model,
        'productDescription': _productDescription,
        'serialNo': _serialNo,
        'vendor': _vendor,
        'costPrice': _costPrice,
        'salePrice': _salePrice,
        'condition': _condition,
        'purchaseDate': _purchaseDate,
        'isSold': _isSold,
        'stockReference': _stockReference,
        'phone': _phone,
        'productconfig': _productconfig,
        'stockid': _stockid,
        'purchaseid': _purchaseid,
        'vendorPhone': _vendorPhone,
        'stockId': _stockId,
        'productReference': _productReference,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'model': serializeParam(
          _model,
          ParamType.String,
        ),
        'productDescription': serializeParam(
          _productDescription,
          ParamType.String,
        ),
        'serialNo': serializeParam(
          _serialNo,
          ParamType.String,
        ),
        'vendor': serializeParam(
          _vendor,
          ParamType.String,
        ),
        'costPrice': serializeParam(
          _costPrice,
          ParamType.String,
        ),
        'salePrice': serializeParam(
          _salePrice,
          ParamType.String,
        ),
        'condition': serializeParam(
          _condition,
          ParamType.String,
        ),
        'purchaseDate': serializeParam(
          _purchaseDate,
          ParamType.DateTime,
        ),
        'isSold': serializeParam(
          _isSold,
          ParamType.bool,
        ),
        'stockReference': serializeParam(
          _stockReference,
          ParamType.String,
        ),
        'phone': serializeParam(
          _phone,
          ParamType.String,
        ),
        'productconfig': serializeParam(
          _productconfig,
          ParamType.String,
        ),
        'stockid': serializeParam(
          _stockid,
          ParamType.int,
        ),
        'purchaseid': serializeParam(
          _purchaseid,
          ParamType.int,
        ),
        'vendorPhone': serializeParam(
          _vendorPhone,
          ParamType.String,
        ),
        'stockId': serializeParam(
          _stockId,
          ParamType.int,
        ),
        'productReference': serializeParam(
          _productReference,
          ParamType.String,
        ),
      }.withoutNulls;

  static StockSearchStruct fromSerializableMap(Map<String, dynamic> data) =>
      StockSearchStruct(
        model: deserializeParam(
          data['model'],
          ParamType.String,
          false,
        ),
        productDescription: deserializeParam(
          data['productDescription'],
          ParamType.String,
          false,
        ),
        serialNo: deserializeParam(
          data['serialNo'],
          ParamType.String,
          false,
        ),
        vendor: deserializeParam(
          data['vendor'],
          ParamType.String,
          false,
        ),
        costPrice: deserializeParam(
          data['costPrice'],
          ParamType.String,
          false,
        ),
        salePrice: deserializeParam(
          data['salePrice'],
          ParamType.String,
          false,
        ),
        condition: deserializeParam(
          data['condition'],
          ParamType.String,
          false,
        ),
        purchaseDate: deserializeParam(
          data['purchaseDate'],
          ParamType.DateTime,
          false,
        ),
        isSold: deserializeParam(
          data['isSold'],
          ParamType.bool,
          false,
        ),
        stockReference: deserializeParam(
          data['stockReference'],
          ParamType.String,
          false,
        ),
        phone: deserializeParam(
          data['phone'],
          ParamType.String,
          false,
        ),
        productconfig: deserializeParam(
          data['productconfig'],
          ParamType.String,
          false,
        ),
        stockid: deserializeParam(
          data['stockid'],
          ParamType.int,
          false,
        ),
        purchaseid: deserializeParam(
          data['purchaseid'],
          ParamType.int,
          false,
        ),
        vendorPhone: deserializeParam(
          data['vendorPhone'],
          ParamType.String,
          false,
        ),
        stockId: deserializeParam(
          data['stockId'],
          ParamType.int,
          false,
        ),
        productReference: deserializeParam(
          data['productReference'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'StockSearchStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is StockSearchStruct &&
        model == other.model &&
        productDescription == other.productDescription &&
        serialNo == other.serialNo &&
        vendor == other.vendor &&
        costPrice == other.costPrice &&
        salePrice == other.salePrice &&
        condition == other.condition &&
        purchaseDate == other.purchaseDate &&
        isSold == other.isSold &&
        stockReference == other.stockReference &&
        phone == other.phone &&
        productconfig == other.productconfig &&
        stockid == other.stockid &&
        purchaseid == other.purchaseid &&
        vendorPhone == other.vendorPhone &&
        stockId == other.stockId &&
        productReference == other.productReference;
  }

  @override
  int get hashCode => const ListEquality().hash([
        model,
        productDescription,
        serialNo,
        vendor,
        costPrice,
        salePrice,
        condition,
        purchaseDate,
        isSold,
        stockReference,
        phone,
        productconfig,
        stockid,
        purchaseid,
        vendorPhone,
        stockId,
        productReference
      ]);
}

StockSearchStruct createStockSearchStruct({
  String? model,
  String? productDescription,
  String? serialNo,
  String? vendor,
  String? costPrice,
  String? salePrice,
  String? condition,
  DateTime? purchaseDate,
  bool? isSold,
  String? stockReference,
  String? phone,
  String? productconfig,
  int? stockid,
  int? purchaseid,
  String? vendorPhone,
  int? stockId,
  String? productReference,
}) =>
    StockSearchStruct(
      model: model,
      productDescription: productDescription,
      serialNo: serialNo,
      vendor: vendor,
      costPrice: costPrice,
      salePrice: salePrice,
      condition: condition,
      purchaseDate: purchaseDate,
      isSold: isSold,
      stockReference: stockReference,
      phone: phone,
      productconfig: productconfig,
      stockid: stockid,
      purchaseid: purchaseid,
      vendorPhone: vendorPhone,
      stockId: stockId,
      productReference: productReference,
    );
