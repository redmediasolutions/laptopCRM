import '/backend/supabase/supabase.dart';
import '/components/side_bar2_widget.dart';
import '/components/title_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/vendors/vendors_components/secondary_sidebar_vendors/secondary_sidebar_vendors_widget.dart';
import '/index.dart';
import 'dart:async';
import 'vendors_dashboard_widget.dart' show VendorsDashboardWidget;
import 'package:flutter/material.dart';

class VendorsDashboardModel extends FlutterFlowModel<VendorsDashboardWidget> {
  ///  Local state fields for this page.

  bool search = false;

  String searchInput = 'search';

  ///  State fields for stateful widgets in this page.

  // Model for TitleBar component.
  late TitleBarModel titleBarModel;
  // Model for sideBar2 component.
  late SideBar2Model sideBar2Model;
  // Model for secondarySidebarVendors component.
  late SecondarySidebarVendorsModel secondarySidebarVendorsModel;
  // State field(s) for searchInput widget.
  FocusNode? searchInputFocusNode;
  TextEditingController? searchInputTextController;
  String? Function(BuildContext, String?)? searchInputTextControllerValidator;
  Completer<List<VendorsRow>>? requestCompleter;

  @override
  void initState(BuildContext context) {
    titleBarModel = createModel(context, () => TitleBarModel());
    sideBar2Model = createModel(context, () => SideBar2Model());
    secondarySidebarVendorsModel =
        createModel(context, () => SecondarySidebarVendorsModel());
  }

  @override
  void dispose() {
    titleBarModel.dispose();
    sideBar2Model.dispose();
    secondarySidebarVendorsModel.dispose();
    searchInputFocusNode?.dispose();
    searchInputTextController?.dispose();
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
