// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MasterListSearchStruct extends BaseStruct {
  MasterListSearchStruct({
    String? name,
    String? configuration,
    String? type,
    String? productReference,
    String? brand,
    String? productDescription,
    int? productid,
    String? brandref,
    String? typeRef,
    String? productCode,
  })  : _name = name,
        _configuration = configuration,
        _type = type,
        _productReference = productReference,
        _brand = brand,
        _productDescription = productDescription,
        _productid = productid,
        _brandref = brandref,
        _typeRef = typeRef,
        _productCode = productCode;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "configuration" field.
  String? _configuration;
  String get configuration => _configuration ?? '';
  set configuration(String? val) => _configuration = val;

  bool hasConfiguration() => _configuration != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  set type(String? val) => _type = val;

  bool hasType() => _type != null;

  // "productReference" field.
  String? _productReference;
  String get productReference => _productReference ?? '';
  set productReference(String? val) => _productReference = val;

  bool hasProductReference() => _productReference != null;

  // "brand" field.
  String? _brand;
  String get brand => _brand ?? '';
  set brand(String? val) => _brand = val;

  bool hasBrand() => _brand != null;

  // "productDescription" field.
  String? _productDescription;
  String get productDescription => _productDescription ?? '';
  set productDescription(String? val) => _productDescription = val;

  bool hasProductDescription() => _productDescription != null;

  // "productid" field.
  int? _productid;
  int get productid => _productid ?? 0;
  set productid(int? val) => _productid = val;

  void incrementProductid(int amount) => productid = productid + amount;

  bool hasProductid() => _productid != null;

  // "brandref" field.
  String? _brandref;
  String get brandref => _brandref ?? '';
  set brandref(String? val) => _brandref = val;

  bool hasBrandref() => _brandref != null;

  // "typeRef" field.
  String? _typeRef;
  String get typeRef => _typeRef ?? '';
  set typeRef(String? val) => _typeRef = val;

  bool hasTypeRef() => _typeRef != null;

  // "productCode" field.
  String? _productCode;
  String get productCode => _productCode ?? '';
  set productCode(String? val) => _productCode = val;

  bool hasProductCode() => _productCode != null;

  static MasterListSearchStruct fromMap(Map<String, dynamic> data) =>
      MasterListSearchStruct(
        name: data['name'] as String?,
        configuration: data['configuration'] as String?,
        type: data['type'] as String?,
        productReference: data['productReference'] as String?,
        brand: data['brand'] as String?,
        productDescription: data['productDescription'] as String?,
        productid: castToType<int>(data['productid']),
        brandref: data['brandref'] as String?,
        typeRef: data['typeRef'] as String?,
        productCode: data['productCode'] as String?,
      );

  static MasterListSearchStruct? maybeFromMap(dynamic data) => data is Map
      ? MasterListSearchStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'configuration': _configuration,
        'type': _type,
        'productReference': _productReference,
        'brand': _brand,
        'productDescription': _productDescription,
        'productid': _productid,
        'brandref': _brandref,
        'typeRef': _typeRef,
        'productCode': _productCode,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'configuration': serializeParam(
          _configuration,
          ParamType.String,
        ),
        'type': serializeParam(
          _type,
          ParamType.String,
        ),
        'productReference': serializeParam(
          _productReference,
          ParamType.String,
        ),
        'brand': serializeParam(
          _brand,
          ParamType.String,
        ),
        'productDescription': serializeParam(
          _productDescription,
          ParamType.String,
        ),
        'productid': serializeParam(
          _productid,
          ParamType.int,
        ),
        'brandref': serializeParam(
          _brandref,
          ParamType.String,
        ),
        'typeRef': serializeParam(
          _typeRef,
          ParamType.String,
        ),
        'productCode': serializeParam(
          _productCode,
          ParamType.String,
        ),
      }.withoutNulls;

  static MasterListSearchStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      MasterListSearchStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        configuration: deserializeParam(
          data['configuration'],
          ParamType.String,
          false,
        ),
        type: deserializeParam(
          data['type'],
          ParamType.String,
          false,
        ),
        productReference: deserializeParam(
          data['productReference'],
          ParamType.String,
          false,
        ),
        brand: deserializeParam(
          data['brand'],
          ParamType.String,
          false,
        ),
        productDescription: deserializeParam(
          data['productDescription'],
          ParamType.String,
          false,
        ),
        productid: deserializeParam(
          data['productid'],
          ParamType.int,
          false,
        ),
        brandref: deserializeParam(
          data['brandref'],
          ParamType.String,
          false,
        ),
        typeRef: deserializeParam(
          data['typeRef'],
          ParamType.String,
          false,
        ),
        productCode: deserializeParam(
          data['productCode'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'MasterListSearchStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MasterListSearchStruct &&
        name == other.name &&
        configuration == other.configuration &&
        type == other.type &&
        productReference == other.productReference &&
        brand == other.brand &&
        productDescription == other.productDescription &&
        productid == other.productid &&
        brandref == other.brandref &&
        typeRef == other.typeRef &&
        productCode == other.productCode;
  }

  @override
  int get hashCode => const ListEquality().hash([
        name,
        configuration,
        type,
        productReference,
        brand,
        productDescription,
        productid,
        brandref,
        typeRef,
        productCode
      ]);
}

MasterListSearchStruct createMasterListSearchStruct({
  String? name,
  String? configuration,
  String? type,
  String? productReference,
  String? brand,
  String? productDescription,
  int? productid,
  String? brandref,
  String? typeRef,
  String? productCode,
}) =>
    MasterListSearchStruct(
      name: name,
      configuration: configuration,
      type: type,
      productReference: productReference,
      brand: brand,
      productDescription: productDescription,
      productid: productid,
      brandref: brandref,
      typeRef: typeRef,
      productCode: productCode,
    );
