import '/backend/api_requests/api_calls.dart';
import '/components/sidebar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/master_products/master_product_list/master_product_list_widget.dart';
import '/master_products/masterlist_search/masterlist_search_widget.dart';
import 'master_product_dashboard_widget.dart' show MasterProductDashboardWidget;
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class MasterProductDashboardModel
    extends FlutterFlowModel<MasterProductDashboardWidget> {
  ///  Local state fields for this page.

  String? type;

  bool isFilter = false;

  String searchinput = 'Search';

  bool search = false;

  ///  State fields for stateful widgets in this page.

  // Model for sidebar component.
  late SidebarModel sidebarModel;
  // State field(s) for searchInput widget.
  FocusNode? searchInputFocusNode;
  TextEditingController? searchInputTextController;
  String? Function(BuildContext, String?)? searchInputTextControllerValidator;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // State field(s) for ListView widget.

  PagingController<ApiPagingParams, dynamic>? listViewPagingController;
  Function(ApiPagingParams nextPageMarker)? listViewApiCall;

  // Models for masterProductList dynamic component.
  late FlutterFlowDynamicModels<MasterProductListModel> masterProductListModels;
  // Models for masterlistSearch dynamic component.
  late FlutterFlowDynamicModels<MasterlistSearchModel> masterlistSearchModels;

  @override
  void initState(BuildContext context) {
    sidebarModel = createModel(context, () => SidebarModel());
    masterProductListModels =
        FlutterFlowDynamicModels(() => MasterProductListModel());
    masterlistSearchModels =
        FlutterFlowDynamicModels(() => MasterlistSearchModel());
  }

  @override
  void dispose() {
    sidebarModel.dispose();
    searchInputFocusNode?.dispose();
    searchInputTextController?.dispose();

    listViewPagingController?.dispose();
    masterProductListModels.dispose();
    masterlistSearchModels.dispose();
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
    return controller..addPageRequestListener(listViewMasterlistproductsPage);
  }

  void listViewMasterlistproductsPage(ApiPagingParams nextPageMarker) =>
      listViewApiCall!(nextPageMarker)
          .then((listViewMasterlistproductsResponse) {
        final pageItems = (getJsonField(
                  listViewMasterlistproductsResponse.jsonBody,
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
                  lastResponse: listViewMasterlistproductsResponse,
                )
              : null,
        );
      });
}
