import '/backend/supabase/supabase.dart';
import '/components/side_bar2_widget.dart';
import '/components/title_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/products/master_products/master_products_components/secondary_sidebar_products/secondary_sidebar_products_widget.dart';
import 'brandsdashboard_widget.dart' show BrandsdashboardWidget;
import 'dart:async';
import 'package:flutter/material.dart';

class BrandsdashboardModel extends FlutterFlowModel<BrandsdashboardWidget> {
  ///  Local state fields for this page.

  String? type;

  bool isFilter = false;

  String searchinput = 'Search';

  bool search = false;

  ///  State fields for stateful widgets in this page.

  // Model for TitleBar component.
  late TitleBarModel titleBarModel;
  // Model for sideBar2 component.
  late SideBar2Model sideBar2Model;
  // Model for secondarySidebarProducts component.
  late SecondarySidebarProductsModel secondarySidebarProductsModel;
  Completer<List<BrandRow>>? requestCompleter;

  @override
  void initState(BuildContext context) {
    titleBarModel = createModel(context, () => TitleBarModel());
    sideBar2Model = createModel(context, () => SideBar2Model());
    secondarySidebarProductsModel =
        createModel(context, () => SecondarySidebarProductsModel());
  }

  @override
  void dispose() {
    titleBarModel.dispose();
    sideBar2Model.dispose();
    secondarySidebarProductsModel.dispose();
  }

  /// Additional helper methods.
  Future waitForRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
