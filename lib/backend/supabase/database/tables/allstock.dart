import '../database.dart';

class AllstockTable extends SupabaseTable<AllstockRow> {
  @override
  String get tableName => 'allstock';

  @override
  AllstockRow createRow(Map<String, dynamic> data) => AllstockRow(data);
}

class AllstockRow extends SupabaseDataRow {
  AllstockRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AllstockTable();

  int? get productId => getField<int>('product_id');
  set productId(int? value) => setField<int>('product_id', value);

  int? get stockId => getField<int>('stock_id');
  set stockId(int? value) => setField<int>('stock_id', value);

  int? get purchaseId => getField<int>('purchase_id');
  set purchaseId(int? value) => setField<int>('purchase_id', value);

  String? get productReference => getField<String>('product_reference');
  set productReference(String? value) =>
      setField<String>('product_reference', value);

  int? get businessId => getField<int>('business_id');
  set businessId(int? value) => setField<int>('business_id', value);

  String? get productName => getField<String>('product_name');
  set productName(String? value) => setField<String>('product_name', value);

  String? get productCode => getField<String>('product_code');
  set productCode(String? value) => setField<String>('product_code', value);

  String? get productConfig => getField<String>('product_config');
  set productConfig(String? value) => setField<String>('product_config', value);

  String? get productSerial => getField<String>('product_serial');
  set productSerial(String? value) => setField<String>('product_serial', value);

  String? get purchasePrice => getField<String>('purchase_price');
  set purchasePrice(String? value) => setField<String>('purchase_price', value);

  DateTime? get purchaseDate => getField<DateTime>('purchase_date');
  set purchaseDate(DateTime? value) =>
      setField<DateTime>('purchase_date', value);

  String? get vendorName => getField<String>('vendor_name');
  set vendorName(String? value) => setField<String>('vendor_name', value);

  String? get barcodeGen => getField<String>('barcode_gen');
  set barcodeGen(String? value) => setField<String>('barcode_gen', value);

  bool? get isSold => getField<bool>('isSold');
  set isSold(bool? value) => setField<bool>('isSold', value);
}
