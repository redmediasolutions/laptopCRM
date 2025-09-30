import '/components/sidebar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'master_product_dashboard_widget.dart' show MasterProductDashboardWidget;
import 'package:flutter/material.dart';

class MasterProductDashboardModel
    extends FlutterFlowModel<MasterProductDashboardWidget> {
  ///  Local state fields for this page.

  String? type;

  bool isFilter = false;

  String searchinput = 'Search';

  bool search = false;

  ///  State fields for stateful widgets in this page.

  // Model for sidebar component.
  late SidebarModel sidebarModel;
  // State field(s) for searchInput widget.
  FocusNode? searchInputFocusNode;
  TextEditingController? searchInputTextController;
  String? Function(BuildContext, String?)? searchInputTextControllerValidator;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];

  @override
  void initState(BuildContext context) {
    sidebarModel = createModel(context, () => SidebarModel());
  }

  @override
  void dispose() {
    sidebarModel.dispose();
    searchInputFocusNode?.dispose();
    searchInputTextController?.dispose();
  }
}
