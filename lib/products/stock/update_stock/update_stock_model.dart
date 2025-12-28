import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'update_stock_widget.dart' show UpdateStockWidget;
import 'package:flutter/material.dart';

class UpdateStockModel extends FlutterFlowModel<UpdateStockWidget> {
  ///  Local state fields for this component.

  bool isSelected = false;

  String? currentQuantity = '0';

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Stores action output result for [Custom Action - getProductID] action in DropDown widget.
  ProductsRow? productlinked;
  // Stores action output result for [Custom Action - getStockID] action in DropDown widget.
  StockRow? selectedStock;
  // State field(s) for CountController widget.
  int? countControllerValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
