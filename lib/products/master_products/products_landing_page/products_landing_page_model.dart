import '/components/side_bar2_widget.dart';
import '/components/title_bar_widget.dart';
import '/dashboards/dashboard_components/dashboard_items/dashboard_items_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/products/master_products/master_products_components/master_product_list/master_product_list_widget.dart';
import '/products/master_products/master_products_components/secondary_sidebar_products/secondary_sidebar_products_widget.dart';
import '/products/stock/stock_components/stock_list_component/stock_list_component_widget.dart';
import 'products_landing_page_widget.dart' show ProductsLandingPageWidget;
import 'package:flutter/material.dart';

class ProductsLandingPageModel
    extends FlutterFlowModel<ProductsLandingPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for TitleBar component.
  late TitleBarModel titleBarModel;
  // Model for sideBar2 component.
  late SideBar2Model sideBar2Model;
  // Model for secondarySidebarProducts component.
  late SecondarySidebarProductsModel secondarySidebarProductsModel;
  // Model for dashboardItems component.
  late DashboardItemsModel dashboardItemsModel1;
  // Model for dashboardItems component.
  late DashboardItemsModel dashboardItemsModel2;
  // Model for yesterdaysSale.
  late DashboardItemsModel yesterdaysSaleModel;
  // Model for dashboardItems component.
  late DashboardItemsModel dashboardItemsModel3;
  // Models for masterProductList dynamic component.
  late FlutterFlowDynamicModels<MasterProductListModel> masterProductListModels;
  // Models for StockListComponent dynamic component.
  late FlutterFlowDynamicModels<StockListComponentModel>
      stockListComponentModels;

  @override
  void initState(BuildContext context) {
    titleBarModel = createModel(context, () => TitleBarModel());
    sideBar2Model = createModel(context, () => SideBar2Model());
    secondarySidebarProductsModel =
        createModel(context, () => SecondarySidebarProductsModel());
    dashboardItemsModel1 = createModel(context, () => DashboardItemsModel());
    dashboardItemsModel2 = createModel(context, () => DashboardItemsModel());
    yesterdaysSaleModel = createModel(context, () => DashboardItemsModel());
    dashboardItemsModel3 = createModel(context, () => DashboardItemsModel());
    masterProductListModels =
        FlutterFlowDynamicModels(() => MasterProductListModel());
    stockListComponentModels =
        FlutterFlowDynamicModels(() => StockListComponentModel());
  }

  @override
  void dispose() {
    titleBarModel.dispose();
    sideBar2Model.dispose();
    secondarySidebarProductsModel.dispose();
    dashboardItemsModel1.dispose();
    dashboardItemsModel2.dispose();
    yesterdaysSaleModel.dispose();
    dashboardItemsModel3.dispose();
    masterProductListModels.dispose();
    stockListComponentModels.dispose();
  }
}
