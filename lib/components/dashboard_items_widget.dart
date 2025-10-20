import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dashboard_items_model.dart';
export 'dashboard_items_model.dart';

class DashboardItemsWidget extends StatefulWidget {
  const DashboardItemsWidget({
    super.key,
    this.icon,
    this.title,
    Color? titleColor,
    this.dataContent,
    this.dataColor,
    bool? isCurrency,
  })  : this.titleColor = titleColor ?? Colors.white,
        this.isCurrency = isCurrency ?? false;

  final Widget? icon;
  final String? title;
  final Color titleColor;
  final double? dataContent;
  final Color? dataColor;
  final bool isCurrency;

  @override
  State<DashboardItemsWidget> createState() => _DashboardItemsWidgetState();
}

class _DashboardItemsWidgetState extends State<DashboardItemsWidget> {
  late DashboardItemsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DashboardItemsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 10.0, 10.0),
      child: Container(
        height: 99.0,
        decoration: BoxDecoration(
          color: Color(0xFF181819),
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(
            color: FlutterFlowTheme.of(context).secondaryText,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(12.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  widget.icon!,
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                    child: Text(
                      valueOrDefault<String>(
                        widget.title,
                        'Item Title',
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            font: GoogleFonts.inter(
                              fontWeight: FontWeight.w500,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                            color: valueOrDefault<Color>(
                              widget.titleColor,
                              FlutterFlowTheme.of(context).alternate,
                            ),
                            fontSize: 16.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w500,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                child: Text(
                  valueOrDefault<String>(
                    widget.isCurrency
                        ? '₹ ${valueOrDefault<String>(
                            widget.dataContent?.toString(),
                            'NA',
                          )}'
                        : valueOrDefault<String>(
                            widget.dataContent?.toString(),
                            'NA',
                          ),
                    '46500',
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        font: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                        color: valueOrDefault<Color>(
                          widget.dataColor,
                          FlutterFlowTheme.of(context).primary,
                        ),
                        fontSize: 25.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                      ),
                ),
              ),
            ].divide(SizedBox(height: 10.0)),
          ),
        ),
      ),
    );
  }
}
