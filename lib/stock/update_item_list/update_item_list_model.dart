import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'update_item_list_widget.dart' show UpdateItemListWidget;
import 'package:flutter/material.dart';

class UpdateItemListModel extends FlutterFlowModel<UpdateItemListWidget> {
  ///  Local state fields for this component.

  bool isProductAdded = false;

  DateTime? dateofPurchase;

  bool disabledropdown = true;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  Stream<List<StockRow>>? containerSupabaseStream;
  // State field(s) for productname widget.
  String? productnameValue;
  FormFieldController<String>? productnameValueController;
  // Stores action output result for [Custom Action - getTypeID] action in productname widget.
  TypeRow? productlinked;
  // State field(s) for vendorInfo widget.
  FocusNode? vendorInfoFocusNode;
  TextEditingController? vendorInfoTextController;
  String? Function(BuildContext, String?)? vendorInfoTextControllerValidator;
  DateTime? datePicked;
  // State field(s) for cost widget.
  FocusNode? costFocusNode;
  TextEditingController? costTextController;
  String? Function(BuildContext, String?)? costTextControllerValidator;
  // State field(s) for sale widget.
  FocusNode? saleFocusNode;
  TextEditingController? saleTextController;
  String? Function(BuildContext, String?)? saleTextControllerValidator;
  // State field(s) for serialNo widget.
  FocusNode? serialNoFocusNode;
  TextEditingController? serialNoTextController;
  String? Function(BuildContext, String?)? serialNoTextControllerValidator;
  // State field(s) for Switch widget.
  bool? switchValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    vendorInfoFocusNode?.dispose();
    vendorInfoTextController?.dispose();

    costFocusNode?.dispose();
    costTextController?.dispose();

    saleFocusNode?.dispose();
    saleTextController?.dispose();

    serialNoFocusNode?.dispose();
    serialNoTextController?.dispose();
  }
}
