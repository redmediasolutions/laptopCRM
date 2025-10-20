import '/components/dashboard_items_widget.dart';
import '/components/sidebar_widget.dart';
import '/components/title_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dashboard_widget.dart' show DashboardWidget;
import 'package:flutter/material.dart';

class DashboardModel extends FlutterFlowModel<DashboardWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for TitleBar component.
  late TitleBarModel titleBarModel;
  // Model for sidebar component.
  late SidebarModel sidebarModel;
  // Model for dashboardItems component.
  late DashboardItemsModel dashboardItemsModel1;
  // Model for dashboardItems component.
  late DashboardItemsModel dashboardItemsModel2;
  // Model for yesterdaysSale.
  late DashboardItemsModel yesterdaysSaleModel;
  // Model for dashboardItems component.
  late DashboardItemsModel dashboardItemsModel3;
  // Model for dashboardItems component.
  late DashboardItemsModel dashboardItemsModel4;
  // Model for dashboardItems component.
  late DashboardItemsModel dashboardItemsModel5;
  // Model for todaysSale.
  late DashboardItemsModel todaysSaleModel;
  // Model for dashboardItems component.
  late DashboardItemsModel dashboardItemsModel6;

  @override
  void initState(BuildContext context) {
    titleBarModel = createModel(context, () => TitleBarModel());
    sidebarModel = createModel(context, () => SidebarModel());
    dashboardItemsModel1 = createModel(context, () => DashboardItemsModel());
    dashboardItemsModel2 = createModel(context, () => DashboardItemsModel());
    yesterdaysSaleModel = createModel(context, () => DashboardItemsModel());
    dashboardItemsModel3 = createModel(context, () => DashboardItemsModel());
    dashboardItemsModel4 = createModel(context, () => DashboardItemsModel());
    dashboardItemsModel5 = createModel(context, () => DashboardItemsModel());
    todaysSaleModel = createModel(context, () => DashboardItemsModel());
    dashboardItemsModel6 = createModel(context, () => DashboardItemsModel());
  }

  @override
  void dispose() {
    titleBarModel.dispose();
    sidebarModel.dispose();
    dashboardItemsModel1.dispose();
    dashboardItemsModel2.dispose();
    yesterdaysSaleModel.dispose();
    dashboardItemsModel3.dispose();
    dashboardItemsModel4.dispose();
    dashboardItemsModel5.dispose();
    todaysSaleModel.dispose();
    dashboardItemsModel6.dispose();
  }
}
