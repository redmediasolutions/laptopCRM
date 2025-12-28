import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'create_inventory_item_widget.dart' show CreateInventoryItemWidget;
import 'package:flutter/material.dart';

class CreateInventoryItemModel
    extends FlutterFlowModel<CreateInventoryItemWidget> {
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
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  PurchasesRow? purchaseinfoadded;

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

    productPriceFocusNode?.dispose();
    productPriceTextController?.dispose();
  }
}
