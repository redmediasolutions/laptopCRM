import '/components/secondary_menu_item_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'secondary_sidebar_ivoice_widget.dart' show SecondarySidebarIvoiceWidget;
import 'package:flutter/material.dart';

class SecondarySidebarIvoiceModel
    extends FlutterFlowModel<SecondarySidebarIvoiceWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for secondaryMenuItem component.
  late SecondaryMenuItemModel secondaryMenuItemModel;

  @override
  void initState(BuildContext context) {
    secondaryMenuItemModel =
        createModel(context, () => SecondaryMenuItemModel());
  }

  @override
  void dispose() {
    secondaryMenuItemModel.dispose();
  }
}
