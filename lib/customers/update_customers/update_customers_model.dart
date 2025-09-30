import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'update_customers_widget.dart' show UpdateCustomersWidget;
import 'package:flutter/material.dart';

class UpdateCustomersModel extends FlutterFlowModel<UpdateCustomersWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for fullName widget.
  FocusNode? fullNameFocusNode;
  TextEditingController? fullNameTextController;
  String? Function(BuildContext, String?)? fullNameTextControllerValidator;
  String? _fullNameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Name is required';
    }

    return null;
  }

  // State field(s) for phone widget.
  FocusNode? phoneFocusNode;
  TextEditingController? phoneTextController;
  String? Function(BuildContext, String?)? phoneTextControllerValidator;
  String? _phoneTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Phone is required';
    }

    return null;
  }

  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  String? _emailTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Email is required';
    }

    return null;
  }

  // State field(s) for businessName widget.
  FocusNode? businessNameFocusNode;
  TextEditingController? businessNameTextController;
  String? Function(BuildContext, String?)? businessNameTextControllerValidator;
  // State field(s) for businessGST widget.
  FocusNode? businessGSTFocusNode;
  TextEditingController? businessGSTTextController;
  String? Function(BuildContext, String?)? businessGSTTextControllerValidator;
  // State field(s) for businessAddress widget.
  FocusNode? businessAddressFocusNode;
  TextEditingController? businessAddressTextController;
  String? Function(BuildContext, String?)?
      businessAddressTextControllerValidator;
  // Stores action output result for [Validate Form] action in Button widget.
  bool? validateCustomer;
  // Stores action output result for [Backend Call - Update Row(s)] action in Button widget.
  List<CustomersRow>? newCustomerAdded;

  @override
  void initState(BuildContext context) {
    fullNameTextControllerValidator = _fullNameTextControllerValidator;
    phoneTextControllerValidator = _phoneTextControllerValidator;
    emailTextControllerValidator = _emailTextControllerValidator;
  }

  @override
  void dispose() {
    fullNameFocusNode?.dispose();
    fullNameTextController?.dispose();

    phoneFocusNode?.dispose();
    phoneTextController?.dispose();

    emailFocusNode?.dispose();
    emailTextController?.dispose();

    businessNameFocusNode?.dispose();
    businessNameTextController?.dispose();

    businessGSTFocusNode?.dispose();
    businessGSTTextController?.dispose();

    businessAddressFocusNode?.dispose();
    businessAddressTextController?.dispose();
  }
}
