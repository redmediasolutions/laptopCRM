import '../database.dart';

class PurchasesTable extends SupabaseTable<PurchasesRow> {
  @override
  String get tableName => 'Purchases';

  @override
  PurchasesRow createRow(Map<String, dynamic> data) => PurchasesRow(data);
}

class PurchasesRow extends SupabaseDataRow {
  PurchasesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PurchasesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get vendorReference => getField<int>('vendor_reference');
  set vendorReference(int? value) => setField<int>('vendor_reference', value);

  DateTime? get purchaseDate => getField<DateTime>('purchase_date');
  set purchaseDate(DateTime? value) =>
      setField<DateTime>('purchase_date', value);

  String? get purchasePrice => getField<String>('purchase_price');
  set purchasePrice(String? value) => setField<String>('purchase_price', value);

  String? get purchaseNarration => getField<String>('purchase_narration');
  set purchaseNarration(String? value) =>
      setField<String>('purchase_narration', value);

  int? get businessRef => getField<int>('business_ref');
  set businessRef(int? value) => setField<int>('business_ref', value);

  List<int> get vendorpaymentsRef => getListField<int>('vendorpayments_ref');
  set vendorpaymentsRef(List<int>? value) =>
      setListField<int>('vendorpayments_ref', value);
}
