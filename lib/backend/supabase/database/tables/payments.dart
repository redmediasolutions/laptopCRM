import '../database.dart';

class PaymentsTable extends SupabaseTable<PaymentsRow> {
  @override
  String get tableName => 'Payments';

  @override
  PaymentsRow createRow(Map<String, dynamic> data) => PaymentsRow(data);
}

class PaymentsRow extends SupabaseDataRow {
  PaymentsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PaymentsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get referenceField => getField<String>('reference');
  set referenceField(String? value) => setField<String>('reference', value);

  String? get paymentMode => getField<String>('payment_mode');
  set paymentMode(String? value) => setField<String>('payment_mode', value);

  String? get narration => getField<String>('narration');
  set narration(String? value) => setField<String>('narration', value);

  double? get paymentAmount => getField<double>('payment_amount');
  set paymentAmount(double? value) => setField<double>('payment_amount', value);

  bool? get paymentStatus => getField<bool>('payment_status');
  set paymentStatus(bool? value) => setField<bool>('payment_status', value);
}
