import '/backend/supabase/supabase.dart';
import '/components/sidebar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'dashboard_widget.dart' show DashboardWidget;
import 'package:flutter/material.dart';

class DashboardModel extends FlutterFlowModel<DashboardWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for sidebar component.
  late SidebarModel sidebarModel;
  Stream<List<AllInvoicesRow>>? textSupabaseStream1;
  Stream<List<AllInvoicesRow>>? textSupabaseStream2;
  Stream<List<Allstockv2Row>>? textSupabaseStream3;
  Stream<List<AllInvoicesRow>>? textSupabaseStream4;
  Stream<List<AllInvoicesRow>>? textSupabaseStream5;
  Stream<List<Allstockv2Row>>? textSupabaseStream6;

  @override
  void initState(BuildContext context) {
    sidebarModel = createModel(context, () => SidebarModel());
  }

  @override
  void dispose() {
    sidebarModel.dispose();
  }
}
