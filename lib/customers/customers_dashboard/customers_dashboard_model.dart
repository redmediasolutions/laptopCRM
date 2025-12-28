import '/components/side_bar2_widget.dart';
import '/components/title_bar_widget.dart';
import '/customers/customers_components/secondary_sidebar_customers/secondary_sidebar_customers_widget.dart';
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

  // Model for TitleBar component.
  late TitleBarModel titleBarModel;
  // Model for sideBar2 component.
  late SideBar2Model sideBar2Model;
  // Model for secondarySidebarCustomers component.
  late SecondarySidebarCustomersModel secondarySidebarCustomersModel;
  // State field(s) for searchInput widget.
  FocusNode? searchInputFocusNode;
  TextEditingController? searchInputTextController;
  String? Function(BuildContext, String?)? searchInputTextControllerValidator;

  @override
  void initState(BuildContext context) {
    titleBarModel = createModel(context, () => TitleBarModel());
    sideBar2Model = createModel(context, () => SideBar2Model());
    secondarySidebarCustomersModel =
        createModel(context, () => SecondarySidebarCustomersModel());
  }

  @override
  void dispose() {
    titleBarModel.dispose();
    sideBar2Model.dispose();
    secondarySidebarCustomersModel.dispose();
    searchInputFocusNode?.dispose();
    searchInputTextController?.dispose();
  }
}
