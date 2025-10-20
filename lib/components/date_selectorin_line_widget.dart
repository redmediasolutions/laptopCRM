import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'date_selectorin_line_model.dart';
export 'date_selectorin_line_model.dart';

class DateSelectorinLineWidget extends StatefulWidget {
  const DateSelectorinLineWidget({
    super.key,
    required this.returnDate,
    this.defaultText,
  });

  final Future Function(DateTime? date)? returnDate;
  final String? defaultText;

  @override
  State<DateSelectorinLineWidget> createState() =>
      _DateSelectorinLineWidgetState();
}

class _DateSelectorinLineWidgetState extends State<DateSelectorinLineWidget> {
  late DateSelectorinLineModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DateSelectorinLineModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        FlutterFlowIconButton(
          borderColor: Color(0xFFE5E7EB),
          borderRadius: 0.0,
          buttonSize: 40.0,
          fillColor: Colors.white,
          icon: Icon(
            Icons.calendar_today,
            color: Color(0xFF111827),
          ),
          onPressed: () async {
            final _datePickedDate = await showDatePicker(
              context: context,
              initialDate: getCurrentTimestamp,
              firstDate: DateTime(1900),
              lastDate: DateTime(2050),
              builder: (context, child) {
                return wrapInMaterialDatePickerTheme(
                  context,
                  child!,
                  headerBackgroundColor: FlutterFlowTheme.of(context).primary,
                  headerForegroundColor: FlutterFlowTheme.of(context).info,
                  headerTextStyle:
                      FlutterFlowTheme.of(context).headlineLarge.override(
                            font: GoogleFonts.interTight(
                              fontWeight: FontWeight.w600,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .headlineLarge
                                  .fontStyle,
                            ),
                            fontSize: 32.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                            fontStyle: FlutterFlowTheme.of(context)
                                .headlineLarge
                                .fontStyle,
                          ),
                  pickerBackgroundColor:
                      FlutterFlowTheme.of(context).secondaryBackground,
                  pickerForegroundColor:
                      FlutterFlowTheme.of(context).primaryText,
                  selectedDateTimeBackgroundColor:
                      FlutterFlowTheme.of(context).primary,
                  selectedDateTimeForegroundColor:
                      FlutterFlowTheme.of(context).info,
                  actionButtonForegroundColor:
                      FlutterFlowTheme.of(context).primaryText,
                  iconSize: 24.0,
                );
              },
            );

            if (_datePickedDate != null) {
              safeSetState(() {
                _model.datePicked = DateTime(
                  _datePickedDate.year,
                  _datePickedDate.month,
                  _datePickedDate.day,
                );
              });
            } else if (_model.datePicked != null) {
              safeSetState(() {
                _model.datePicked = getCurrentTimestamp;
              });
            }
            await widget.returnDate?.call(
              _model.datePicked,
            );
          },
        ),
        Container(
          width: 188.1,
          height: 41.2,
          decoration: BoxDecoration(
            color: Color(0xFFEFEFEF),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(0.0),
              bottomRight: Radius.circular(10.0),
              topLeft: Radius.circular(0.0),
              topRight: Radius.circular(10.0),
            ),
            border: Border.all(
              color: Color(0xFFB2B2B2),
            ),
          ),
          alignment: AlignmentDirectional(0.0, 0.0),
          child: Text(
            valueOrDefault<String>(
              _model.datePicked == null
                  ? widget.defaultText
                  : dateTimeFormat("yMMMd", _model.datePicked),
              'NA',
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
          ),
        ),
      ],
    );
  }
}
