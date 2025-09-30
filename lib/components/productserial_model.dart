import '/flutter_flow/flutter_flow_util.dart';
import 'productserial_widget.dart' show ProductserialWidget;
import 'package:flutter/material.dart';

class ProductserialModel extends FlutterFlowModel<ProductserialWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for productSerial widget.
  FocusNode? productSerialFocusNode;
  TextEditingController? productSerialTextController;
  String? Function(BuildContext, String?)? productSerialTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    productSerialFocusNode?.dispose();
    productSerialTextController?.dispose();
  }
}
