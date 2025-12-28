import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'invoice_quantity_model.dart';
export 'invoice_quantity_model.dart';

class InvoiceQuantityWidget extends StatefulWidget {
  const InvoiceQuantityWidget({
    super.key,
    required this.defaulttext,
    required this.index,
    this.data,
  });

  final String? defaulttext;
  final int? index;
  final String? data;

  @override
  State<InvoiceQuantityWidget> createState() => _InvoiceQuantityWidgetState();
}

class _InvoiceQuantityWidgetState extends State<InvoiceQuantityWidget> {
  late InvoiceQuantityModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InvoiceQuantityModel());

    _model.quantityTextController ??= TextEditingController(text: widget.data);
    _model.quantityFocusNode ??= FocusNode();
    _model.quantityFocusNode!.addListener(
      () async {
        FFAppState().updateInvoiceItemsAtIndex(
          widget.index!,
          (e) => e
            ..invoiceItemQuantity =
                int.tryParse(_model.quantityTextController.text)
            ..invoiceItemAmount = valueOrDefault<double>(
              functions.calculateLineTotal(
                  int.tryParse(_model.quantityTextController.text),
                  FFAppState()
                      .invoiceItems
                      .elementAtOrNull(widget.index!)!
                      .invoiceItemTaxRate,
                  FFAppState()
                      .invoiceItems
                      .elementAtOrNull(widget.index!)
                      ?.invoiceAmountBeforeTax),
              0.0,
            ),
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
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
      child: Container(
        height: 42.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.0),
          border: Border.all(
            color: Color(0xFFA6A6A6),
          ),
        ),
        child: Align(
          alignment: AlignmentDirectional(-1.0, 0.0),
          child: TextFormField(
            controller: _model.quantityTextController,
            focusNode: _model.quantityFocusNode,
            autofocus: false,
            obscureText: false,
            decoration: InputDecoration(
              isDense: true,
              labelStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                    font: GoogleFonts.inter(
                      fontWeight:
                          FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                    ),
                    letterSpacing: 0.0,
                    fontWeight:
                        FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
              hintText: widget.defaulttext,
              hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                    font: GoogleFonts.inter(
                      fontWeight:
                          FlutterFlowTheme.of(context).labelMedium.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).labelMedium.fontStyle,
                    ),
                    letterSpacing: 0.0,
                    fontWeight:
                        FlutterFlowTheme.of(context).labelMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).labelMedium.fontStyle,
                  ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0x00000000),
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
                  color: FlutterFlowTheme.of(context).error,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: FlutterFlowTheme.of(context).error,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
              filled: true,
              fillColor: FlutterFlowTheme.of(context).secondaryBackground,
            ),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  font: GoogleFonts.inter(
                    fontWeight:
                        FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                ),
            cursorColor: FlutterFlowTheme.of(context).primaryText,
            validator:
                _model.quantityTextControllerValidator.asValidator(context),
          ),
        ),
      ),
    );
  }
}
