import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'sidebarv2_menu_item_model.dart';
export 'sidebarv2_menu_item_model.dart';

class Sidebarv2MenuItemWidget extends StatefulWidget {
  const Sidebarv2MenuItemWidget({
    super.key,
    required this.icon,
    required this.backgroundColor,
    required this.positionindex,
    bool? showbackground,
    required this.selectedIndex,
    required this.menuName,
  }) : this.showbackground = showbackground ?? false;

  final Widget? icon;
  final Color? backgroundColor;
  final int? positionindex;
  final bool showbackground;
  final int? selectedIndex;
  final String? menuName;

  @override
  State<Sidebarv2MenuItemWidget> createState() =>
      _Sidebarv2MenuItemWidgetState();
}

class _Sidebarv2MenuItemWidgetState extends State<Sidebarv2MenuItemWidget> {
  late Sidebarv2MenuItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Sidebarv2MenuItemModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: AlignmentDirectional(0.0, 0.0),
              children: [
                AnimatedContainer(
                  duration: Duration(milliseconds: 100),
                  curve: Curves.easeInOut,
                  width: valueOrDefault<double>(
                    widget.positionindex == widget.selectedIndex ? 45.0 : 0.0,
                    45.0,
                  ),
                  height: 28.2,
                  decoration: BoxDecoration(
                    color: widget.backgroundColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0),
                      topLeft: Radius.circular(10.0),
                      topRight: Radius.circular(10.0),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: widget.icon!,
                ),
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
              child: Text(
                valueOrDefault<String>(
                  widget.menuName,
                  'NA',
                ),
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      font: GoogleFonts.inter(
                        fontWeight:
                            FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                      ),
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      fontSize: 13.5,
                      letterSpacing: 0.0,
                      fontWeight:
                          FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
