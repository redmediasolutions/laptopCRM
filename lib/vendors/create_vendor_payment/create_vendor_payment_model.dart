import '/backend/supabase/supabase.dart';
import '/components/sidebar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/vendors/per_item_cost/per_item_cost_widget.dart';
import '/vendors/vendor_item_quantity/vendor_item_quantity_widget.dart';
import 'create_vendor_payment_widget.dart' show CreateVendorPaymentWidget;
import 'package:flutter/material.dart';

class CreateVendorPaymentModel
    extends FlutterFlowModel<CreateVendorPaymentWidget> {
  ///  Local state fields for this page.

  DateTime? estimateDate;

  DateTime? validUpto;

  bool expandAll = false;

  int? vendorId;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for sidebar component.
  late SidebarModel sidebarModel;
  // State field(s) for selectVendors widget.
  String? selectVendorsValue;
  FormFieldController<String>? selectVendorsValueController;
  // Stores action output result for [Custom Action - getVendorIDReference] action in selectVendors widget.
  VendorsRow? selectedVendors;
  // State field(s) for vendorPhone widget.
  FocusNode? vendorPhoneFocusNode;
  TextEditingController? vendorPhoneTextController;
  String? Function(BuildContext, String?)? vendorPhoneTextControllerValidator;
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

  // State field(s) for invoiceNumber widget.
  FocusNode? invoiceNumberFocusNode;
  TextEditingController? invoiceNumberTextController;
  String? Function(BuildContext, String?)? invoiceNumberTextControllerValidator;
  String? _invoiceNumberTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'EST-001 is required';
    }

    return null;
  }

  DateTime? datePicked;
  // Models for vendorItemQuantity dynamic component.
  late FlutterFlowDynamicModels<VendorItemQuantityModel>
      vendorItemQuantityModels;
  // Models for perItemCost dynamic component.
  late FlutterFlowDynamicModels<PerItemCostModel> perItemCostModels;
  // State field(s) for AddProducts widget.
  String? addProductsValue;
  FormFieldController<String>? addProductsValueController;
  // Stores action output result for [Custom Action - getALLProductIDReference] action in AddProducts widget.
  AllProductsRow? selectedProductsforVendors;
  // State field(s) for discount widget.
  FocusNode? discountFocusNode;
  TextEditingController? discountTextController;
  String? Function(BuildContext, String?)? discountTextControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController6;
  String? Function(BuildContext, String?)? textController6Validator;
  // Stores action output result for [Custom Action - convertPaymentListToJsonCopy] action in save widget.
  String? vendorpaymentsItems;

  @override
  void initState(BuildContext context) {
    sidebarModel = createModel(context, () => SidebarModel());
    billingAddressTextControllerValidator =
        _billingAddressTextControllerValidator;
    invoiceNumberTextControllerValidator =
        _invoiceNumberTextControllerValidator;
    vendorItemQuantityModels =
        FlutterFlowDynamicModels(() => VendorItemQuantityModel());
    perItemCostModels = FlutterFlowDynamicModels(() => PerItemCostModel());
  }

  @override
  void dispose() {
    sidebarModel.dispose();
    vendorPhoneFocusNode?.dispose();
    vendorPhoneTextController?.dispose();

    customerEmailFocusNode?.dispose();
    customerEmailTextController?.dispose();

    billingAddressFocusNode?.dispose();
    billingAddressTextController?.dispose();

    invoiceNumberFocusNode?.dispose();
    invoiceNumberTextController?.dispose();

    vendorItemQuantityModels.dispose();
    perItemCostModels.dispose();
    discountFocusNode?.dispose();
    discountTextController?.dispose();

    textFieldFocusNode?.dispose();
    textController6?.dispose();
  }
}
