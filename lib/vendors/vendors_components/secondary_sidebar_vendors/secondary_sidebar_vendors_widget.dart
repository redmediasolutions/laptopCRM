import '/components/secondary_menu_item_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'secondary_sidebar_vendors_model.dart';
export 'secondary_sidebar_vendors_model.dart';

class SecondarySidebarVendorsWidget extends StatefulWidget {
  const SecondarySidebarVendorsWidget({
    super.key,
    required this.selectedIndex,
    required this.title,
    this.mainTitle,
  });

  final int? selectedIndex;
  final String? title;
  final String? mainTitle;

  @override
  State<SecondarySidebarVendorsWidget> createState() =>
      _SecondarySidebarVendorsWidgetState();
}

class _SecondarySidebarVendorsWidgetState
    extends State<SecondarySidebarVendorsWidget> {
  late SecondarySidebarVendorsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SecondarySidebarVendorsModel());

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
        border: Border.all(
          color: Colors.transparent,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 55.0,
            decoration: BoxDecoration(),
            child: Align(
              alignment: AlignmentDirectional(-1.0, 0.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                child: Text(
                  valueOrDefault<String>(
                    widget.mainTitle,
                    'mainTitle',
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        font: GoogleFonts.inter(
                          fontWeight: FontWeight.bold,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                        color: Colors.white,
                        fontSize: 24.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.bold,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                      ),
                ),
              ),
            ),
          ),
          Divider(
            height: 0.0,
            thickness: 1.0,
            color: FlutterFlowTheme.of(context).alternate,
          ),
          InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              context.pushNamed(VendorPaymentsWidget.routeName);
            },
            child: wrapWithModel(
              model: _model.secondaryMenuItemModel,
              updateCallback: () => safeSetState(() {}),
              child: SecondaryMenuItemWidget(
                title: widget.title!,
                description: 'View all Payments',
                positionIndex: 1,
                selectedIndex: widget.selectedIndex,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
