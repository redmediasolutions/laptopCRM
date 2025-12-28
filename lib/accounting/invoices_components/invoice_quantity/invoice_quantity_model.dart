import '/flutter_flow/flutter_flow_util.dart';
import 'invoice_quantity_widget.dart' show InvoiceQuantityWidget;
import 'package:flutter/material.dart';

class InvoiceQuantityModel extends FlutterFlowModel<InvoiceQuantityWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for quantity widget.
  FocusNode? quantityFocusNode;
  TextEditingController? quantityTextController;
  String? Function(BuildContext, String?)? quantityTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    quantityFocusNode?.dispose();
    quantityTextController?.dispose();
  }
}
