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

  DateTime? estimateDate;

  DateTime? validUpto;

  bool expandAll = false;

  int productLimit = 5;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for sidebar component.
  late SidebarModel sidebarModel;
  // State field(s) for selectCustomer widget.
  String? selectCustomerValue;
  FormFieldController<String>? selectCustomerValueController;
  // Stores action output result for [Custom Action - getCustomerdetailsbyReference] action in selectCustomer widget.
  CustomersRow? customerData;
  // State field(s) for customerPhone widget.
  FocusNode? customerPhoneFocusNode;
  TextEditingController? customerPhoneTextController;
  String? Function(BuildContext, String?)? customerPhoneTextControllerValidator;
  // State field(s) for customerEmail widget.
  FocusNode? customerEmailFocusNode;
  TextEditingController? customerEmailTextController;
  String? Function(BuildContext, String?)? customerEmailTextControllerValidator;
  // State field(s) for billingAddress widget.
  FocusNode? billingAddressFocusNode;
  TextEditingController? billingAddressTextController;
  String? Function(BuildContext, String?)?
      billingAddressTextControllerValidator;
  String? _billingAddressTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for deliveryAddress widget.
  FocusNode? deliveryAddressFocusNode;
  TextEditingController? deliveryAddressTextController;
  String? Function(BuildContext, String?)?
      deliveryAddressTextControllerValidator;
  String? _deliveryAddressTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for invoiceNumber widget.
  FocusNode? invoiceNumberFocusNode;
  TextEditingController? invoiceNumberTextController;
  String? Function(BuildContext, String?)? invoiceNumberTextControllerValidator;
  String? _invoiceNumberTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'INV-### is required';
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
  // State field(s) for AddProducts widget.
  String? addProductsValue;
  FormFieldController<String>? addProductsValueController;
  // Stores action output result for [Custom Action - getProductInfofromAllStock] action in AddProducts widget.
  Allstockv2Row? selectedStock;
  // State field(s) for discount widget.
  FocusNode? discountFocusNode;
  TextEditingController? discountTextController;
  String? Function(BuildContext, String?)? discountTextControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController7;
  String? Function(BuildContext, String?)? textController7Validator;
  // Stores action output result for [Validate Form] action in save widget.
  bool? isFormValidated;
  // Stores action output result for [Custom Action - getCustomerdetailsbyReference] action in save widget.
  CustomersRow? selectedCustomerforEstimate;
  // Stores action output result for [Custom Action - convertInvoiceListToJson] action in save widget.
  String? invoicelistItems;
  // Stores action output result for [Backend Call - Insert Row] action in save widget.
  InvoicesRow? invoiceNew;
  // Stores action output result for [Backend Call - Insert Row] action in save widget.
  PaymentsRow? newPayment;

  @override
  void initState(BuildContext context) {
    sidebarModel = createModel(context, () => SidebarModel());
    billingAddressTextControllerValidator =
        _billingAddressTextControllerValidator;
    deliveryAddressTextControllerValidator =
        _deliveryAddressTextControllerValidator;
    invoiceNumberTextControllerValidator =
        _invoiceNumberTextControllerValidator;
    invoiceNarrationModels =
        FlutterFlowDynamicModels(() => InvoiceNarrationModel());
    invoiceQuantityModels =
        FlutterFlowDynamicModels(() => InvoiceQuantityModel());
    invoiceCostModels = FlutterFlowDynamicModels(() => InvoiceCostModel());
  }

  @override
  void dispose() {
    sidebarModel.dispose();
    customerPhoneFocusNode?.dispose();
    customerPhoneTextController?.dispose();

    customerEmailFocusNode?.dispose();
    customerEmailTextController?.dispose();

    billingAddressFocusNode?.dispose();
    billingAddressTextController?.dispose();

    deliveryAddressFocusNode?.dispose();
    deliveryAddressTextController?.dispose();

    invoiceNumberFocusNode?.dispose();
    invoiceNumberTextController?.dispose();

    invoiceNarrationModels.dispose();
    invoiceQuantityModels.dispose();
    invoiceCostModels.dispose();
    discountFocusNode?.dispose();
    discountTextController?.dispose();

    textFieldFocusNode?.dispose();
    textController7?.dispose();
  }
}
