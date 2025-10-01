import '../database.dart';

class AllInvoicesTable extends SupabaseTable<AllInvoicesRow> {
  @override
  String get tableName => 'all_invoices';

  @override
  AllInvoicesRow createRow(Map<String, dynamic> data) => AllInvoicesRow(data);
}

class AllInvoicesRow extends SupabaseDataRow {
  AllInvoicesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AllInvoicesTable();

  int? get invoiceId => getField<int>('invoice_id');
  set invoiceId(int? value) => setField<int>('invoice_id', value);

  int? get customerId => getField<int>('customer_id');
  set customerId(int? value) => setField<int>('customer_id', value);

  int? get businessId => getField<int>('business_id');
  set businessId(int? value) => setField<int>('business_id', value);

  String? get invNumber => getField<String>('inv_number');
  set invNumber(String? value) => setField<String>('inv_number', value);

  DateTime? get date => getField<DateTime>('date');
  set date(DateTime? value) => setField<DateTime>('date', value);

  DateTime? get duedate => getField<DateTime>('duedate');
  set duedate(DateTime? value) => setField<DateTime>('duedate', value);

  String? get paymentTerms => getField<String>('payment_terms');
  set paymentTerms(String? value) => setField<String>('payment_terms', value);

  dynamic get invoiceitems => getField<dynamic>('invoiceitems');
  set invoiceitems(dynamic value) => setField<dynamic>('invoiceitems', value);

  double? get invoicesDiscount => getField<double>('invoices_discount');
  set invoicesDiscount(double? value) =>
      setField<double>('invoices_discount', value);

  double? get invoicesSubtotal => getField<double>('invoices_subtotal');
  set invoicesSubtotal(double? value) =>
      setField<double>('invoices_subtotal', value);

  double? get invoicesGrandTotal => getField<double>('invoices_grandTotal');
  set invoicesGrandTotal(double? value) =>
      setField<double>('invoices_grandTotal', value);

  String? get invoicesNotes => getField<String>('invoices_notes');
  set invoicesNotes(String? value) => setField<String>('invoices_notes', value);

  bool? get isDraft => getField<bool>('isDraft');
  set isDraft(bool? value) => setField<bool>('isDraft', value);

  double? get invoiceGrandtotalroundoff =>
      getField<double>('invoice_grandtotalroundoff');
  set invoiceGrandtotalroundoff(double? value) =>
      setField<double>('invoice_grandtotalroundoff', value);

  String? get customerName => getField<String>('customer_name');
  set customerName(String? value) => setField<String>('customer_name', value);

  String? get customerEmail => getField<String>('customer_email');
  set customerEmail(String? value) => setField<String>('customer_email', value);

  String? get customerPhone => getField<String>('customer_phone');
  set customerPhone(String? value) => setField<String>('customer_phone', value);

  String? get billingaddress => getField<String>('billingaddress');
  set billingaddress(String? value) =>
      setField<String>('billingaddress', value);

  String? get deliveryaddress => getField<String>('deliveryaddress');
  set deliveryaddress(String? value) =>
      setField<String>('deliveryaddress', value);

  double? get paymentAmount => getField<double>('payment_amount');
  set paymentAmount(double? value) => setField<double>('payment_amount', value);

  bool? get paymentStatus => getField<bool>('payment_status');
  set paymentStatus(bool? value) => setField<bool>('payment_status', value);

  bool? get isarchive => getField<bool>('isarchive');
  set isarchive(bool? value) => setField<bool>('isarchive', value);

  int? get paymentid => getField<int>('paymentid');
  set paymentid(int? value) => setField<int>('paymentid', value);

  bool? get paymentstatus => getField<bool>('paymentstatus');
  set paymentstatus(bool? value) => setField<bool>('paymentstatus', value);
}
