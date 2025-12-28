import '/components/dropdown03_account_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'title_bar_model.dart';
export 'title_bar_model.dart';

class TitleBarWidget extends StatefulWidget {
  const TitleBarWidget({
    super.key,
    this.backgroundcolor,
    Color? textColor,
  }) : this.textColor = textColor ?? Colors.white;

  final Color? backgroundcolor;
  final Color textColor;

  @override
  State<TitleBarWidget> createState() => _TitleBarWidgetState();
}

class _TitleBarWidgetState extends State<TitleBarWidget> {
  late TitleBarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TitleBarModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      elevation: 0.0,
      child: Container(
        width: MediaQuery.sizeOf(context).width * 1.0,
        height: 44.6,
        decoration: BoxDecoration(
          color: widget.backgroundcolor,
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Laptop Bazaar',
                style: FlutterFlowTheme.of(context).titleMedium.override(
                      font: GoogleFonts.interTight(
                        fontWeight:
                            FlutterFlowTheme.of(context).titleMedium.fontWeight,
                        fontStyle:
                            FlutterFlowTheme.of(context).titleMedium.fontStyle,
                      ),
                      color: widget.textColor,
                      letterSpacing: 0.0,
                      fontWeight:
                          FlutterFlowTheme.of(context).titleMedium.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).titleMedium.fontStyle,
                    ),
              ),
              Builder(
                builder: (context) => Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
                  child: FlutterFlowIconButton(
                    borderColor: Color(0xFF8F8F8F),
                    borderRadius: 100.0,
                    buttonSize: 30.0,
                    fillColor: Color(0xFF2F2F2F),
                    hoverColor: Color(0xFF464646),
                    icon: Icon(
                      Icons.manage_accounts_rounded,
                      color: FlutterFlowTheme.of(context).info,
                      size: 16.0,
                    ),
                    onPressed: () async {
                      showAlignedDialog(
                        context: context,
                        isGlobal: false,
                        avoidOverflow: false,
                        targetAnchor: AlignmentDirectional(1.0, 0.4)
                            .resolve(Directionality.of(context)),
                        followerAnchor: AlignmentDirectional(1.0, -1.0)
                            .resolve(Directionality.of(context)),
                        builder: (dialogContext) {
                          return Material(
                            color: Colors.transparent,
                            child: Dropdown03AccountWidget(),
                          );
                        },
                      );
                    },
                  ),
                ),
              ),
            ].divide(SizedBox(width: 30.0)),
          ),
        ),
      ),
    );
  }
}
