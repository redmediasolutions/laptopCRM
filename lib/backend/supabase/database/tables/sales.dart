import '../database.dart';

class SalesTable extends SupabaseTable<SalesRow> {
  @override
  String get tableName => 'Sales';

  @override
  SalesRow createRow(Map<String, dynamic> data) => SalesRow(data);
}

class SalesRow extends SupabaseDataRow {
  SalesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SalesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get customerReference => getField<int>('customer_reference');
  set customerReference(int? value) =>
      setField<int>('customer_reference', value);

  String? get invoiceNo => getField<String>('invoice_no');
  set invoiceNo(String? value) => setField<String>('invoice_no', value);

  int? get productReference => getField<int>('product_reference');
  set productReference(int? value) => setField<int>('product_reference', value);

  int? get businessRef => getField<int>('business_ref');
  set businessRef(int? value) => setField<int>('business_ref', value);
}
