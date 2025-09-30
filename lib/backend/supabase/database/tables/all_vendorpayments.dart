import '../database.dart';

class AllVendorpaymentsTable extends SupabaseTable<AllVendorpaymentsRow> {
  @override
  String get tableName => 'all_vendorpayments';

  @override
  AllVendorpaymentsRow createRow(Map<String, dynamic> data) =>
      AllVendorpaymentsRow(data);
}

class AllVendorpaymentsRow extends SupabaseDataRow {
  AllVendorpaymentsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AllVendorpaymentsTable();

  int? get vendorpaymentsid => getField<int>('vendorpaymentsid');
  set vendorpaymentsid(int? value) => setField<int>('vendorpaymentsid', value);

  int? get vendorid => getField<int>('vendorid');
  set vendorid(int? value) => setField<int>('vendorid', value);

  String? get referenceField => getField<String>('reference');
  set referenceField(String? value) => setField<String>('reference', value);

  double? get paymentSubtotal => getField<double>('payment_subtotal');
  set paymentSubtotal(double? value) =>
      setField<double>('payment_subtotal', value);

  dynamic get paymentItems => getField<dynamic>('payment_items');
  set paymentItems(dynamic value) => setField<dynamic>('payment_items', value);

  double? get paymentGrandtotal => getField<double>('payment_grandtotal');
  set paymentGrandtotal(double? value) =>
      setField<double>('payment_grandtotal', value);
}
