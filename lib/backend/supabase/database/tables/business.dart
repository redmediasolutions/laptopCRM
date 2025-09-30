import '../database.dart';

class BusinessTable extends SupabaseTable<BusinessRow> {
  @override
  String get tableName => 'business';

  @override
  BusinessRow createRow(Map<String, dynamic> data) => BusinessRow(data);
}

class BusinessRow extends SupabaseDataRow {
  BusinessRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => BusinessTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get businessName => getField<String>('business_name');
  set businessName(String? value) => setField<String>('business_name', value);

  String? get ownerName => getField<String>('owner_name');
  set ownerName(String? value) => setField<String>('owner_name', value);

  String? get ownerPhone => getField<String>('owner_phone');
  set ownerPhone(String? value) => setField<String>('owner_phone', value);

  String? get ownerAdress => getField<String>('owner_adress');
  set ownerAdress(String? value) => setField<String>('owner_adress', value);

  String? get businessGST => getField<String>('business_GST');
  set businessGST(String? value) => setField<String>('business_GST', value);

  String? get businessState => getField<String>('business_state');
  set businessState(String? value) => setField<String>('business_state', value);

  String? get businessStateCode => getField<String>('business_stateCode');
  set businessStateCode(String? value) =>
      setField<String>('business_stateCode', value);

  String? get businessEmail => getField<String>('business_email');
  set businessEmail(String? value) => setField<String>('business_email', value);

  dynamic get productCondition => getField<dynamic>('product_condition');
  set productCondition(dynamic value) =>
      setField<dynamic>('product_condition', value);
}
