import '../database.dart';

class CustomersTable extends SupabaseTable<CustomersRow> {
  @override
  String get tableName => 'Customers';

  @override
  CustomersRow createRow(Map<String, dynamic> data) => CustomersRow(data);
}

class CustomersRow extends SupabaseDataRow {
  CustomersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CustomersTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get customerName => getField<String>('customer_name');
  set customerName(String? value) => setField<String>('customer_name', value);

  String? get customerEmail => getField<String>('customer_email');
  set customerEmail(String? value) => setField<String>('customer_email', value);

  String? get customerPhone => getField<String>('customer_phone');
  set customerPhone(String? value) => setField<String>('customer_phone', value);

  String? get customerAddress => getField<String>('customer_address');
  set customerAddress(String? value) =>
      setField<String>('customer_address', value);

  int? get businessRef => getField<int>('business_ref');
  set businessRef(int? value) => setField<int>('business_ref', value);

  String? get customerBusinessname => getField<String>('customer_businessname');
  set customerBusinessname(String? value) =>
      setField<String>('customer_businessname', value);

  String? get customerGST => getField<String>('customer_GST');
  set customerGST(String? value) => setField<String>('customer_GST', value);

  String? get customerShippingadress =>
      getField<String>('customer_shippingadress');
  set customerShippingadress(String? value) =>
      setField<String>('customer_shippingadress', value);

  String? get referenceField => getField<String>('reference');
  set referenceField(String? value) => setField<String>('reference', value);

  bool? get isArchive => getField<bool>('isArchive');
  set isArchive(bool? value) => setField<bool>('isArchive', value);
}
