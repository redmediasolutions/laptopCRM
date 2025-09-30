import '../database.dart';

class TypeTable extends SupabaseTable<TypeRow> {
  @override
  String get tableName => 'Type';

  @override
  TypeRow createRow(Map<String, dynamic> data) => TypeRow(data);
}

class TypeRow extends SupabaseDataRow {
  TypeRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TypeTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get referenceField => getField<String>('reference');
  set referenceField(String? value) => setField<String>('reference', value);

  String? get typeName => getField<String>('type_name');
  set typeName(String? value) => setField<String>('type_name', value);

  int? get businessRef => getField<int>('business_ref');
  set businessRef(int? value) => setField<int>('business_ref', value);
}
