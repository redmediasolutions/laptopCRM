import '/backend/api_requests/api_calls.dart';
import '/components/side_bar2_widget.dart';
import '/components/title_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/products/master_products/master_products_components/secondary_sidebar_products/secondary_sidebar_products_widget.dart';
import '/products/stock/stock_components/stock_list_component/stock_list_component_widget.dart';
import '/products/stock/stock_components/stocklistsearchcomponent/stocklistsearchcomponent_widget.dart';
import 'stock_dashboard_widget.dart' show StockDashboardWidget;
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class StockDashboardModel extends FlutterFlowModel<StockDashboardWidget> {
  ///  Local state fields for this page.

  String searchInput = 'Search';

  bool search = false;

  bool delete = false;

  int limit = 5;

  ///  State fields for stateful widgets in this page.

  // Model for TitleBar component.
  late TitleBarModel titleBarModel;
  // Model for sideBar2 component.
  late SideBar2Model sideBar2Model;
  // Model for secondarySidebarProducts component.
  late SecondarySidebarProductsModel secondarySidebarProductsModel;
  // State field(s) for searchInput widget.
  FocusNode? searchInputFocusNode;
  TextEditingController? searchInputTextController;
  String? Function(BuildContext, String?)? searchInputTextControllerValidator;
  // State field(s) for ListView widget.

  PagingController<ApiPagingParams, dynamic>? listViewPagingController;
  Function(ApiPagingParams nextPageMarker)? listViewApiCall;

  // Models for StockListComponent dynamic component.
  late FlutterFlowDynamicModels<StockListComponentModel>
      stockListComponentModels;
  // Models for stocklistsearchcomponent dynamic component.
  late FlutterFlowDynamicModels<StocklistsearchcomponentModel>
      stocklistsearchcomponentModels;

  @override
  void initState(BuildContext context) {
    titleBarModel = createModel(context, () => TitleBarModel());
    sideBar2Model = createModel(context, () => SideBar2Model());
    secondarySidebarProductsModel =
        createModel(context, () => SecondarySidebarProductsModel());
    stockListComponentModels =
        FlutterFlowDynamicModels(() => StockListComponentModel());
    stocklistsearchcomponentModels =
        FlutterFlowDynamicModels(() => StocklistsearchcomponentModel());
  }

  @override
  void dispose() {
    titleBarModel.dispose();
    sideBar2Model.dispose();
    secondarySidebarProductsModel.dispose();
    searchInputFocusNode?.dispose();
    searchInputTextController?.dispose();

    listViewPagingController?.dispose();
    stockListComponentModels.dispose();
    stocklistsearchcomponentModels.dispose();
  }

  /// Additional helper methods.
  PagingController<ApiPagingParams, dynamic> setListViewController(
    Function(ApiPagingParams) apiCall,
  ) {
    listViewApiCall = apiCall;
    return listViewPagingController ??= _createListViewController(apiCall);
  }

  PagingController<ApiPagingParams, dynamic> _createListViewController(
    Function(ApiPagingParams) query,
  ) {
    final controller = PagingController<ApiPagingParams, dynamic>(
      firstPageKey: ApiPagingParams(
        nextPageNumber: 0,
        numItems: 0,
        lastResponse: null,
      ),
    );
    return controller..addPageRequestListener(listViewStockListPage);
  }

  void listViewStockListPage(ApiPagingParams nextPageMarker) =>
      listViewApiCall!(nextPageMarker).then((listViewStockListResponse) {
        final pageItems = (getJsonField(
                  listViewStockListResponse.jsonBody,
                  r'''$''',
                ) ??
                [])
            .toList() as List;
        final newNumItems = nextPageMarker.numItems + pageItems.length;
        listViewPagingController?.appendPage(
          pageItems,
          (pageItems.length > 0)
              ? ApiPagingParams(
                  nextPageNumber: nextPageMarker.nextPageNumber + 1,
                  numItems: newNumItems,
                  lastResponse: listViewStockListResponse,
                )
              : null,
        );
      });
}
