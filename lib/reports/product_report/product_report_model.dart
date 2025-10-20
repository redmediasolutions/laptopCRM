import '/backend/schema/structs/index.dart';
import '/components/dashboard_items_widget.dart';
import '/components/date_selectorin_line_widget.dart';
import '/components/sidebar_widget.dart';
import '/components/title_bar_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'product_report_widget.dart' show ProductReportWidget;
import 'package:flutter/material.dart';

class ProductReportModel extends FlutterFlowModel<ProductReportWidget> {
  ///  Local state fields for this page.

  String searchInput = 'Search';

  bool search = false;

  bool delete = false;

  int limit = 5;

  DateTime? startDate;

  DateTime? endDate;

  bool? displayReport = false;

  bool custom = false;

  ///  State fields for stateful widgets in this page.

  // Model for TitleBar component.
  late TitleBarModel titleBarModel;
  // Model for sidebar component.
  late SidebarModel sidebarModel;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // Stores action output result for [Custom Action - getYesterdayDateTime] action in ChoiceChips widget.
  DateTime? yesterdaydate;
  // Stores action output result for [Custom Action - getStartofThisWeek] action in ChoiceChips widget.
  List<DateTime>? getstartofthisweek;
  // Stores action output result for [Custom Action - getStartofThisMonth] action in ChoiceChips widget.
  List<DateTime>? thisMonth;
  // Model for dateSelectorinLine component.
  late DateSelectorinLineModel dateSelectorinLineModel1;
  // Model for dateSelectorinLine component.
  late DateSelectorinLineModel dateSelectorinLineModel2;
  // Model for dashboardItems component.
  late DashboardItemsModel dashboardItemsModel1;
  // Model for dashboardItems component.
  late DashboardItemsModel dashboardItemsModel2;
  // Model for dashboardItems component.
  late DashboardItemsModel dashboardItemsModel3;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<ReportProductbySaleStruct>();

  @override
  void initState(BuildContext context) {
    titleBarModel = createModel(context, () => TitleBarModel());
    sidebarModel = createModel(context, () => SidebarModel());
    dateSelectorinLineModel1 =
        createModel(context, () => DateSelectorinLineModel());
    dateSelectorinLineModel2 =
        createModel(context, () => DateSelectorinLineModel());
    dashboardItemsModel1 = createModel(context, () => DashboardItemsModel());
    dashboardItemsModel2 = createModel(context, () => DashboardItemsModel());
    dashboardItemsModel3 = createModel(context, () => DashboardItemsModel());
  }

  @override
  void dispose() {
    titleBarModel.dispose();
    sidebarModel.dispose();
    dateSelectorinLineModel1.dispose();
    dateSelectorinLineModel2.dispose();
    dashboardItemsModel1.dispose();
    dashboardItemsModel2.dispose();
    dashboardItemsModel3.dispose();
    paginatedDataTableController.dispose();
  }
}
