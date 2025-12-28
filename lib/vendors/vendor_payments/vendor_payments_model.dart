import '/components/side_bar2_widget.dart';
import '/components/title_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/vendors/vendors_components/secondary_sidebar_vendors/secondary_sidebar_vendors_widget.dart';
import 'vendor_payments_widget.dart' show VendorPaymentsWidget;
import 'package:flutter/material.dart';

class VendorPaymentsModel extends FlutterFlowModel<VendorPaymentsWidget> {
  ///  Local state fields for this page.

  String? type;

  bool isFilter = false;

  String? searchTerm;

  ///  State fields for stateful widgets in this page.

  // Model for TitleBar component.
  late TitleBarModel titleBarModel;
  // Model for sideBar2 component.
  late SideBar2Model sideBar2Model;
  // Model for secondarySidebarVendors component.
  late SecondarySidebarVendorsModel secondarySidebarVendorsModel;

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
  }
}
