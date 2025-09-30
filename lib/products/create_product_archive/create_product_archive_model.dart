import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'create_product_archive_widget.dart' show CreateProductArchiveWidget;
import 'package:flutter/material.dart';

class CreateProductArchiveModel
    extends FlutterFlowModel<CreateProductArchiveWidget> {
  ///  Local state fields for this component.

  bool isProductAdded = false;

  DateTime? dateofPurchase;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // State field(s) for typeProduct widget.
  String? typeProductValue;
  FormFieldController<String>? typeProductValueController;
  // State field(s) for nameofProduct widget.
  FocusNode? nameofProductFocusNode1;
  TextEditingController? nameofProductTextController1;
  String? Function(BuildContext, String?)?
      nameofProductTextController1Validator;
  // State field(s) for nameofProduct widget.
  FocusNode? nameofProductFocusNode2;
  TextEditingController? nameofProductTextController2;
  String? Function(BuildContext, String?)?
      nameofProductTextController2Validator;
  // State field(s) for nameofProduct widget.
  FocusNode? nameofProductFocusNode3;
  TextEditingController? nameofProductTextController3;
  String? Function(BuildContext, String?)?
      nameofProductTextController3Validator;
  // Stores action output result for [Custom Action - getTypeID] action in Button widget.
  TypeRow? selectedType;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  ProductsRow? newProductAdded;
  // State field(s) for vendorID widget.
  String? vendorIDValue;
  FormFieldController<String>? vendorIDValueController;
  DateTime? datePicked;
  // State field(s) for productPrice widget.
  FocusNode? productPriceFocusNode1;
  TextEditingController? productPriceTextController1;
  String? Function(BuildContext, String?)? productPriceTextController1Validator;
  // Stores action output result for [Custom Action - getVendorsID] action in Button widget.
  VendorsRow? vendorReference;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  PurchasesRow? purchaseinfoadded;
  // State field(s) for salePrice widget.
  FocusNode? salePriceFocusNode;
  TextEditingController? salePriceTextController;
  String? Function(BuildContext, String?)? salePriceTextControllerValidator;
  // State field(s) for productPrice widget.
  FocusNode? productPriceFocusNode2;
  TextEditingController? productPriceTextController2;
  String? Function(BuildContext, String?)? productPriceTextController2Validator;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  StockRow? stockInfoAdded;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
    nameofProductFocusNode1?.dispose();
    nameofProductTextController1?.dispose();

    nameofProductFocusNode2?.dispose();
    nameofProductTextController2?.dispose();

    nameofProductFocusNode3?.dispose();
    nameofProductTextController3?.dispose();

    productPriceFocusNode1?.dispose();
    productPriceTextController1?.dispose();

    salePriceFocusNode?.dispose();
    salePriceTextController?.dispose();

    productPriceFocusNode2?.dispose();
    productPriceTextController2?.dispose();
  }
}
