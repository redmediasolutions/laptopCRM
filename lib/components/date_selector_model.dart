import '/components/button_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'date_selector_widget.dart' show DateSelectorWidget;
import 'package:flutter/material.dart';

class DateSelectorModel extends FlutterFlowModel<DateSelectorWidget> {
  ///  Local state fields for this component.

  int? currentIndex;

  ///  State fields for stateful widgets in this component.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // Model for Button component.
  late ButtonModel buttonModel1;
  // Model for Button component.
  late ButtonModel buttonModel2;

  @override
  void initState(BuildContext context) {
    buttonModel1 = createModel(context, () => ButtonModel());
    buttonModel2 = createModel(context, () => ButtonModel());
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    buttonModel1.dispose();
    buttonModel2.dispose();
  }
}
