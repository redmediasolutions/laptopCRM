import '../database.dart';

class AllProductsTable extends SupabaseTable<AllProductsRow> {
  @override
  String get tableName => 'all_products';

  @override
  AllProductsRow createRow(Map<String, dynamic> data) => AllProductsRow(data);
}

class AllProductsRow extends SupabaseDataRow {
  AllProductsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AllProductsTable();

  String? get productName => getField<String>('product_name');
  set productName(String? value) => setField<String>('product_name', value);

  String? get productCode => getField<String>('product_code');
  set productCode(String? value) => setField<String>('product_code', value);

  String? get productConfig => getField<String>('product_config');
  set productConfig(String? value) => setField<String>('product_config', value);

  String? get productDescription => getField<String>('product_description');
  set productDescription(String? value) =>
      setField<String>('product_description', value);

  int? get typeRef => getField<int>('typeRef');
  set typeRef(int? value) => setField<int>('typeRef', value);

  String? get typeName => getField<String>('type_name');
  set typeName(String? value) => setField<String>('type_name', value);

  String? get businessName => getField<String>('business_name');
  set businessName(String? value) => setField<String>('business_name', value);

  int? get productid => getField<int>('productid');
  set productid(int? value) => setField<int>('productid', value);

  int? get typeId => getField<int>('type_id');
  set typeId(int? value) => setField<int>('type_id', value);

  int? get businessId => getField<int>('business_id');
  set businessId(int? value) => setField<int>('business_id', value);

  int? get stockId => getField<int>('stock_id');
  set stockId(int? value) => setField<int>('stock_id', value);

  String? get quantity => getField<String>('quantity');
  set quantity(String? value) => setField<String>('quantity', value);

  int? get vendorId => getField<int>('vendor_id');
  set vendorId(int? value) => setField<int>('vendor_id', value);

  String? get vendorName => getField<String>('vendor_name');
  set vendorName(String? value) => setField<String>('vendor_name', value);

  int? get purchasesId => getField<int>('purchases_id');
  set purchasesId(int? value) => setField<int>('purchases_id', value);

  String? get purchasePrice => getField<String>('purchase_price');
  set purchasePrice(String? value) => setField<String>('purchase_price', value);

  String? get purchaseNarration => getField<String>('purchase_narration');
  set purchaseNarration(String? value) =>
      setField<String>('purchase_narration', value);

  String? get productReference => getField<String>('product_reference');
  set productReference(String? value) =>
      setField<String>('product_reference', value);

  int? get purchasedQuantity => getField<int>('purchased_quantity');
  set purchasedQuantity(int? value) =>
      setField<int>('purchased_quantity', value);
}
