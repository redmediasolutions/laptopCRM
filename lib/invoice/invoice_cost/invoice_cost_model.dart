import '/flutter_flow/flutter_flow_util.dart';
import 'invoice_cost_widget.dart' show InvoiceCostWidget;
import 'package:flutter/material.dart';

class InvoiceCostModel extends FlutterFlowModel<InvoiceCostWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for cost widget.
  FocusNode? costFocusNode;
  TextEditingController? costTextController;
  String? Function(BuildContext, String?)? costTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    costFocusNode?.dispose();
    costTextController?.dispose();
  }
}
