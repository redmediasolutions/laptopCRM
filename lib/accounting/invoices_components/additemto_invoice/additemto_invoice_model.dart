import '/flutter_flow/flutter_flow_util.dart';
import 'additemto_invoice_widget.dart' show AdditemtoInvoiceWidget;
import 'package:flutter/material.dart';

class AdditemtoInvoiceModel extends FlutterFlowModel<AdditemtoInvoiceWidget> {
  ///  Local state fields for this component.

  bool showResult = false;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for searchItem widget.
  FocusNode? searchItemFocusNode;
  TextEditingController? searchItemTextController;
  String? Function(BuildContext, String?)? searchItemTextControllerValidator;
  String? _searchItemTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Name is required';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    searchItemTextControllerValidator = _searchItemTextControllerValidator;
  }

  @override
  void dispose() {
    searchItemFocusNode?.dispose();
    searchItemTextController?.dispose();
  }
}
