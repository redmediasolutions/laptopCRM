import '/components/sidebar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'warranty_management_widget.dart' show WarrantyManagementWidget;
import 'package:flutter/material.dart';

class WarrantyManagementModel
    extends FlutterFlowModel<WarrantyManagementWidget> {
  ///  Local state fields for this page.

  String searchInput = 'Search';

  bool search = false;

  bool delete = false;

  int limit = 5;

  ///  State fields for stateful widgets in this page.

  // Model for sidebar component.
  late SidebarModel sidebarModel;
  // State field(s) for searchInput widget.
  FocusNode? searchInputFocusNode;
  TextEditingController? searchInputTextController;
  String? Function(BuildContext, String?)? searchInputTextControllerValidator;

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
