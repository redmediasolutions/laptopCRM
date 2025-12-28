import '/components/secondary_menu_item_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'secondary_sidebar_model.dart';
export 'secondary_sidebar_model.dart';

class SecondarySidebarWidget extends StatefulWidget {
  const SecondarySidebarWidget({
    super.key,
    this.backgroundColor,
    this.iconColor,
    this.iconFillColor,
    required this.selectedIndex,
    required this.title,
  });

  final Color? backgroundColor;
  final Color? iconColor;
  final Color? iconFillColor;
  final int? selectedIndex;
  final String? title;

  @override
  State<SecondarySidebarWidget> createState() => _SecondarySidebarWidgetState();
}

class _SecondarySidebarWidgetState extends State<SecondarySidebarWidget> {
  late SecondarySidebarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SecondarySidebarModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.93,
      decoration: BoxDecoration(
        color: Color(0xFF1D1D1D),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            wrapWithModel(
              model: _model.secondaryMenuItemModel,
              updateCallback: () => safeSetState(() {}),
              child: SecondaryMenuItemWidget(
                title: widget.title!,
                description: 'View all Products',
              ),
            ),
          ].divide(SizedBox(height: 16.0)),
        ),
      ),
    );
  }
}
