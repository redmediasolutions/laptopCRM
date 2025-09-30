import '/flutter_flow/flutter_flow_util.dart';
import 'update_purchases_widget.dart' show UpdatePurchasesWidget;
import 'package:flutter/material.dart';

class UpdatePurchasesModel extends FlutterFlowModel<UpdatePurchasesWidget> {
  ///  Local state fields for this component.

  bool isSelected = false;

  String? currentQuantity = '0';

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for productPrice widget.
  FocusNode? productPriceFocusNode;
  TextEditingController? productPriceTextController;
  String? Function(BuildContext, String?)? productPriceTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    productPriceFocusNode?.dispose();
    productPriceTextController?.dispose();
  }
}
