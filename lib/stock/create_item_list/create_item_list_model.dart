import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/components/product_condition_widget.dart';
import '/components/productserial_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'create_item_list_widget.dart' show CreateItemListWidget;
import 'package:flutter/material.dart';

class CreateItemListModel extends FlutterFlowModel<CreateItemListWidget> {
  ///  Local state fields for this component.

  bool isProductAdded = false;

  DateTime? dateofPurchase;

  String? validateData = ' ';

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  Stream<List<StockRow>>? containerSupabaseStream;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // State field(s) for typeProduct widget.
  String? typeProductValue;
  FormFieldController<String>? typeProductValueController;
  // Stores action output result for [Custom Action - getTypeID] action in typeProduct widget.
  TypeRow? productlinked;
  // State field(s) for vendorID widget.
  String? vendorIDValue;
  FormFieldController<String>? vendorIDValueController;
  DateTime? datePicked;
  // State field(s) for costPrice widget.
  FocusNode? costPriceFocusNode;
  TextEditingController? costPriceTextController;
  String? Function(BuildContext, String?)? costPriceTextControllerValidator;
  String? _costPriceTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Cost of Item is required';
    }

    return null;
  }

  // State field(s) for salePrice widget.
  FocusNode? salePriceFocusNode;
  TextEditingController? salePriceTextController;
  String? Function(BuildContext, String?)? salePriceTextControllerValidator;
  String? _salePriceTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Sale Price is Required';
    }

    return null;
  }

  // Stores action output result for [Validate Form] action in Button widget.
  bool? check1;
  // Models for productserial dynamic component.
  late FlutterFlowDynamicModels<ProductserialModel> productserialModels;
  // Models for productCondition dynamic component.
  late FlutterFlowDynamicModels<ProductConditionModel> productConditionModels;
  // Stores action output result for [Custom Action - validateSerial] action in Button widget.
  List<AddProductserialStruct>? actionoutput;
  // Stores action output result for [Custom Action - getProductIDReference] action in Button widget.
  ProductsRow? selectedProduct;
  // Stores action output result for [Custom Action - getVendorIDReference] action in Button widget.
  VendorsRow? selectedVendorforAdding;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  PurchasesRow? addPurchaseRef;

  @override
  void initState(BuildContext context) {
    costPriceTextControllerValidator = _costPriceTextControllerValidator;
    salePriceTextControllerValidator = _salePriceTextControllerValidator;
    productserialModels = FlutterFlowDynamicModels(() => ProductserialModel());
    productConditionModels =
        FlutterFlowDynamicModels(() => ProductConditionModel());
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    costPriceFocusNode?.dispose();
    costPriceTextController?.dispose();

    salePriceFocusNode?.dispose();
    salePriceTextController?.dispose();

    productserialModels.dispose();
    productConditionModels.dispose();
  }
}
