import '/backend/supabase/supabase.dart';
import '/components/sidebar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
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

  // Model for sidebar component.
  late SidebarModel sidebarModel;
  Completer<List<BrandRow>>? requestCompleter;

  @override
  void initState(BuildContext context) {
    sidebarModel = createModel(context, () => SidebarModel());
  }

  @override
  void dispose() {
    sidebarModel.dispose();
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
