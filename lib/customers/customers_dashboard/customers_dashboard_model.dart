import '/components/sidebar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'customers_dashboard_widget.dart' show CustomersDashboardWidget;
import 'package:flutter/material.dart';

class CustomersDashboardModel
    extends FlutterFlowModel<CustomersDashboardWidget> {
  ///  Local state fields for this page.

  String? type;

  bool isFilter = false;

  String? searchTerm;

  String searchinput = 'Search';

  bool search = false;

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
