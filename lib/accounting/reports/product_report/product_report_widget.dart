import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/components/date_selectorin_line_widget.dart';
import '/components/sidebar_widget.dart';
import '/components/title_bar_widget.dart';
import '/dashboards/dashboard_components/dashboard_items/dashboard_items_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'product_report_model.dart';
export 'product_report_model.dart';

class ProductReportWidget extends StatefulWidget {
  const ProductReportWidget({
    super.key,
    this.searchTerm,
  });

  final String? searchTerm;

  static String routeName = 'ProductReport';
  static String routePath = '/productReport';

  @override
  State<ProductReportWidget> createState() => _ProductReportWidgetState();
}

class _ProductReportWidgetState extends State<ProductReportWidget>
    with TickerProviderStateMixin {
  late ProductReportModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProductReportModel());

    animationsMap.addAll({
      'dateSelectorinLineOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, -15.0),
            end: Offset(0.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 310.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'dateSelectorinLineOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, -15.0),
            end: Offset(0.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 300.0.ms,
            duration: 310.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryText,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              wrapWithModel(
                model: _model.titleBarModel,
                updateCallback: () => safeSetState(() {}),
                child: TitleBarWidget(
                  backgroundcolor: FlutterFlowTheme.of(context).primaryText,
                  textColor: FlutterFlowTheme.of(context).alternate,
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: 800.0,
                      decoration: BoxDecoration(),
                      child: wrapWithModel(
                        model: _model.sidebarModel,
                        updateCallback: () => safeSetState(() {}),
                        child: SidebarWidget(
                          index: 11,
                        ),
                      ),
                    ),
                  ),
                  if (responsiveVisibility(
                    context: context,
                    phone: false,
                    tablet: false,
                    tabletLandscape: false,
                  ))
                    Expanded(
                      flex: 12,
                      child: FutureBuilder<List<AllInvoicesRow>>(
                        future: AllInvoicesTable().queryRows(
                          queryFn: (q) => q
                              .eqOrNull(
                                'business_id',
                                FFAppState().businessRefID,
                              )
                              .eqOrNull(
                                'isarchive',
                                false,
                              ),
                        ),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return Center(
                              child: SizedBox(
                                width: 50.0,
                                height: 50.0,
                                child: CircularProgressIndicator(
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                    FlutterFlowTheme.of(context).primary,
                                  ),
                                ),
                              ),
                            );
                          }
                          List<AllInvoicesRow> cardTable6AllInvoicesRowList =
                              snapshot.data!;

                          return Container(
                            width: MediaQuery.sizeOf(context).width * 0.82,
                            height: 825.68,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 10.0,
                                  color: Color(0x33000000),
                                )
                              ],
                              borderRadius: BorderRadius.circular(8.0),
                              border: Border.all(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    'Product Sale Report',
                                    style: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .override(
                                          font: GoogleFonts.interTight(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .titleLarge
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleLarge
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          fontSize: 32.0,
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .titleLarge
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleLarge
                                                  .fontStyle,
                                        ),
                                  ),
                                ),
                                Container(
                                  height: 64.58,
                                  decoration: BoxDecoration(),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20.0, 20.0, 20.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Expanded(
                                          flex: 3,
                                          child: Container(
                                            decoration: BoxDecoration(),
                                            child: FlutterFlowChoiceChips(
                                              options: [
                                                ChipData('Today'),
                                                ChipData('Yesterday'),
                                                ChipData('This Week'),
                                                ChipData('This Month'),
                                                ChipData('Custom')
                                              ],
                                              onChanged: (val) async {
                                                safeSetState(() =>
                                                    _model.choiceChipsValue =
                                                        val?.firstOrNull);
                                                if (_model.choiceChipsValue ==
                                                    'Today') {
                                                  _model.startDate =
                                                      getCurrentTimestamp;
                                                  _model.endDate =
                                                      getCurrentTimestamp;
                                                  _model.custom = false;
                                                  safeSetState(() {});
                                                } else if (_model
                                                        .choiceChipsValue ==
                                                    'Yesterday') {
                                                  _model.yesterdaydate =
                                                      await actions
                                                          .getYesterdayDateTime();
                                                  _model.startDate =
                                                      _model.yesterdaydate;
                                                  _model.endDate =
                                                      _model.yesterdaydate;
                                                  _model.custom = false;
                                                  safeSetState(() {});
                                                } else if (_model
                                                        .choiceChipsValue ==
                                                    'This Week') {
                                                  _model.getstartofthisweek =
                                                      await actions
                                                          .getStartofThisWeek();
                                                  _model.startDate = _model
                                                      .getstartofthisweek
                                                      ?.firstOrNull;
                                                  _model.endDate = _model
                                                      .getstartofthisweek
                                                      ?.lastOrNull;
                                                  _model.custom = false;
                                                  safeSetState(() {});
                                                } else if (_model
                                                        .choiceChipsValue ==
                                                    'This Month') {
                                                  _model.thisMonth =
                                                      await actions
                                                          .getStartofThisMonth();
                                                  _model.startDate = _model
                                                      .thisMonth?.firstOrNull;
                                                  _model.endDate = _model
                                                      .thisMonth?.lastOrNull;
                                                  _model.custom = false;
                                                  safeSetState(() {});
                                                } else {
                                                  _model.custom = true;
                                                  safeSetState(() {});
                                                }

                                                safeSetState(() {});
                                              },
                                              selectedChipStyle: ChipStyle(
                                                backgroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                textStyle: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      font: GoogleFonts.inter(
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .info,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontStyle,
                                                    ),
                                                iconColor:
                                                    FlutterFlowTheme.of(context)
                                                        .info,
                                                iconSize: 16.0,
                                                elevation: 0.0,
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              unselectedChipStyle: ChipStyle(
                                                backgroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                textStyle: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      font: GoogleFonts.inter(
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontStyle,
                                                    ),
                                                iconColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                iconSize: 16.0,
                                                elevation: 0.0,
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              chipSpacing: 8.0,
                                              rowSpacing: 8.0,
                                              multiselect: false,
                                              initialized:
                                                  _model.choiceChipsValue !=
                                                      null,
                                              alignment: WrapAlignment.start,
                                              controller: _model
                                                      .choiceChipsValueController ??=
                                                  FormFieldController<
                                                      List<String>>(
                                                ['Today'],
                                              ),
                                              wrapped: true,
                                            ),
                                          ),
                                        ),
                                        if (_model.custom)
                                          wrapWithModel(
                                            model:
                                                _model.dateSelectorinLineModel1,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: DateSelectorinLineWidget(
                                              defaultText: 'Start Date',
                                              returnDate: (date) async {
                                                _model.startDate = date;
                                                safeSetState(() {});
                                              },
                                            ),
                                          ).animateOnPageLoad(animationsMap[
                                              'dateSelectorinLineOnPageLoadAnimation1']!),
                                        if (_model.custom)
                                          Expanded(
                                            child: wrapWithModel(
                                              model: _model
                                                  .dateSelectorinLineModel2,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: DateSelectorinLineWidget(
                                                defaultText: 'End Date',
                                                returnDate: (date) async {
                                                  _model.endDate = date;
                                                  safeSetState(() {});
                                                },
                                              ),
                                            ).animateOnPageLoad(animationsMap[
                                                'dateSelectorinLineOnPageLoadAnimation2']!),
                                          ),
                                      ].divide(SizedBox(width: 20.0)),
                                    ),
                                  ),
                                ),
                                FutureBuilder<List<PaymentsRow>>(
                                  future: PaymentsTable().queryRows(
                                    queryFn: (q) => q.eqOrNull(
                                      'business_reference',
                                      FFAppState().businessRefID,
                                    ),
                                  ),
                                  builder: (context, snapshot) {
                                    // Customize what your widget looks like when it's loading.
                                    if (!snapshot.hasData) {
                                      return Center(
                                        child: SizedBox(
                                          width: 50.0,
                                          height: 50.0,
                                          child: CircularProgressIndicator(
                                            valueColor:
                                                AlwaysStoppedAnimation<Color>(
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                            ),
                                          ),
                                        ),
                                      );
                                    }
                                    List<PaymentsRow> containerPaymentsRowList =
                                        snapshot.data!;

                                    return Container(
                                      decoration: BoxDecoration(),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20.0, 10.0, 0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            wrapWithModel(
                                              model:
                                                  _model.dashboardItemsModel1,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: DashboardItemsWidget(
                                                icon: Icon(
                                                  Icons.attach_money_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  size: 24.0,
                                                ),
                                                title: 'Total Sales',
                                                titleColor: Colors.white,
                                                dataContent:
                                                    valueOrDefault<double>(
                                                  functions
                                                      .reportCalculateTotalInvoice(
                                                          cardTable6AllInvoicesRowList
                                                              .toList(),
                                                          _model.startDate,
                                                          _model.endDate),
                                                  0.0,
                                                ),
                                                dataColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                isCurrency: true,
                                              ),
                                            ),
                                            wrapWithModel(
                                              model:
                                                  _model.dashboardItemsModel2,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: DashboardItemsWidget(
                                                icon: Icon(
                                                  Icons.attach_money_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  size: 24.0,
                                                ),
                                                title: 'Net Profit',
                                                titleColor: Colors.white,
                                                dataContent:
                                                    functions.reportNetProfit(
                                                        cardTable6AllInvoicesRowList
                                                            .toList(),
                                                        _model.startDate,
                                                        _model.endDate),
                                                dataColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                isCurrency: true,
                                              ),
                                            ),
                                            wrapWithModel(
                                              model:
                                                  _model.dashboardItemsModel3,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: DashboardItemsWidget(
                                                icon: Icon(
                                                  Icons.attach_money_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  size: 24.0,
                                                ),
                                                title: 'Payment Received',
                                                titleColor: Colors.white,
                                                dataContent:
                                                    valueOrDefault<double>(
                                                  functions.reportPaymentReceived(
                                                      cardTable6AllInvoicesRowList
                                                          .toList(),
                                                      containerPaymentsRowList
                                                          .toList(),
                                                      _model.startDate,
                                                      _model.endDate),
                                                  0.0,
                                                ),
                                                dataColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                isCurrency: true,
                                              ),
                                            ),
                                          ].divide(SizedBox(width: 2.0)),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20.0, 20.0, 20.0, 0.0),
                                    child: Builder(
                                      builder: (context) {
                                        final invoices = functions
                                                .reportListproductbySale(
                                                    cardTable6AllInvoicesRowList
                                                        .toList(),
                                                    _model.startDate,
                                                    _model.endDate)
                                                ?.toList() ??
                                            [];

                                        return FlutterFlowDataTable<
                                            ReportProductbySaleStruct>(
                                          controller: _model
                                              .paginatedDataTableController,
                                          data: invoices,
                                          columnsBuilder: (onSortChanged) => [
                                            DataColumn2(
                                              label: DefaultTextStyle.merge(
                                                softWrap: true,
                                                child: Text(
                                                  'Product',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .labelLarge
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelLarge
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .alternate,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelLarge
                                                                .fontStyle,
                                                      ),
                                                ),
                                              ),
                                            ),
                                            DataColumn2(
                                              label: DefaultTextStyle.merge(
                                                softWrap: true,
                                                child: Text(
                                                  'Sale Price',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .labelLarge
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelLarge
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .alternate,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelLarge
                                                                .fontStyle,
                                                      ),
                                                ),
                                              ),
                                            ),
                                            DataColumn2(
                                              label: DefaultTextStyle.merge(
                                                softWrap: true,
                                                child: Text(
                                                  'Edit Header 3',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .labelLarge
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelLarge
                                                                  .fontStyle,
                                                        ),
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelLarge
                                                                .fontStyle,
                                                      ),
                                                ),
                                              ),
                                            ),
                                            DataColumn2(
                                              label: DefaultTextStyle.merge(
                                                softWrap: true,
                                                child: Text(
                                                  'Edit Header 4',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .labelLarge
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelLarge
                                                                  .fontStyle,
                                                        ),
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelLarge
                                                                .fontStyle,
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ],
                                          dataRowBuilder: (invoicesItem,
                                                  invoicesIndex,
                                                  selected,
                                                  onSelectChanged) =>
                                              DataRow(
                                            color: WidgetStateProperty.all(
                                              invoicesIndex % 2 == 0
                                                  ? FlutterFlowTheme.of(context)
                                                      .secondaryBackground
                                                  : FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                            ),
                                            cells: [
                                              Text(
                                                invoicesItem.invoiceItem,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          font:
                                                              GoogleFonts.inter(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                              ),
                                              Text(
                                                invoicesItem.invoiceItemAmount
                                                    .toString(),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          font:
                                                              GoogleFonts.inter(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                              ),
                                              Text(
                                                'Edit Column 3',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          font:
                                                              GoogleFonts.inter(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                              ),
                                              Text(
                                                'Edit Column 4',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          font:
                                                              GoogleFonts.inter(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                              ),
                                            ].map((c) => DataCell(c)).toList(),
                                          ),
                                          paginated: false,
                                          selectable: false,
                                          height: double.infinity,
                                          headingRowHeight: 56.0,
                                          dataRowHeight: 48.0,
                                          columnSpacing: 20.0,
                                          headingRowColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryText,
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          addHorizontalDivider: true,
                                          addTopAndBottomDivider: false,
                                          hideDefaultHorizontalDivider: true,
                                          horizontalDividerColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryBackground,
                                          horizontalDividerThickness: 1.0,
                                          addVerticalDivider: false,
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
