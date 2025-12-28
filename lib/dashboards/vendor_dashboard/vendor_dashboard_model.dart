import '/components/side_bar2_widget.dart';
import '/components/sidebar_widget.dart';
import '/components/title_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'vendor_dashboard_widget.dart' show VendorDashboardWidget;
import 'package:flutter/material.dart';

class VendorDashboardModel extends FlutterFlowModel<VendorDashboardWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for TitleBar component.
  late TitleBarModel titleBarModel;
  // Model for sideBar2 component.
  late SideBar2Model sideBar2Model;
  // Model for sidebar component.
  late SidebarModel sidebarModel;

  @override
  void initState(BuildContext context) {
    titleBarModel = createModel(context, () => TitleBarModel());
    sideBar2Model = createModel(context, () => SideBar2Model());
    sidebarModel = createModel(context, () => SidebarModel());
  }

  @override
  void dispose() {
    titleBarModel.dispose();
    sideBar2Model.dispose();
    sidebarModel.dispose();
  }
}
