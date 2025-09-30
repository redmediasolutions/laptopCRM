import '../database.dart';

class BrandTable extends SupabaseTable<BrandRow> {
  @override
  String get tableName => 'Brand';

  @override
  BrandRow createRow(Map<String, dynamic> data) => BrandRow(data);
}

class BrandRow extends SupabaseDataRow {
  BrandRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => BrandTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String? get referenceField => getField<String>('reference');
  set referenceField(String? value) => setField<String>('reference', value);

  int? get businessRef => getField<int>('business_ref');
  set businessRef(int? value) => setField<int>('business_ref', value);

  String? get brandLogo => getField<String>('brand_logo');
  set brandLogo(String? value) => setField<String>('brand_logo', value);

  String? get coverImage => getField<String>('cover_image');
  set coverImage(String? value) => setField<String>('cover_image', value);
}
