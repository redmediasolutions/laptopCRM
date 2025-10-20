import '/components/sidebar_widget.dart';
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
  // Model for sidebar component.
  late SidebarModel sidebarModel;
  DateTime? datePicked1;
  DateTime? datePicked2;

  @override
  void initState(BuildContext context) {
    sidebarModel = createModel(context, () => SidebarModel());
  }

  @override
  void dispose() {
    sidebarModel.dispose();
  }
}
