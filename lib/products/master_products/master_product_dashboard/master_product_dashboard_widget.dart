import '/backend/api_requests/api_calls.dart';
import '/components/side_bar2_widget.dart';
import '/components/title_bar_widget.dart';
import '/dashboards/dashboard_components/dashboard_items/dashboard_items_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/products/master_products/master_products_components/master_product_list/master_product_list_widget.dart';
import '/products/master_products/master_products_components/masterlist_search/masterlist_search_widget.dart';
import '/products/master_products/master_products_components/secondary_sidebar_products/secondary_sidebar_products_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';
import 'master_product_dashboard_model.dart';
export 'master_product_dashboard_model.dart';

class MasterProductDashboardWidget extends StatefulWidget {
  const MasterProductDashboardWidget({super.key});

  static String routeName = 'MasterProductDashboard';
  static String routePath = '/masterProductDashboard';

  @override
  State<MasterProductDashboardWidget> createState() =>
      _MasterProductDashboardWidgetState();
}

class _MasterProductDashboardWidgetState
    extends State<MasterProductDashboardWidget> with TickerProviderStateMixin {
  late MasterProductDashboardModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MasterProductDashboardModel());

    _model.searchInputTextController ??= TextEditingController();
    _model.searchInputFocusNode ??= FocusNode();

    animationsMap.addAll({
      'buttonOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(-49.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 330.0.ms,
            duration: 600.0.ms,
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
        backgroundColor: Color(0xFF161616),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              wrapWithModel(
                model: _model.titleBarModel,
                updateCallback: () => safeSetState(() {}),
                child: TitleBarWidget(
                  backgroundcolor: FlutterFlowTheme.of(context).primary,
                  textColor: FlutterFlowTheme.of(context).primaryText,
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 88.0,
                    height: MediaQuery.sizeOf(context).height * 0.93,
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
                    flex: 12,
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 2,
                          child: Container(
                            width: 88.0,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.transparent,
                              ),
                            ),
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
                              decoration: BoxDecoration(),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      if (responsiveVisibility(
                                        context: context,
                                        phone: false,
                                        tablet: false,
                                        tabletLandscape: false,
                                      ))
                                        Container(
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            color: Color(0xFF191919),
                                            boxShadow: [
                                              BoxShadow(
                                                blurRadius: 10.0,
                                                color: Color(0x33000000),
                                              )
                                            ],
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            border: Border.all(
                                              color: Colors.transparent,
                                              width: 1.0,
                                            ),
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 1.0, 0.0, 0.0),
                                                child: Container(
                                                  height: 55.0,
                                                  decoration: BoxDecoration(),
                                                  child: Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            -1.0, 0.0),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        'All Products',
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              font: GoogleFonts
                                                                  .inter(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 24.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
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
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  wrapWithModel(
                                                    model: _model
                                                        .dashboardItemsModel1,
                                                    updateCallback: () =>
                                                        safeSetState(() {}),
                                                    child: DashboardItemsWidget(
                                                      icon: Icon(
                                                        Icons.podcasts,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .alternate,
                                                        size: 16.0,
                                                      ),
                                                      title: 'Total Products',
                                                      titleColor: Colors.white,
                                                      dataContent: 1.0,
                                                      dataColor: Colors.white,
                                                      isCurrency: true,
                                                    ),
                                                  ),
                                                  wrapWithModel(
                                                    model: _model
                                                        .dashboardItemsModel2,
                                                    updateCallback: () =>
                                                        safeSetState(() {}),
                                                    child: DashboardItemsWidget(
                                                      icon: Icon(
                                                        Icons.podcasts,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .alternate,
                                                        size: 16.0,
                                                      ),
                                                      title: 'Total Products',
                                                      titleColor: Colors.white,
                                                      dataContent: 1.0,
                                                      dataColor: Colors.white,
                                                      isCurrency: true,
                                                    ),
                                                  ),
                                                  wrapWithModel(
                                                    model: _model
                                                        .dashboardItemsModel3,
                                                    updateCallback: () =>
                                                        safeSetState(() {}),
                                                    child: DashboardItemsWidget(
                                                      icon: Icon(
                                                        Icons.podcasts,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .alternate,
                                                        size: 16.0,
                                                      ),
                                                      title: 'Total Products',
                                                      titleColor: Colors.white,
                                                      dataContent: 1.0,
                                                      dataColor: Colors.white,
                                                      isCurrency: true,
                                                    ),
                                                  ),
                                                  wrapWithModel(
                                                    model: _model
                                                        .dashboardItemsModel4,
                                                    updateCallback: () =>
                                                        safeSetState(() {}),
                                                    child: DashboardItemsWidget(
                                                      icon: Icon(
                                                        Icons.podcasts,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .alternate,
                                                        size: 16.0,
                                                      ),
                                                      title: 'Total Products',
                                                      titleColor: Colors.white,
                                                      dataContent: 1.0,
                                                      dataColor: Colors.white,
                                                      isCurrency: true,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        20.0, 20.0, 20.0, 0.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Expanded(
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    12.0,
                                                                    0.0),
                                                        child: Text(
                                                          'Products',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .headlineMedium
                                                              .override(
                                                                font: GoogleFonts
                                                                    .interTight(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineMedium
                                                                      .fontStyle,
                                                                ),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .alternate,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineMedium
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineMedium
                                                                    .fontStyle,
                                                              ),
                                                        ),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Container(
                                                        width: 200.0,
                                                        child: TextFormField(
                                                          controller: _model
                                                              .searchInputTextController,
                                                          focusNode: _model
                                                              .searchInputFocusNode,
                                                          onFieldSubmitted:
                                                              (_) async {
                                                            _model.searchinput =
                                                                _model
                                                                    .searchInputTextController
                                                                    .text;
                                                            safeSetState(() {});
                                                            await Future
                                                                .delayed(
                                                              Duration(
                                                                milliseconds:
                                                                    100,
                                                              ),
                                                            );
                                                            _model.search =
                                                                true;
                                                            safeSetState(() {});
                                                          },
                                                          autofocus: false,
                                                          textInputAction:
                                                              TextInputAction
                                                                  .search,
                                                          obscureText: false,
                                                          decoration:
                                                              InputDecoration(
                                                            isDense: true,
                                                            labelStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .inter(
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontStyle,
                                                                      ),
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .fontWeight,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .fontStyle,
                                                                    ),
                                                            hintText: 'Search',
                                                            hintStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .inter(
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontStyle,
                                                                      ),
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .fontWeight,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .fontStyle,
                                                                    ),
                                                            enabledBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Color(
                                                                    0x00000000),
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                            focusedBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Color(
                                                                    0x00000000),
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                            errorBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .error,
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                            focusedErrorBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .error,
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                            filled: true,
                                                            fillColor: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            prefixIcon: Icon(
                                                              FontAwesomeIcons
                                                                  .search,
                                                            ),
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .inter(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
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
                                                              .asValidator(
                                                                  context),
                                                        ),
                                                      ),
                                                    ),
                                                    if (responsiveVisibility(
                                                      context: context,
                                                      phone: false,
                                                      tablet: false,
                                                      tabletLandscape: false,
                                                    ))
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.all(4.0),
                                                        child: InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            safeSetState(() {
                                                              _model
                                                                  .searchInputTextController
                                                                  ?.clear();
                                                            });
                                                            _model.search =
                                                                false;
                                                            safeSetState(() {});
                                                            await Future
                                                                .delayed(
                                                              Duration(
                                                                milliseconds:
                                                                    100,
                                                              ),
                                                            );
                                                            _model.searchinput =
                                                                'Search';
                                                            safeSetState(() {});
                                                          },
                                                          child: Icon(
                                                            Icons
                                                                .restart_alt_sharp,
                                                            color: Color(
                                                                0xFFB4B4B4),
                                                            size: 32.0,
                                                          ),
                                                        ),
                                                      ),
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child:
                                                              FlutterFlowChoiceChips(
                                                            options: [
                                                              ChipData(
                                                                  'Computers',
                                                                  Icons
                                                                      .computer_sharp),
                                                              ChipData(
                                                                  'Parts',
                                                                  Icons
                                                                      .password)
                                                            ],
                                                            onChanged:
                                                                (val) async {
                                                              safeSetState(() =>
                                                                  _model.choiceChipsValue =
                                                                      val?.firstOrNull);
                                                              _model.type = () {
                                                                if (_model
                                                                        .choiceChipsValue ==
                                                                    'Computers') {
                                                                  return 'Computers';
                                                                } else if (_model
                                                                        .choiceChipsValue ==
                                                                    'Parts') {
                                                                  return 'Parts';
                                                                } else {
                                                                  return '';
                                                                }
                                                              }();
                                                              _model.isFilter =
                                                                  true;
                                                              safeSetState(
                                                                  () {});
                                                            },
                                                            selectedChipStyle:
                                                                ChipStyle(
                                                              backgroundColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .inter(
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontStyle,
                                                                        ),
                                                                        color: Colors
                                                                            .black,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                              iconColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .info,
                                                              iconSize: 16.0,
                                                              elevation: 0.0,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                            unselectedChipStyle:
                                                                ChipStyle(
                                                              backgroundColor:
                                                                  Colors.white,
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .inter(
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontStyle,
                                                                        ),
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                              iconColor: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryText,
                                                              iconSize: 16.0,
                                                              elevation: 0.0,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                            chipSpacing: 8.0,
                                                            rowSpacing: 8.0,
                                                            multiselect: false,
                                                            alignment:
                                                                WrapAlignment
                                                                    .start,
                                                            controller: _model
                                                                    .choiceChipsValueController ??=
                                                                FormFieldController<
                                                                    List<
                                                                        String>>(
                                                              [],
                                                            ),
                                                            wrapped: false,
                                                          ),
                                                        ),
                                                        if (_model.isFilter)
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            child:
                                                                FFButtonWidget(
                                                              onPressed:
                                                                  () async {
                                                                _model.isFilter =
                                                                    false;
                                                                _model.type =
                                                                    null;
                                                                safeSetState(
                                                                    () {});
                                                                safeSetState(
                                                                    () {
                                                                  _model
                                                                      .choiceChipsValueController
                                                                      ?.reset();
                                                                });
                                                              },
                                                              text: 'Clear',
                                                              options:
                                                                  FFButtonOptions(
                                                                height: 29.5,
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        0.0,
                                                                        16.0,
                                                                        0.0),
                                                                iconPadding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                color: Color(
                                                                    0xFF5D5D5D),
                                                                textStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .interTight(
                                                                        fontWeight:
                                                                            FontWeight.normal,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .fontStyle,
                                                                      ),
                                                                      color: Color(
                                                                          0xFFC1C1C1),
                                                                      fontSize:
                                                                          14.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .normal,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleSmall
                                                                          .fontStyle,
                                                                    ),
                                                                elevation: 0.0,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            18.0),
                                                              ),
                                                            ).animateOnPageLoad(
                                                                    animationsMap[
                                                                        'buttonOnPageLoadAnimation']!),
                                                          ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 16.0, 0.0, 0.0),
                                                child: Container(
                                                  width: double.infinity,
                                                  height: 40.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFF252525),
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      bottomLeft:
                                                          Radius.circular(0.0),
                                                      bottomRight:
                                                          Radius.circular(0.0),
                                                      topLeft:
                                                          Radius.circular(8.0),
                                                      topRight:
                                                          Radius.circular(8.0),
                                                    ),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(16.0, 0.0,
                                                                16.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Expanded(
                                                          flex: 3,
                                                          child: Text(
                                                            'Name',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .labelSmall
                                                                .override(
                                                                  font:
                                                                      GoogleFonts
                                                                          .inter(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelSmall
                                                                        .fontStyle,
                                                                  ),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  fontSize:
                                                                      14.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelSmall
                                                                      .fontStyle,
                                                                ),
                                                          ),
                                                        ),
                                                        Expanded(
                                                          flex: 2,
                                                          child: Text(
                                                            'Brand',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .labelSmall
                                                                .override(
                                                                  font:
                                                                      GoogleFonts
                                                                          .inter(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelSmall
                                                                        .fontStyle,
                                                                  ),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  fontSize:
                                                                      14.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelSmall
                                                                      .fontStyle,
                                                                ),
                                                          ),
                                                        ),
                                                        Expanded(
                                                          flex: 3,
                                                          child: Text(
                                                            'Configuration',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .labelSmall
                                                                .override(
                                                                  font:
                                                                      GoogleFonts
                                                                          .inter(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelSmall
                                                                        .fontStyle,
                                                                  ),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  fontSize:
                                                                      14.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelSmall
                                                                      .fontStyle,
                                                                ),
                                                          ),
                                                        ),
                                                        Expanded(
                                                          flex: 2,
                                                          child: Text(
                                                            'Type',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .labelSmall
                                                                .override(
                                                                  font:
                                                                      GoogleFonts
                                                                          .inter(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelSmall
                                                                        .fontStyle,
                                                                  ),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  fontSize:
                                                                      14.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelSmall
                                                                      .fontStyle,
                                                                ),
                                                          ),
                                                        ),
                                                        Expanded(
                                                          flex: 2,
                                                          child: Text(
                                                            'Stock',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .labelSmall
                                                                .override(
                                                                  font:
                                                                      GoogleFonts
                                                                          .inter(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelSmall
                                                                        .fontStyle,
                                                                  ),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  fontSize:
                                                                      14.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontStyle: FlutterFlowTheme.of(
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
                                                              textAlign:
                                                                  TextAlign.end,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .labelSmall
                                                                  .override(
                                                                    font: GoogleFonts
                                                                        .inter(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelSmall
                                                                          .fontStyle,
                                                                    ),
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                    fontSize:
                                                                        14.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontStyle: FlutterFlowTheme.of(
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
                                                  height: (MediaQuery.sizeOf(
                                                                  context)
                                                              .height *
                                                          60) /
                                                      100,
                                                  decoration: BoxDecoration(),
                                                  child: PagedListView<
                                                      ApiPagingParams, dynamic>(
                                                    pagingController: _model
                                                        .setListViewController(
                                                      (nextPageMarker) =>
                                                          MasterlistproductsCall
                                                              .call(
                                                        offset:
                                                            valueOrDefault<int>(
                                                          nextPageMarker
                                                                  .nextPageNumber *
                                                              10,
                                                          0,
                                                        ),
                                                        limit: 10,
                                                        apikey:
                                                            FFAppState().apikey,
                                                        businessid: FFAppState()
                                                            .businessRefID
                                                            .toString(),
                                                      ),
                                                    ),
                                                    padding: EdgeInsets.zero,
                                                    shrinkWrap: true,
                                                    reverse: false,
                                                    scrollDirection:
                                                        Axis.vertical,
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
                                                              FlutterFlowTheme.of(
                                                                      context)
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
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primary,
                                                            ),
                                                          ),
                                                        ),
                                                      ),

                                                      itemBuilder: (context, _,
                                                          productListIndex) {
                                                        final productListItem =
                                                            _model.listViewPagingController!
                                                                    .itemList![
                                                                productListIndex];
                                                        return wrapWithModel(
                                                          model: _model
                                                              .masterProductListModels
                                                              .getModel(
                                                            productListIndex
                                                                .toString(),
                                                            productListIndex,
                                                          ),
                                                          updateCallback: () =>
                                                              safeSetState(
                                                                  () {}),
                                                          child:
                                                              MasterProductListWidget(
                                                            key: Key(
                                                              'Keywnw_${productListIndex.toString()}',
                                                            ),
                                                            productName:
                                                                valueOrDefault<
                                                                    String>(
                                                              getJsonField(
                                                                productListItem,
                                                                r'''$.product_name''',
                                                              )?.toString(),
                                                              'NA',
                                                            ),
                                                            name:
                                                                valueOrDefault<
                                                                    String>(
                                                              getJsonField(
                                                                productListItem,
                                                                r'''$.product_name''',
                                                              )?.toString(),
                                                              'NA',
                                                            ),
                                                            productconfig:
                                                                valueOrDefault<
                                                                    String>(
                                                              getJsonField(
                                                                productListItem,
                                                                r'''$.product_config''',
                                                              )?.toString(),
                                                              'NA',
                                                            ),
                                                            typeName:
                                                                valueOrDefault<
                                                                    String>(
                                                              getJsonField(
                                                                productListItem,
                                                                r'''$.type_name''',
                                                              )?.toString(),
                                                              'NA',
                                                            ),
                                                            productid:
                                                                getJsonField(
                                                              productListItem,
                                                              r'''$.productid''',
                                                            ),
                                                            typeReference:
                                                                getJsonField(
                                                              productListItem,
                                                              r'''$.typereference''',
                                                            ).toString(),
                                                            brandReference:
                                                                getJsonField(
                                                              productListItem,
                                                              r'''$.brandreference''',
                                                            ).toString(),
                                                            productname:
                                                                getJsonField(
                                                              productListItem,
                                                              r'''$.product_name''',
                                                            ).toString(),
                                                            productConfig:
                                                                getJsonField(
                                                              productListItem,
                                                              r'''$.product_config''',
                                                            ).toString(),
                                                            productDescription:
                                                                getJsonField(
                                                              productListItem,
                                                              r'''$.product_description''',
                                                            ).toString(),
                                                            productCode:
                                                                getJsonField(
                                                              productListItem,
                                                              r'''$.productcode''',
                                                            ).toString(),
                                                            index:
                                                                productListIndex,
                                                          ),
                                                        );
                                                      },
                                                    ),
                                                  ),
                                                ),
                                              if (_model.search)
                                                Container(
                                                  height: 455.0,
                                                  decoration: BoxDecoration(),
                                                  child: Visibility(
                                                    visible: _model.search,
                                                    child: FutureBuilder<
                                                        ApiCallResponse>(
                                                      future:
                                                          MasterlistproductsSearchCall
                                                              .call(
                                                        apikey:
                                                            FFAppState().apikey,
                                                        businessid: FFAppState()
                                                            .businessRefID
                                                            .toString(),
                                                        term:
                                                            _model.searchinput,
                                                        limit: 20,
                                                      ),
                                                      builder:
                                                          (context, snapshot) {
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
                                                        final searchListMasterlistproductsSearchResponse =
                                                            snapshot.data!;

                                                        return Builder(
                                                          builder: (context) {
                                                            final productSearch =
                                                                getJsonField(
                                                              searchListMasterlistproductsSearchResponse
                                                                  .jsonBody,
                                                              r'''$''',
                                                            ).toList();

                                                            return ListView
                                                                .builder(
                                                              padding:
                                                                  EdgeInsets
                                                                      .zero,
                                                              primary: false,
                                                              shrinkWrap: true,
                                                              scrollDirection:
                                                                  Axis.vertical,
                                                              itemCount:
                                                                  productSearch
                                                                      .length,
                                                              itemBuilder: (context,
                                                                  productSearchIndex) {
                                                                final productSearchItem =
                                                                    productSearch[
                                                                        productSearchIndex];
                                                                return wrapWithModel(
                                                                  model: _model
                                                                      .masterlistSearchModels
                                                                      .getModel(
                                                                    productSearchIndex
                                                                        .toString(),
                                                                    productSearchIndex,
                                                                  ),
                                                                  updateCallback: () =>
                                                                      safeSetState(
                                                                          () {}),
                                                                  child:
                                                                      MasterlistSearchWidget(
                                                                    key: Key(
                                                                      'Keyyin_${productSearchIndex.toString()}',
                                                                    ),
                                                                    name: valueOrDefault<
                                                                        String>(
                                                                      getJsonField(
                                                                        productSearchItem,
                                                                        r'''$.product_name''',
                                                                      )?.toString(),
                                                                      'NA',
                                                                    ),
                                                                    brand: valueOrDefault<
                                                                        String>(
                                                                      getJsonField(
                                                                        productSearchItem,
                                                                        r'''$.name''',
                                                                      )?.toString(),
                                                                      'NA',
                                                                    ),
                                                                    configuration:
                                                                        valueOrDefault<
                                                                            String>(
                                                                      getJsonField(
                                                                        productSearchItem,
                                                                        r'''$.product_config''',
                                                                      )?.toString(),
                                                                      'NA',
                                                                    ),
                                                                    type: valueOrDefault<
                                                                        String>(
                                                                      getJsonField(
                                                                        productSearchItem,
                                                                        r'''$.type_name''',
                                                                      )?.toString(),
                                                                      'NA',
                                                                    ),
                                                                    productid:
                                                                        getJsonField(
                                                                      productSearchItem,
                                                                      r'''$.productid''',
                                                                    ),
                                                                    tyoeRef:
                                                                        getJsonField(
                                                                      productSearchItem,
                                                                      r'''$.typeid''',
                                                                    ).toString(),
                                                                    brandRef:
                                                                        getJsonField(
                                                                      productSearchItem,
                                                                      r'''$.brandid''',
                                                                    ).toString(),
                                                                    namee:
                                                                        getJsonField(
                                                                      productSearchItem,
                                                                      r'''$.name''',
                                                                    ).toString(),
                                                                    configurationn:
                                                                        getJsonField(
                                                                      productSearchItem,
                                                                      r'''$.product_config''',
                                                                    ).toString(),
                                                                    productDescription:
                                                                        getJsonField(
                                                                      productSearchItem,
                                                                      r'''$.product_description''',
                                                                    ).toString(),
                                                                    productCode:
                                                                        getJsonField(
                                                                      productSearchItem,
                                                                      r'''$.productcode''',
                                                                    ).toString(),
                                                                    index:
                                                                        productSearchIndex,
                                                                  ),
                                                                );
                                                              },
                                                            );
                                                          },
                                                        );
                                                      },
                                                    ),
                                                  ),
                                                ),
                                            ],
                                          ),
                                        ),
                                    ],
                                  ),
                                ].addToEnd(SizedBox(height: 24.0)),
                              ),
                            ),
                          ),
                        ),
                      ],
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
