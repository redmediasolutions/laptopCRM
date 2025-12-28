import '/flutter_flow/flutter_flow_util.dart';
import 'invoice_serial_widget.dart' show InvoiceSerialWidget;
import 'package:flutter/material.dart';

class InvoiceSerialModel extends FlutterFlowModel<InvoiceSerialWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for serialNo widget.
  FocusNode? serialNoFocusNode;
  TextEditingController? serialNoTextController;
  String? Function(BuildContext, String?)? serialNoTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    serialNoFocusNode?.dispose();
    serialNoTextController?.dispose();
  }
}
