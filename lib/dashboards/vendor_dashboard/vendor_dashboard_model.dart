import '/components/sidebar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'vendor_dashboard_widget.dart' show VendorDashboardWidget;
import 'package:flutter/material.dart';

class VendorDashboardModel extends FlutterFlowModel<VendorDashboardWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for sidebar component.
  late SidebarModel sidebarModel;

  @override
  void initState(BuildContext context) {
    sidebarModel = createModel(context, () => SidebarModel());
  }

  @override
  void dispose() {
    sidebarModel.dispose();
  }
}
