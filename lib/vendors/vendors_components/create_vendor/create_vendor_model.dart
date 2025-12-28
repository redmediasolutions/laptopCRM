import '/flutter_flow/flutter_flow_util.dart';
import 'create_vendor_widget.dart' show CreateVendorWidget;
import 'package:flutter/material.dart';

class CreateVendorModel extends FlutterFlowModel<CreateVendorWidget> {
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
  // State field(s) for vendorProduct widget.
  FocusNode? vendorProductFocusNode;
  TextEditingController? vendorProductTextController;
  String? Function(BuildContext, String?)? vendorProductTextControllerValidator;

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

    vendorProductFocusNode?.dispose();
    vendorProductTextController?.dispose();
  }
}
