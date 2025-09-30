import '/components/sidebar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'vendor_payments_widget.dart' show VendorPaymentsWidget;
import 'package:flutter/material.dart';

class VendorPaymentsModel extends FlutterFlowModel<VendorPaymentsWidget> {
  ///  Local state fields for this page.

  String? type;

  bool isFilter = false;

  String? searchTerm;

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
