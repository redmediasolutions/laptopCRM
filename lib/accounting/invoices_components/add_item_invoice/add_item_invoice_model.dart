import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_item_invoice_widget.dart' show AddItemInvoiceWidget;
import 'package:flutter/material.dart';

class AddItemInvoiceModel extends FlutterFlowModel<AddItemInvoiceWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for itemCost widget.
  FocusNode? itemCostFocusNode;
  TextEditingController? itemCostTextController;
  String? Function(BuildContext, String?)? itemCostTextControllerValidator;
  // State field(s) for itemQuantity widget.
  FocusNode? itemQuantityFocusNode;
  TextEditingController? itemQuantityTextController;
  String? Function(BuildContext, String?)? itemQuantityTextControllerValidator;
  // State field(s) for itemcode widget.
  FocusNode? itemcodeFocusNode;
  TextEditingController? itemcodeTextController;
  String? Function(BuildContext, String?)? itemcodeTextControllerValidator;
  // State field(s) for itemHSN widget.
  FocusNode? itemHSNFocusNode1;
  TextEditingController? itemHSNTextController1;
  String? Function(BuildContext, String?)? itemHSNTextController1Validator;
  // State field(s) for itemHSN widget.
  FocusNode? itemHSNFocusNode2;
  TextEditingController? itemHSNTextController2;
  String? Function(BuildContext, String?)? itemHSNTextController2Validator;
  // State field(s) for costNarration widget.
  FocusNode? costNarrationFocusNode;
  TextEditingController? costNarrationTextController;
  String? Function(BuildContext, String?)? costNarrationTextControllerValidator;
  // State field(s) for itemDescription widget.
  FocusNode? itemDescriptionFocusNode;
  TextEditingController? itemDescriptionTextController;
  String? Function(BuildContext, String?)?
      itemDescriptionTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    itemCostFocusNode?.dispose();
    itemCostTextController?.dispose();

    itemQuantityFocusNode?.dispose();
    itemQuantityTextController?.dispose();

    itemcodeFocusNode?.dispose();
    itemcodeTextController?.dispose();

    itemHSNFocusNode1?.dispose();
    itemHSNTextController1?.dispose();

    itemHSNFocusNode2?.dispose();
    itemHSNTextController2?.dispose();

    costNarrationFocusNode?.dispose();
    costNarrationTextController?.dispose();

    itemDescriptionFocusNode?.dispose();
    itemDescriptionTextController?.dispose();
  }
}
