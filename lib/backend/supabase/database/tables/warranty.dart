import '../database.dart';

class WarrantyTable extends SupabaseTable<WarrantyRow> {
  @override
  String get tableName => 'Warranty';

  @override
  WarrantyRow createRow(Map<String, dynamic> data) => WarrantyRow(data);
}

class WarrantyRow extends SupabaseDataRow {
  WarrantyRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => WarrantyTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get referenceField => getField<String>('reference');
  set referenceField(String? value) => setField<String>('reference', value);

  int? get stockRef => getField<int>('stock_ref');
  set stockRef(int? value) => setField<int>('stock_ref', value);

  DateTime? get startDate => getField<DateTime>('start_date');
  set startDate(DateTime? value) => setField<DateTime>('start_date', value);

  DateTime? get endDate => getField<DateTime>('end_date');
  set endDate(DateTime? value) => setField<DateTime>('end_date', value);

  int? get businessRef => getField<int>('business_ref');
  set businessRef(int? value) => setField<int>('business_ref', value);
}
