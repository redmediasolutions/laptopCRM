import '../database.dart';

class InvoicesTable extends SupabaseTable<InvoicesRow> {
  @override
  String get tableName => 'Invoices';

  @override
  InvoicesRow createRow(Map<String, dynamic> data) => InvoicesRow(data);
}

class InvoicesRow extends SupabaseDataRow {
  InvoicesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => InvoicesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get referenceField => getField<String>('reference');
  set referenceField(String? value) => setField<String>('reference', value);

  String? get invoicesNo => getField<String>('invoices_no');
  set invoicesNo(String? value) => setField<String>('invoices_no', value);

  int? get customerRef => getField<int>('customer_ref');
  set customerRef(int? value) => setField<int>('customer_ref', value);

  String? get customerCustombilling =>
      getField<String>('customer_custombilling');
  set customerCustombilling(String? value) =>
      setField<String>('customer_custombilling', value);

  String? get customerCustomDelivery =>
      getField<String>('customer_customDelivery');
  set customerCustomDelivery(String? value) =>
      setField<String>('customer_customDelivery', value);

  DateTime? get invoicesDate => getField<DateTime>('invoices_date');
  set invoicesDate(DateTime? value) =>
      setField<DateTime>('invoices_date', value);

  DateTime? get invoicesValidDate => getField<DateTime>('invoices_validDate');
  set invoicesValidDate(DateTime? value) =>
      setField<DateTime>('invoices_validDate', value);

  String? get invoicesPaymentTerms => getField<String>('invoices_paymentTerms');
  set invoicesPaymentTerms(String? value) =>
      setField<String>('invoices_paymentTerms', value);

  dynamic get invoicesItems => getField<dynamic>('invoices_items');
  set invoicesItems(dynamic value) =>
      setField<dynamic>('invoices_items', value);

  double? get invoicesDiscount => getField<double>('invoices_discount');
  set invoicesDiscount(double? value) =>
      setField<double>('invoices_discount', value);

  double? get invoicesSubtotal => getField<double>('invoices_subtotal');
  set invoicesSubtotal(double? value) =>
      setField<double>('invoices_subtotal', value);

  double? get invoicesTax => getField<double>('invoices_tax');
  set invoicesTax(double? value) => setField<double>('invoices_tax', value);

  double? get invoicesGrandTotal => getField<double>('invoices_grandTotal');
  set invoicesGrandTotal(double? value) =>
      setField<double>('invoices_grandTotal', value);

  String? get invoicesNotes => getField<String>('invoices_notes');
  set invoicesNotes(String? value) => setField<String>('invoices_notes', value);

  bool? get isDraft => getField<bool>('isDraft');
  set isDraft(bool? value) => setField<bool>('isDraft', value);

  int? get businessRef => getField<int>('business_ref');
  set businessRef(int? value) => setField<int>('business_ref', value);

  bool? get paymentStatus => getField<bool>('payment_status');
  set paymentStatus(bool? value) => setField<bool>('payment_status', value);

  double? get paymentAmount => getField<double>('payment_amount');
  set paymentAmount(double? value) => setField<double>('payment_amount', value);

  double? get invoiceGrandtotalroundoff =>
      getField<double>('invoice_grandtotalroundoff');
  set invoiceGrandtotalroundoff(double? value) =>
      setField<double>('invoice_grandtotalroundoff', value);

  bool? get isarchive => getField<bool>('isarchive');
  set isarchive(bool? value) => setField<bool>('isarchive', value);

  int? get paymentsReference => getField<int>('paymentsReference');
  set paymentsReference(int? value) =>
      setField<int>('paymentsReference', value);
}
