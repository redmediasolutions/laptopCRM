import '../database.dart';

class WarrantyCheckTable extends SupabaseTable<WarrantyCheckRow> {
  @override
  String get tableName => 'warranty_check';

  @override
  WarrantyCheckRow createRow(Map<String, dynamic> data) =>
      WarrantyCheckRow(data);
}

class WarrantyCheckRow extends SupabaseDataRow {
  WarrantyCheckRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => WarrantyCheckTable();

  int? get stockid => getField<int>('stockid');
  set stockid(int? value) => setField<int>('stockid', value);

  int? get productid => getField<int>('productid');
  set productid(int? value) => setField<int>('productid', value);

  int? get invoiceid => getField<int>('invoiceid');
  set invoiceid(int? value) => setField<int>('invoiceid', value);

  String? get productname => getField<String>('productname');
  set productname(String? value) => setField<String>('productname', value);

  String? get productconfig => getField<String>('productconfig');
  set productconfig(String? value) => setField<String>('productconfig', value);

  DateTime? get saledate => getField<DateTime>('saledate');
  set saledate(DateTime? value) => setField<DateTime>('saledate', value);

  bool? get issold => getField<bool>('issold');
  set issold(bool? value) => setField<bool>('issold', value);

  int? get businessid => getField<int>('businessid');
  set businessid(int? value) => setField<int>('businessid', value);
}
