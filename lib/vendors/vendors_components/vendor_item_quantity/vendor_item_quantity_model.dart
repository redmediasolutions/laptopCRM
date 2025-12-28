import '/flutter_flow/flutter_flow_util.dart';
import 'vendor_item_quantity_widget.dart' show VendorItemQuantityWidget;
import 'package:flutter/material.dart';

class VendorItemQuantityModel
    extends FlutterFlowModel<VendorItemQuantityWidget> {
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
