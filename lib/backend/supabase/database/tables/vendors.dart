import '../database.dart';

class VendorsTable extends SupabaseTable<VendorsRow> {
  @override
  String get tableName => 'Vendors';

  @override
  VendorsRow createRow(Map<String, dynamic> data) => VendorsRow(data);
}

class VendorsRow extends SupabaseDataRow {
  VendorsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VendorsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get vendorName => getField<String>('vendor_name');
  set vendorName(String? value) => setField<String>('vendor_name', value);

  String? get vendorPhone => getField<String>('vendor_phone');
  set vendorPhone(String? value) => setField<String>('vendor_phone', value);

  String? get vendorEmail => getField<String>('vendor_email');
  set vendorEmail(String? value) => setField<String>('vendor_email', value);

  String? get vendorLogo => getField<String>('vendor_logo');
  set vendorLogo(String? value) => setField<String>('vendor_logo', value);

  String? get vendorAddress => getField<String>('vendor_address');
  set vendorAddress(String? value) => setField<String>('vendor_address', value);

  String? get referenceField => getField<String>('reference');
  set referenceField(String? value) => setField<String>('reference', value);

  int? get businessRef => getField<int>('business_ref');
  set businessRef(int? value) => setField<int>('business_ref', value);
}
