import '/flutter_flow/flutter_flow_util.dart';
import 'per_item_cost_widget.dart' show PerItemCostWidget;
import 'package:flutter/material.dart';

class PerItemCostModel extends FlutterFlowModel<PerItemCostWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for peritemCost1 widget.
  FocusNode? peritemCost1FocusNode;
  TextEditingController? peritemCost1TextController;
  String? Function(BuildContext, String?)? peritemCost1TextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    peritemCost1FocusNode?.dispose();
    peritemCost1TextController?.dispose();
  }
}
