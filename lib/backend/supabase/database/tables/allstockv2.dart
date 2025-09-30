import '../database.dart';

class Allstockv2Table extends SupabaseTable<Allstockv2Row> {
  @override
  String get tableName => 'allstockv2';

  @override
  Allstockv2Row createRow(Map<String, dynamic> data) => Allstockv2Row(data);
}

class Allstockv2Row extends SupabaseDataRow {
  Allstockv2Row(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => Allstockv2Table();

  int? get stockId => getField<int>('stock_id');
  set stockId(int? value) => setField<int>('stock_id', value);

  int? get productid => getField<int>('productid');
  set productid(int? value) => setField<int>('productid', value);

  int? get businessId => getField<int>('business_id');
  set businessId(int? value) => setField<int>('business_id', value);

  String? get productName => getField<String>('product_name');
  set productName(String? value) => setField<String>('product_name', value);

  String? get productConfig => getField<String>('product_config');
  set productConfig(String? value) => setField<String>('product_config', value);

  String? get productDescription => getField<String>('product_description');
  set productDescription(String? value) =>
      setField<String>('product_description', value);

  String? get productSerial => getField<String>('product_serial');
  set productSerial(String? value) => setField<String>('product_serial', value);

  String? get saleprice => getField<String>('saleprice');
  set saleprice(String? value) => setField<String>('saleprice', value);

  String? get stockReference => getField<String>('stock_reference');
  set stockReference(String? value) =>
      setField<String>('stock_reference', value);

  bool? get isSold => getField<bool>('isSold');
  set isSold(bool? value) => setField<bool>('isSold', value);

  String? get condition => getField<String>('condition');
  set condition(String? value) => setField<String>('condition', value);

  int? get vendorId => getField<int>('vendor_id');
  set vendorId(int? value) => setField<int>('vendor_id', value);

  String? get vendorreference => getField<String>('vendorreference');
  set vendorreference(String? value) =>
      setField<String>('vendorreference', value);

  int? get purchasesid => getField<int>('purchasesid');
  set purchasesid(int? value) => setField<int>('purchasesid', value);

  String? get productReference => getField<String>('product_reference');
  set productReference(String? value) =>
      setField<String>('product_reference', value);

  DateTime? get purchaseDate => getField<DateTime>('purchase_date');
  set purchaseDate(DateTime? value) =>
      setField<DateTime>('purchase_date', value);

  String? get vendorName => getField<String>('vendor_name');
  set vendorName(String? value) => setField<String>('vendor_name', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get costprice => getField<String>('costprice');
  set costprice(String? value) => setField<String>('costprice', value);

  String? get vendorPhone => getField<String>('vendor_phone');
  set vendorPhone(String? value) => setField<String>('vendor_phone', value);

  String? get productimage => getField<String>('productimage');
  set productimage(String? value) => setField<String>('productimage', value);
}
