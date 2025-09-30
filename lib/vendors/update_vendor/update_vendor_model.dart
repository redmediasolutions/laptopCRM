import '/flutter_flow/flutter_flow_util.dart';
import 'update_vendor_widget.dart' show UpdateVendorWidget;
import 'package:flutter/material.dart';

class UpdateVendorModel extends FlutterFlowModel<UpdateVendorWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for vendorName widget.
  FocusNode? vendorNameFocusNode;
  TextEditingController? vendorNameTextController;
  String? Function(BuildContext, String?)? vendorNameTextControllerValidator;
  // State field(s) for vendorPhone widget.
  FocusNode? vendorPhoneFocusNode;
  TextEditingController? vendorPhoneTextController;
  String? Function(BuildContext, String?)? vendorPhoneTextControllerValidator;
  // State field(s) for vendorEmail widget.
  FocusNode? vendorEmailFocusNode;
  TextEditingController? vendorEmailTextController;
  String? Function(BuildContext, String?)? vendorEmailTextControllerValidator;
  // State field(s) for vendorAddress widget.
  FocusNode? vendorAddressFocusNode;
  TextEditingController? vendorAddressTextController;
  String? Function(BuildContext, String?)? vendorAddressTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    vendorNameFocusNode?.dispose();
    vendorNameTextController?.dispose();

    vendorPhoneFocusNode?.dispose();
    vendorPhoneTextController?.dispose();

    vendorEmailFocusNode?.dispose();
    vendorEmailTextController?.dispose();

    vendorAddressFocusNode?.dispose();
    vendorAddressTextController?.dispose();
  }
}
