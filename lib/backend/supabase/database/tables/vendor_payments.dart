import '../database.dart';

class VendorPaymentsTable extends SupabaseTable<VendorPaymentsRow> {
  @override
  String get tableName => 'Vendor_Payments';

  @override
  VendorPaymentsRow createRow(Map<String, dynamic> data) =>
      VendorPaymentsRow(data);
}

class VendorPaymentsRow extends SupabaseDataRow {
  VendorPaymentsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VendorPaymentsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get referenceField => getField<String>('reference');
  set referenceField(String? value) => setField<String>('reference', value);

  int? get vendorReference => getField<int>('vendor_reference');
  set vendorReference(int? value) => setField<int>('vendor_reference', value);

  String? get paymentNumber => getField<String>('payment_number');
  set paymentNumber(String? value) => setField<String>('payment_number', value);

  DateTime? get paymentDate => getField<DateTime>('payment_date');
  set paymentDate(DateTime? value) => setField<DateTime>('payment_date', value);

  dynamic get paymentItems => getField<dynamic>('payment_items');
  set paymentItems(dynamic value) => setField<dynamic>('payment_items', value);

  double? get paymentDiscount => getField<double>('payment_discount');
  set paymentDiscount(double? value) =>
      setField<double>('payment_discount', value);

  double? get paymentSubtotal => getField<double>('payment_subtotal');
  set paymentSubtotal(double? value) =>
      setField<double>('payment_subtotal', value);

  double? get paymentGrandtotal => getField<double>('payment_grandtotal');
  set paymentGrandtotal(double? value) =>
      setField<double>('payment_grandtotal', value);

  double? get paymentNotes => getField<double>('payment_notes');
  set paymentNotes(double? value) => setField<double>('payment_notes', value);
}
