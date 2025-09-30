import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'record_payment_widget.dart' show RecordPaymentWidget;
import 'package:flutter/material.dart';

class RecordPaymentModel extends FlutterFlowModel<RecordPaymentWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for vendorName widget.
  String? vendorNameValue;
  FormFieldController<String>? vendorNameValueController;
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
    vendorEmailFocusNode?.dispose();
    vendorEmailTextController?.dispose();

    vendorProductFocusNode?.dispose();
    vendorProductTextController?.dispose();
  }
}
