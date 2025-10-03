import '/backend/supabase/supabase.dart';
import '/components/sidebar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/invoice/invoice_cost/invoice_cost_widget.dart';
import '/invoice/invoice_narration/invoice_narration_widget.dart';
import '/invoice/invoice_quantity/invoice_quantity_widget.dart';
import '/index.dart';
import 'create_invoice_widget.dart' show CreateInvoiceWidget;
import 'package:flutter/material.dart';

class CreateInvoiceModel extends FlutterFlowModel<CreateInvoiceWidget> {
  ///  Local state fields for this page.

  DateTime? invoiceDate;

  DateTime? validUpto;

  bool expandAll = false;

  int productLimit = 5;

  String invPrefix = 'INV-';

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for sidebar component.
  late SidebarModel sidebarModel;
  // State field(s) for selectCustomer widget.
  String? selectCustomerValue;
  FormFieldController<String>? selectCustomerValueController;
  // Stores action output result for [Custom Action - getCustomerdetailsbyReference] action in selectCustomer widget.
  CustomersRow? customerData;
  // State field(s) for invoiceNumber widget.
  FocusNode? invoiceNumberFocusNode1;
  TextEditingController? invoiceNumberTextController1;
  String? Function(BuildContext, String?)?
      invoiceNumberTextController1Validator;
  // State field(s) for invoiceNumber widget.
  FocusNode? invoiceNumberFocusNode2;
  TextEditingController? invoiceNumberTextController2;
  String? Function(BuildContext, String?)?
      invoiceNumberTextController2Validator;
  String? _invoiceNumberTextController2Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return '001 is required';
    }

    return null;
  }

  DateTime? datePicked;
  // Models for invoiceNarration dynamic component.
  late FlutterFlowDynamicModels<InvoiceNarrationModel> invoiceNarrationModels;
  // Models for invoiceQuantity dynamic component.
  late FlutterFlowDynamicModels<InvoiceQuantityModel> invoiceQuantityModels;
  // Models for invoiceCost dynamic component.
  late FlutterFlowDynamicModels<InvoiceCostModel> invoiceCostModels;
  // State field(s) for discount widget.
  FocusNode? discountFocusNode;
  TextEditingController? discountTextController;
  String? Function(BuildContext, String?)? discountTextControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  // Stores action output result for [Validate Form] action in save widget.
  bool? isFormValidated;
  // Stores action output result for [Custom Action - getCustomerdetailsbyReference] action in save widget.
  CustomersRow? selectedCustomerforEstimate;
  // Stores action output result for [Custom Action - convertInvoiceListToJson] action in save widget.
  String? invoicelistItems;
  // Stores action output result for [Backend Call - Insert Row] action in save widget.
  InvoicesRow? invoiceNew;

  @override
  void initState(BuildContext context) {
    sidebarModel = createModel(context, () => SidebarModel());
    invoiceNumberTextController2Validator =
        _invoiceNumberTextController2Validator;
    invoiceNarrationModels =
        FlutterFlowDynamicModels(() => InvoiceNarrationModel());
    invoiceQuantityModels =
        FlutterFlowDynamicModels(() => InvoiceQuantityModel());
    invoiceCostModels = FlutterFlowDynamicModels(() => InvoiceCostModel());
  }

  @override
  void dispose() {
    sidebarModel.dispose();
    invoiceNumberFocusNode1?.dispose();
    invoiceNumberTextController1?.dispose();

    invoiceNumberFocusNode2?.dispose();
    invoiceNumberTextController2?.dispose();

    invoiceNarrationModels.dispose();
    invoiceQuantityModels.dispose();
    invoiceCostModels.dispose();
    discountFocusNode?.dispose();
    discountTextController?.dispose();

    textFieldFocusNode?.dispose();
    textController4?.dispose();
  }
}
