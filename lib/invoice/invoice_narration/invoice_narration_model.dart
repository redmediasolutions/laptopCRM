import '/flutter_flow/flutter_flow_util.dart';
import 'invoice_narration_widget.dart' show InvoiceNarrationWidget;
import 'package:flutter/material.dart';

class InvoiceNarrationModel extends FlutterFlowModel<InvoiceNarrationWidget> {
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
