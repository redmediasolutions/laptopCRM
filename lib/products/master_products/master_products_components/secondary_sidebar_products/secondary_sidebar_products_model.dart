import '/components/secondary_menu_item_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'secondary_sidebar_products_widget.dart'
    show SecondarySidebarProductsWidget;
import 'package:flutter/material.dart';

class SecondarySidebarProductsModel
    extends FlutterFlowModel<SecondarySidebarProductsWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for secondaryMenuItem component.
  late SecondaryMenuItemModel secondaryMenuItemModel1;
  // Model for secondaryMenuItem component.
  late SecondaryMenuItemModel secondaryMenuItemModel2;
  // Model for secondaryMenuItem component.
  late SecondaryMenuItemModel secondaryMenuItemModel3;

  @override
  void initState(BuildContext context) {
    secondaryMenuItemModel1 =
        createModel(context, () => SecondaryMenuItemModel());
    secondaryMenuItemModel2 =
        createModel(context, () => SecondaryMenuItemModel());
    secondaryMenuItemModel3 =
        createModel(context, () => SecondaryMenuItemModel());
  }

  @override
  void dispose() {
    secondaryMenuItemModel1.dispose();
    secondaryMenuItemModel2.dispose();
    secondaryMenuItemModel3.dispose();
  }
}
