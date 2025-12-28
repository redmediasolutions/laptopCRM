import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'update_item_widget.dart' show UpdateItemWidget;
import 'package:flutter/material.dart';

class UpdateItemModel extends FlutterFlowModel<UpdateItemWidget> {
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
  FocusNode? nameofProductFocusNode;
  TextEditingController? nameofProductTextController;
  String? Function(BuildContext, String?)? nameofProductTextControllerValidator;
  // State field(s) for productconfig widget.
  FocusNode? productconfigFocusNode;
  TextEditingController? productconfigTextController;
  String? Function(BuildContext, String?)? productconfigTextControllerValidator;
  // State field(s) for productCode widget.
  FocusNode? productCodeFocusNode;
  TextEditingController? productCodeTextController;
  String? Function(BuildContext, String?)? productCodeTextControllerValidator;
  // State field(s) for productDesc widget.
  FocusNode? productDescFocusNode;
  TextEditingController? productDescTextController;
  String? Function(BuildContext, String?)? productDescTextControllerValidator;
  // Stores action output result for [Custom Action - getTypeID] action in Button widget.
  TypeRow? typeRef;
  // Stores action output result for [Backend Call - Update Row(s)] action in Button widget.
  List<ProductsRow>? newProductAdded;
  // State field(s) for vendorID widget.
  String? vendorIDValue;
  FormFieldController<String>? vendorIDValueController;
  DateTime? datePicked;
  // State field(s) for productPrice widget.
  FocusNode? productPriceFocusNode;
  TextEditingController? productPriceTextController;
  String? Function(BuildContext, String?)? productPriceTextControllerValidator;
  // Stores action output result for [Custom Action - getVendorsID] action in Button widget.
  VendorsRow? vendorReference;
  // Stores action output result for [Backend Call - Update Row(s)] action in Button widget.
  List<PurchasesRow>? purchaseinfoupdated;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
    nameofProductFocusNode?.dispose();
    nameofProductTextController?.dispose();

    productconfigFocusNode?.dispose();
    productconfigTextController?.dispose();

    productCodeFocusNode?.dispose();
    productCodeTextController?.dispose();

    productDescFocusNode?.dispose();
    productDescTextController?.dispose();

    productPriceFocusNode?.dispose();
    productPriceTextController?.dispose();
  }
}
