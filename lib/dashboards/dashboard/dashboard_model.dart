import '/components/side_bar2_widget.dart';
import '/components/title_bar_widget.dart';
import '/dashboards/dashboard_components/dashboard_items/dashboard_items_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dashboard_widget.dart' show DashboardWidget;
import 'package:flutter/material.dart';

class DashboardModel extends FlutterFlowModel<DashboardWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for TitleBar component.
  late TitleBarModel titleBarModel;
  // Model for sideBar2 component.
  late SideBar2Model sideBar2Model;
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
    sideBar2Model = createModel(context, () => SideBar2Model());
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
    sideBar2Model.dispose();
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
