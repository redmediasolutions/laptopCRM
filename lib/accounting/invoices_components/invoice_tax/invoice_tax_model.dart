import '/flutter_flow/flutter_flow_util.dart';
import 'invoice_tax_widget.dart' show InvoiceTaxWidget;
import 'package:flutter/material.dart';

class InvoiceTaxModel extends FlutterFlowModel<InvoiceTaxWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for data widget.
  FocusNode? dataFocusNode;
  TextEditingController? dataTextController;
  String? Function(BuildContext, String?)? dataTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    dataFocusNode?.dispose();
    dataTextController?.dispose();
  }
}
