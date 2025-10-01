import '../database.dart';

class StockTable extends SupabaseTable<StockRow> {
  @override
  String get tableName => 'Stock';

  @override
  StockRow createRow(Map<String, dynamic> data) => StockRow(data);
}

class StockRow extends SupabaseDataRow {
  StockRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => StockTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get referenceField => getField<String>('reference');
  set referenceField(String? value) => setField<String>('reference', value);

  int? get productReference => getField<int>('product_reference');
  set productReference(int? value) => setField<int>('product_reference', value);

  int? get businessRef => getField<int>('business_ref');
  set businessRef(int? value) => setField<int>('business_ref', value);

  int? get purchasesRef => getField<int>('purchases_ref');
  set purchasesRef(int? value) => setField<int>('purchases_ref', value);

  String? get productSerial => getField<String>('product_serial');
  set productSerial(String? value) => setField<String>('product_serial', value);

  int? get vendorReference => getField<int>('vendor_reference');
  set vendorReference(int? value) => setField<int>('vendor_reference', value);

  String? get barcodeGen => getField<String>('barcode_gen');
  set barcodeGen(String? value) => setField<String>('barcode_gen', value);

  bool? get isSold => getField<bool>('isSold');
  set isSold(bool? value) => setField<bool>('isSold', value);

  String? get stockName => getField<String>('stock_name');
  set stockName(String? value) => setField<String>('stock_name', value);

  String? get stockCode => getField<String>('stock_code');
  set stockCode(String? value) => setField<String>('stock_code', value);

  String? get stockHSN => getField<String>('stockHSN');
  set stockHSN(String? value) => setField<String>('stockHSN', value);

  String? get stockCost => getField<String>('stock_cost');
  set stockCost(String? value) => setField<String>('stock_cost', value);

  String? get stockNarration => getField<String>('stock_narration');
  set stockNarration(String? value) =>
      setField<String>('stock_narration', value);

  String? get stockDiscripton => getField<String>('stock_discripton');
  set stockDiscripton(String? value) =>
      setField<String>('stock_discripton', value);

  String? get stockQuantity => getField<String>('stock_quantity');
  set stockQuantity(String? value) => setField<String>('stock_quantity', value);

  String? get condition => getField<String>('condition');
  set condition(String? value) => setField<String>('condition', value);

  int? get invoiceid => getField<int>('invoiceid');
  set invoiceid(int? value) => setField<int>('invoiceid', value);
}
