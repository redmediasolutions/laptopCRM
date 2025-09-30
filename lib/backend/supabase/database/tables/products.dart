import '../database.dart';

class ProductsTable extends SupabaseTable<ProductsRow> {
  @override
  String get tableName => 'Products';

  @override
  ProductsRow createRow(Map<String, dynamic> data) => ProductsRow(data);
}

class ProductsRow extends SupabaseDataRow {
  ProductsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProductsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get referenceField => getField<String>('reference');
  set referenceField(String? value) => setField<String>('reference', value);

  String? get productName => getField<String>('product_name');
  set productName(String? value) => setField<String>('product_name', value);

  String? get productCode => getField<String>('product_code');
  set productCode(String? value) => setField<String>('product_code', value);

  String? get productConfig => getField<String>('product_config');
  set productConfig(String? value) => setField<String>('product_config', value);

  String? get productDescription => getField<String>('product_description');
  set productDescription(String? value) =>
      setField<String>('product_description', value);

  int? get businessReference => getField<int>('business_reference');
  set businessReference(int? value) =>
      setField<int>('business_reference', value);

  int? get typeRef => getField<int>('typeRef');
  set typeRef(int? value) => setField<int>('typeRef', value);

  int? get vendorReference => getField<int>('vendor_reference');
  set vendorReference(int? value) => setField<int>('vendor_reference', value);

  String? get productHSN => getField<String>('productHSN');
  set productHSN(String? value) => setField<String>('productHSN', value);

  int? get purchasesRef => getField<int>('purchases_ref');
  set purchasesRef(int? value) => setField<int>('purchases_ref', value);

  int? get stockRef => getField<int>('stock_ref');
  set stockRef(int? value) => setField<int>('stock_ref', value);

  int? get purchasedQuantity => getField<int>('purchased_quantity');
  set purchasedQuantity(int? value) =>
      setField<int>('purchased_quantity', value);

  int? get brandname => getField<int>('brandname');
  set brandname(int? value) => setField<int>('brandname', value);

  String? get image => getField<String>('image');
  set image(String? value) => setField<String>('image', value);

  String? get brandImage => getField<String>('brand_image');
  set brandImage(String? value) => setField<String>('brand_image', value);
}
