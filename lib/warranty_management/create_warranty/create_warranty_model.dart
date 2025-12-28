import '/components/side_bar2_widget.dart';
import '/components/sidebar_widget.dart';
import '/components/title_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'create_warranty_widget.dart' show CreateWarrantyWidget;
import 'package:flutter/material.dart';

class CreateWarrantyModel extends FlutterFlowModel<CreateWarrantyWidget> {
  ///  Local state fields for this page.

  String searchInput = 'Search';

  bool search = false;

  bool delete = false;

  int? stockId;

  DateTime? startDate;

  DateTime? endDate;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for TitleBar component.
  late TitleBarModel titleBarModel;
  // Model for sideBar2 component.
  late SideBar2Model sideBar2Model;
  // Model for sidebar component.
  late SidebarModel sidebarModel;
  DateTime? datePicked1;
  DateTime? datePicked2;

  @override
  void initState(BuildContext context) {
    titleBarModel = createModel(context, () => TitleBarModel());
    sideBar2Model = createModel(context, () => SideBar2Model());
    sidebarModel = createModel(context, () => SidebarModel());
  }

  @override
  void dispose() {
    titleBarModel.dispose();
    sideBar2Model.dispose();
    sidebarModel.dispose();
  }
}
