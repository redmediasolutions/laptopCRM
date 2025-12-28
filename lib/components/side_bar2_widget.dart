import '/components/sidebarv2_menu_item_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'side_bar2_model.dart';
export 'side_bar2_model.dart';

class SideBar2Widget extends StatefulWidget {
  const SideBar2Widget({
    super.key,
    this.backgroundColor,
    this.iconColor,
    this.iconFillColor,
    required this.selectedIndex,
  });

  final Color? backgroundColor;
  final Color? iconColor;
  final Color? iconFillColor;
  final int? selectedIndex;

  @override
  State<SideBar2Widget> createState() => _SideBar2WidgetState();
}

class _SideBar2WidgetState extends State<SideBar2Widget> {
  late SideBar2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SideBar2Model());

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
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              context.pushNamed(DashboardWidget.routeName);
            },
            child: wrapWithModel(
              model: _model.sidebarv2MenuItemModel1,
              updateCallback: () => safeSetState(() {}),
              child: Sidebarv2MenuItemWidget(
                icon: Icon(
                  Icons.space_dashboard,
                  color: FlutterFlowTheme.of(context).alternate,
                  size: 18.0,
                ),
                backgroundColor: FlutterFlowTheme.of(context).secondaryText,
                positionindex: 1,
                showbackground: false,
                selectedIndex: widget.selectedIndex!,
                menuName: 'Dashboard',
              ),
            ),
          ),
          Divider(
            height: 12.0,
            thickness: 2.0,
            color: FlutterFlowTheme.of(context).accent1,
          ),
          InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              context.pushNamed(ProductsLandingPageWidget.routeName);
            },
            child: wrapWithModel(
              model: _model.sidebarv2MenuItemModel2,
              updateCallback: () => safeSetState(() {}),
              child: Sidebarv2MenuItemWidget(
                icon: Icon(
                  Icons.view_list,
                  color: FlutterFlowTheme.of(context).alternate,
                  size: 26.0,
                ),
                backgroundColor: FlutterFlowTheme.of(context).primary,
                positionindex: 2,
                showbackground: false,
                selectedIndex: widget.selectedIndex!,
                menuName: 'Products',
              ),
            ),
          ),
          InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              context.pushNamed(VendorsDashboardWidget.routeName);
            },
            child: wrapWithModel(
              model: _model.sidebarv2MenuItemModel3,
              updateCallback: () => safeSetState(() {}),
              child: Sidebarv2MenuItemWidget(
                icon: Icon(
                  Icons.shopping_bag,
                  color: FlutterFlowTheme.of(context).alternate,
                  size: 26.0,
                ),
                backgroundColor: FlutterFlowTheme.of(context).primary,
                positionindex: 3,
                showbackground: false,
                selectedIndex: widget.selectedIndex!,
                menuName: 'Vendors',
              ),
            ),
          ),
          InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              context.pushNamed(InvoicesWidget.routeName);
            },
            child: wrapWithModel(
              model: _model.sidebarv2MenuItemModel4,
              updateCallback: () => safeSetState(() {}),
              child: Sidebarv2MenuItemWidget(
                icon: Icon(
                  Icons.account_balance_wallet_rounded,
                  color: FlutterFlowTheme.of(context).alternate,
                  size: 26.0,
                ),
                backgroundColor: FlutterFlowTheme.of(context).primary,
                positionindex: 4,
                showbackground: false,
                selectedIndex: widget.selectedIndex!,
                menuName: 'Accounts',
              ),
            ),
          ),
          InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              context.pushNamed(CustomersDashboardWidget.routeName);
            },
            child: wrapWithModel(
              model: _model.sidebarv2MenuItemModel5,
              updateCallback: () => safeSetState(() {}),
              child: Sidebarv2MenuItemWidget(
                icon: Icon(
                  Icons.people_alt,
                  color: FlutterFlowTheme.of(context).alternate,
                  size: 26.0,
                ),
                backgroundColor: FlutterFlowTheme.of(context).primary,
                positionindex: 5,
                showbackground: false,
                selectedIndex: widget.selectedIndex!,
                menuName: 'customers',
              ),
            ),
          ),
        ].divide(SizedBox(height: 16.0)),
      ),
    );
  }
}
