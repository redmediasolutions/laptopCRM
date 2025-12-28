import '/backend/api_requests/api_calls.dart';
import '/components/side_bar2_widget.dart';
import '/components/title_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/products/master_products/master_products_components/secondary_sidebar_products/secondary_sidebar_products_widget.dart';
import '/products/stock/stock_components/stock_list_component/stock_list_component_widget.dart';
import '/products/stock/stock_components/stocklistsearchcomponent/stocklistsearchcomponent_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';
import 'stock_dashboard_model.dart';
export 'stock_dashboard_model.dart';

class StockDashboardWidget extends StatefulWidget {
  const StockDashboardWidget({
    super.key,
    this.searchTerm,
  });

  final String? searchTerm;

  static String routeName = 'StockDashboard';
  static String routePath = '/stockDashboard';

  @override
  State<StockDashboardWidget> createState() => _StockDashboardWidgetState();
}

class _StockDashboardWidgetState extends State<StockDashboardWidget> {
  late StockDashboardModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StockDashboardModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (widget.searchTerm != null && widget.searchTerm != '') {
        _model.searchInput = widget.searchTerm!;
        safeSetState(() {});
        await Future.delayed(
          Duration(
            milliseconds: 100,
          ),
        );
        _model.search = true;
        safeSetState(() {});
      }
    });

    _model.searchInputTextController ??= TextEditingController();
    _model.searchInputFocusNode ??= FocusNode();

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
        backgroundColor: Color(0xFF161616),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              wrapWithModel(
                model: _model.titleBarModel,
                updateCallback: () => safeSetState(() {}),
                child: TitleBarWidget(
                  backgroundcolor: FlutterFlowTheme.of(context).primary,
                  textColor: FlutterFlowTheme.of(context).primaryText,
                ),
              ),
              Container(
                decoration: BoxDecoration(),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 88.0,
                      height: MediaQuery.sizeOf(context).height * 0.863,
                      decoration: BoxDecoration(),
                      child: wrapWithModel(
                        model: _model.sideBar2Model,
                        updateCallback: () => safeSetState(() {}),
                        child: SideBar2Widget(
                          backgroundColor: FlutterFlowTheme.of(context).primary,
                          iconColor: FlutterFlowTheme.of(context).primaryText,
                          iconFillColor: FlutterFlowTheme.of(context).primary,
                          selectedIndex: 2,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 2,
                            child: Container(
                              height: 596.12,
                              decoration: BoxDecoration(),
                              child: wrapWithModel(
                                model: _model.secondarySidebarProductsModel,
                                updateCallback: () => safeSetState(() {}),
                                child: SecondarySidebarProductsWidget(
                                  selectedIndex: 1,
                                  title: 'Stocks',
                                  mainTitle: 'Products',
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 10,
                            child: Align(
                              alignment: AlignmentDirectional(0.0, -1.0),
                              child: Container(
                                width: double.infinity,
                                height:
                                    MediaQuery.sizeOf(context).height * 0.85,
                                decoration: BoxDecoration(),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 1.0, 0.0, 0.0),
                                      child: Container(
                                        height: 55.0,
                                        decoration: BoxDecoration(),
                                        child: Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 0.0, 0.0, 0.0),
                                            child: Text(
                                              'Stock',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        color: Colors.white,
                                                        fontSize: 24.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Divider(
                                      height: 0.0,
                                      thickness: 1.0,
                                      color: FlutterFlowTheme.of(context)
                                          .alternate,
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          20.0, 20.0, 20.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Expanded(
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 20.0, 0.0),
                                              child: Container(
                                                width: 200.0,
                                                child: TextFormField(
                                                  controller: _model
                                                      .searchInputTextController,
                                                  focusNode: _model
                                                      .searchInputFocusNode,
                                                  onFieldSubmitted: (_) async {
                                                    _model.searchInput = _model
                                                        .searchInputTextController
                                                        .text;
                                                    safeSetState(() {});
                                                    await Future.delayed(
                                                      Duration(
                                                        milliseconds: 100,
                                                      ),
                                                    );
                                                    _model.search = true;
                                                    safeSetState(() {});
                                                  },
                                                  autofocus: false,
                                                  textInputAction:
                                                      TextInputAction.search,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    isDense: true,
                                                    labelStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          font:
                                                              GoogleFonts.inter(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontStyle,
                                                          ),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .fontStyle,
                                                        ),
                                                    hintText: 'Search',
                                                    hintStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          font:
                                                              GoogleFonts.inter(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontStyle,
                                                          ),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .fontStyle,
                                                        ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    filled: true,
                                                    fillColor: FlutterFlowTheme
                                                            .of(context)
                                                        .secondaryBackground,
                                                    prefixIcon: Icon(
                                                      FontAwesomeIcons.search,
                                                    ),
                                                  ),
                                                  style: FlutterFlowTheme.of(
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
                                                  cursorColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryText,
                                                  enableInteractiveSelection:
                                                      true,
                                                  validator: _model
                                                      .searchInputTextControllerValidator
                                                      .asValidator(context),
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
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                safeSetState(() {
                                                  _model
                                                      .searchInputTextController
                                                      ?.clear();
                                                });
                                                _model.search = false;
                                                safeSetState(() {});
                                                await Future.delayed(
                                                  Duration(
                                                    milliseconds: 100,
                                                  ),
                                                );
                                                _model.searchInput = 'Search';
                                                safeSetState(() {});
                                              },
                                              child: Icon(
                                                Icons.restart_alt_sharp,
                                                color: Color(0xFFB4B4B4),
                                                size: 32.0,
                                              ),
                                            ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 16.0, 0.0, 0.0),
                                      child: Container(
                                        width: double.infinity,
                                        height: 40.0,
                                        decoration: BoxDecoration(
                                          color: Color(0xFF252525),
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(0.0),
                                            bottomRight: Radius.circular(0.0),
                                            topLeft: Radius.circular(8.0),
                                            topRight: Radius.circular(8.0),
                                          ),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 0.0, 16.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                flex: 3,
                                                child: Text(
                                                  'Model',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .labelSmall
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelSmall
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelSmall
                                                                .fontStyle,
                                                      ),
                                                ),
                                              ),
                                              Expanded(
                                                flex: 2,
                                                child: Text(
                                                  'Serial Number',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .labelSmall
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelSmall
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelSmall
                                                                .fontStyle,
                                                      ),
                                                ),
                                              ),
                                              Expanded(
                                                flex: 2,
                                                child: Text(
                                                  'Vendor',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .labelSmall
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelSmall
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelSmall
                                                                .fontStyle,
                                                      ),
                                                ),
                                              ),
                                              Expanded(
                                                flex: 2,
                                                child: Text(
                                                  'Cost',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .labelSmall
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelSmall
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelSmall
                                                                .fontStyle,
                                                      ),
                                                ),
                                              ),
                                              Expanded(
                                                flex: 2,
                                                child: Text(
                                                  'Sale',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .labelSmall
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelSmall
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelSmall
                                                                .fontStyle,
                                                      ),
                                                ),
                                              ),
                                              Expanded(
                                                flex: 2,
                                                child: Text(
                                                  'Condition',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .labelSmall
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelSmall
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelSmall
                                                                .fontStyle,
                                                      ),
                                                ),
                                              ),
                                              Expanded(
                                                flex: 2,
                                                child: Text(
                                                  'Purchase Date',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .labelSmall
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelSmall
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelSmall
                                                                .fontStyle,
                                                      ),
                                                ),
                                              ),
                                              Expanded(
                                                flex: 2,
                                                child: Text(
                                                  'In Stock',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .labelSmall
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelSmall
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelSmall
                                                                .fontStyle,
                                                      ),
                                                ),
                                              ),
                                              Expanded(
                                                flex: 2,
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -1.0, 0.0),
                                                  child: Text(
                                                    'Actions',
                                                    textAlign: TextAlign.end,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .labelSmall
                                                        .override(
                                                          font:
                                                              GoogleFonts.inter(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelSmall
                                                                    .fontStyle,
                                                          ),
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelSmall
                                                                  .fontStyle,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    if (!_model.search)
                                      Container(
                                        height:
                                            (MediaQuery.sizeOf(context).height *
                                                    65) /
                                                100,
                                        decoration: BoxDecoration(),
                                        child: PagedListView<ApiPagingParams,
                                            dynamic>(
                                          pagingController:
                                              _model.setListViewController(
                                            (nextPageMarker) =>
                                                StockListCall.call(
                                              offset: nextPageMarker
                                                      .nextPageNumber *
                                                  10,
                                              limit: 10,
                                              apikey: FFAppState().apikey,
                                              businessid: FFAppState()
                                                  .businessRefID
                                                  .toString(),
                                              order: 'purchase_date.desc',
                                            ),
                                          ),
                                          padding: EdgeInsets.zero,
                                          shrinkWrap: true,
                                          reverse: false,
                                          scrollDirection: Axis.vertical,
                                          builderDelegate:
                                              PagedChildBuilderDelegate<
                                                  dynamic>(
                                            // Customize what your widget looks like when it's loading the first page.
                                            firstPageProgressIndicatorBuilder:
                                                (_) => Center(
                                              child: SizedBox(
                                                width: 50.0,
                                                height: 50.0,
                                                child:
                                                    CircularProgressIndicator(
                                                  valueColor:
                                                      AlwaysStoppedAnimation<
                                                          Color>(
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            // Customize what your widget looks like when it's loading another page.
                                            newPageProgressIndicatorBuilder:
                                                (_) => Center(
                                              child: SizedBox(
                                                width: 50.0,
                                                height: 50.0,
                                                child:
                                                    CircularProgressIndicator(
                                                  valueColor:
                                                      AlwaysStoppedAnimation<
                                                          Color>(
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                  ),
                                                ),
                                              ),
                                            ),

                                            itemBuilder:
                                                (context, _, stocklistIndex) {
                                              final stocklistItem = _model
                                                  .listViewPagingController!
                                                  .itemList![stocklistIndex];
                                              return wrapWithModel(
                                                model: _model
                                                    .stockListComponentModels
                                                    .getModel(
                                                  stocklistIndex.toString(),
                                                  stocklistIndex,
                                                ),
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: StockListComponentWidget(
                                                  key: Key(
                                                    'Key2kf_${stocklistIndex.toString()}',
                                                  ),
                                                  parameter1: getJsonField(
                                                    stocklistItem,
                                                    r'''$.product_name''',
                                                  ),
                                                  parameter2: getJsonField(
                                                    stocklistItem,
                                                    r'''$.product_config''',
                                                  ),
                                                  parameter3: getJsonField(
                                                    stocklistItem,
                                                    r'''$.product_serial''',
                                                  ),
                                                  parameter5: getJsonField(
                                                    stocklistItem,
                                                    r'''$.vendor_name''',
                                                  ),
                                                  parameter6: getJsonField(
                                                    stocklistItem,
                                                    r'''$.costprice''',
                                                  ),
                                                  parameter7: getJsonField(
                                                    stocklistItem,
                                                    r'''$.saleprice''',
                                                  ),
                                                  parameter8: getJsonField(
                                                    stocklistItem,
                                                    r'''$.condition''',
                                                  ),
                                                  parameter9: getJsonField(
                                                    stocklistItem,
                                                    r'''$.purchase_date''',
                                                  ),
                                                  parameter10: getJsonField(
                                                    stocklistItem,
                                                    r'''$.isSold''',
                                                  ),
                                                  parameter11: getJsonField(
                                                    stocklistItem,
                                                    r'''$.vendor_name''',
                                                  ),
                                                  parameter12: getJsonField(
                                                    stocklistItem,
                                                    r'''$.vendor_phone''',
                                                  ),
                                                  parameter13: getJsonField(
                                                    stocklistItem,
                                                    r'''$.purchasesid''',
                                                  ),
                                                  parameter14: getJsonField(
                                                    stocklistItem,
                                                    r'''$.stock_id''',
                                                  ),
                                                  parameter15: getJsonField(
                                                    stocklistItem,
                                                    r'''$.product_serial''',
                                                  ),
                                                  parameter16: getJsonField(
                                                    stocklistItem,
                                                    r'''$.product_reference''',
                                                  ),
                                                  parameter17: getJsonField(
                                                    stocklistItem,
                                                    r'''$.saleprice''',
                                                  ),
                                                  parameter18: stocklistIndex,
                                                ),
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                    if (_model.search)
                                      Container(
                                        height:
                                            (MediaQuery.sizeOf(context).height *
                                                    60) /
                                                100,
                                        decoration: BoxDecoration(),
                                        child: FutureBuilder<ApiCallResponse>(
                                          future: StockListSearchCall.call(
                                            apikey: FFAppState().apikey,
                                            term: _model.searchInput,
                                            limit: 15,
                                          ),
                                          builder: (context, snapshot) {
                                            // Customize what your widget looks like when it's loading.
                                            if (!snapshot.hasData) {
                                              return Center(
                                                child: SizedBox(
                                                  width: 50.0,
                                                  height: 50.0,
                                                  child:
                                                      CircularProgressIndicator(
                                                    valueColor:
                                                        AlwaysStoppedAnimation<
                                                            Color>(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                    ),
                                                  ),
                                                ),
                                              );
                                            }
                                            final searchStocksStockListSearchResponse =
                                                snapshot.data!;

                                            return Builder(
                                              builder: (context) {
                                                final searchStock =
                                                    getJsonField(
                                                  searchStocksStockListSearchResponse
                                                      .jsonBody,
                                                  r'''$''',
                                                ).toList();

                                                return ListView.builder(
                                                  padding: EdgeInsets.zero,
                                                  primary: false,
                                                  shrinkWrap: true,
                                                  scrollDirection:
                                                      Axis.vertical,
                                                  itemCount: searchStock.length,
                                                  itemBuilder: (context,
                                                      searchStockIndex) {
                                                    final searchStockItem =
                                                        searchStock[
                                                            searchStockIndex];
                                                    return wrapWithModel(
                                                      model: _model
                                                          .stocklistsearchcomponentModels
                                                          .getModel(
                                                        searchStockIndex
                                                            .toString(),
                                                        searchStockIndex,
                                                      ),
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child:
                                                          StocklistsearchcomponentWidget(
                                                        key: Key(
                                                          'Key1h5_${searchStockIndex.toString()}',
                                                        ),
                                                        productName:
                                                            valueOrDefault<
                                                                String>(
                                                          getJsonField(
                                                            searchStockItem,
                                                            r'''$.product_name''',
                                                          )?.toString(),
                                                          'NA',
                                                        ),
                                                        configuration:
                                                            getJsonField(
                                                          searchStockItem,
                                                          r'''$.product_config''',
                                                        ).toString(),
                                                        serialNo:
                                                            valueOrDefault<
                                                                String>(
                                                          getJsonField(
                                                            searchStockItem,
                                                            r'''$.product_serial''',
                                                          )?.toString(),
                                                          'NA',
                                                        ),
                                                        serialNoo:
                                                            valueOrDefault<
                                                                String>(
                                                          getJsonField(
                                                            searchStockItem,
                                                            r'''$.product_serial''',
                                                          )?.toString(),
                                                          'NA',
                                                        ),
                                                        vendor: valueOrDefault<
                                                            String>(
                                                          getJsonField(
                                                            searchStockItem,
                                                            r'''$.vendor_name''',
                                                          )?.toString(),
                                                          'NA',
                                                        ),
                                                        costPrice: getJsonField(
                                                          searchStockItem,
                                                          r'''$.costprice''',
                                                        ).toString(),
                                                        salePrice: getJsonField(
                                                          searchStockItem,
                                                          r'''$.saleprice''',
                                                        ).toString(),
                                                        condition:
                                                            valueOrDefault<
                                                                String>(
                                                          getJsonField(
                                                            searchStockItem,
                                                            r'''$.condition''',
                                                          )?.toString(),
                                                          'NA',
                                                        ),
                                                        purchaseDate:
                                                            getJsonField(
                                                          searchStockItem,
                                                          r'''$.purchase_date''',
                                                        ).toString(),
                                                        isSold: getJsonField(
                                                          searchStockItem,
                                                          r'''$.isSold''',
                                                        ),
                                                        vendorvv: getJsonField(
                                                          searchStockItem,
                                                          r'''$.vendor_name''',
                                                        ).toString(),
                                                        phone: getJsonField(
                                                          searchStockItem,
                                                          r'''$.vendor_phone''',
                                                        ).toString(),
                                                        purchaseId:
                                                            getJsonField(
                                                          searchStockItem,
                                                          r'''$.purchasesid''',
                                                        ),
                                                        stockid: getJsonField(
                                                          searchStockItem,
                                                          r'''$.stock_id''',
                                                        ),
                                                        purchaseDateee: functions
                                                            .jsonToDateTime(
                                                                getJsonField(
                                                          searchStockItem,
                                                          r'''$.purchase_date''',
                                                        )),
                                                        productReference:
                                                            getJsonField(
                                                          searchStockItem,
                                                          r'''$.product_reference''',
                                                        ).toString(),
                                                        indexinList:
                                                            searchStockIndex,
                                                      ),
                                                    );
                                                  },
                                                );
                                              },
                                            );
                                          },
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
