import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'productserial_model.dart';
export 'productserial_model.dart';

class ProductserialWidget extends StatefulWidget {
  const ProductserialWidget({
    super.key,
    required this.index,
    required this.data,
  });

  final int? index;
  final String? data;

  @override
  State<ProductserialWidget> createState() => _ProductserialWidgetState();
}

class _ProductserialWidgetState extends State<ProductserialWidget> {
  late ProductserialModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProductserialModel());

    _model.productSerialTextController ??= TextEditingController();
    _model.productSerialFocusNode ??= FocusNode();
    _model.productSerialFocusNode!.addListener(
      () async {
        FFAppState().updateAddSerialNoAtIndex(
          widget.index!,
          (e) => e..serial = _model.productSerialTextController.text,
        );
        safeSetState(() {});
      },
    );
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
      child: TextFormField(
        controller: _model.productSerialTextController,
        focusNode: _model.productSerialFocusNode,
        autofocus: false,
        obscureText: false,
        decoration: InputDecoration(
          labelStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                font: GoogleFonts.inter(
                  fontWeight:
                      FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                ),
                color: Color(0xFF9CA3AF),
                letterSpacing: 0.0,
                fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
              ),
          hintText: 'Product SERIAL',
          hintStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                font: GoogleFonts.inter(
                  fontWeight:
                      FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                ),
                color: Color(0xFF9CA3AF),
                letterSpacing: 0.0,
                fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
              ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: FFAppState()
                      .addSerialNo
                      .elementAtOrNull(widget.index!)!
                      .isDuplicate
                  ? Color(0xFF980000)
                  : Colors.black,
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(8.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0x00000000),
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(8.0),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0x00000000),
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(8.0),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0x00000000),
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(8.0),
          ),
          filled: true,
          fillColor: Colors.white,
          suffixIcon: Icon(
            Icons.circle_sharp,
            color: valueOrDefault<Color>(
              FFAppState()
                      .addSerialNo
                      .elementAtOrNull(widget.index!)!
                      .isDuplicate
                  ? Color(0x6CFF0000)
                  : FlutterFlowTheme.of(context).secondary,
              Color(0xFF636363),
            ),
            size: 24.0,
          ),
        ),
        style: FlutterFlowTheme.of(context).bodyLarge.override(
              font: GoogleFonts.inter(
                fontWeight: FlutterFlowTheme.of(context).bodyLarge.fontWeight,
                fontStyle: FlutterFlowTheme.of(context).bodyLarge.fontStyle,
              ),
              letterSpacing: 0.0,
              fontWeight: FlutterFlowTheme.of(context).bodyLarge.fontWeight,
              fontStyle: FlutterFlowTheme.of(context).bodyLarge.fontStyle,
            ),
        minLines: 1,
        validator:
            _model.productSerialTextControllerValidator.asValidator(context),
      ),
    );
  }
}
