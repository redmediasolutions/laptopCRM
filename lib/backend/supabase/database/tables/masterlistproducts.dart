import '../database.dart';

class MasterlistproductsTable extends SupabaseTable<MasterlistproductsRow> {
  @override
  String get tableName => 'masterlistproducts';

  @override
  MasterlistproductsRow createRow(Map<String, dynamic> data) =>
      MasterlistproductsRow(data);
}

class MasterlistproductsRow extends SupabaseDataRow {
  MasterlistproductsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MasterlistproductsTable();

  int? get productid => getField<int>('productid');
  set productid(int? value) => setField<int>('productid', value);

  int? get typeid => getField<int>('typeid');
  set typeid(int? value) => setField<int>('typeid', value);

  int? get businessid => getField<int>('businessid');
  set businessid(int? value) => setField<int>('businessid', value);

  int? get brandid => getField<int>('brandid');
  set brandid(int? value) => setField<int>('brandid', value);

  String? get productName => getField<String>('product_name');
  set productName(String? value) => setField<String>('product_name', value);

  String? get productDescription => getField<String>('product_description');
  set productDescription(String? value) =>
      setField<String>('product_description', value);

  String? get productConfig => getField<String>('product_config');
  set productConfig(String? value) => setField<String>('product_config', value);

  String? get productreference => getField<String>('productreference');
  set productreference(String? value) =>
      setField<String>('productreference', value);

  String? get typeName => getField<String>('type_name');
  set typeName(String? value) => setField<String>('type_name', value);

  int? get stockRef => getField<int>('stock_ref');
  set stockRef(int? value) => setField<int>('stock_ref', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get typereference => getField<String>('typereference');
  set typereference(String? value) => setField<String>('typereference', value);

  String? get brandreference => getField<String>('brandreference');
  set brandreference(String? value) =>
      setField<String>('brandreference', value);

  String? get productcode => getField<String>('productcode');
  set productcode(String? value) => setField<String>('productcode', value);
}
