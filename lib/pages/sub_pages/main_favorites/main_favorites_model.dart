import '/components/product_list_view/product_list_view_widget.dart';
import '/components/top_nav/top_nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'main_favorites_widget.dart' show MainFavoritesWidget;
import 'package:flutter/material.dart';

class MainFavoritesModel extends FlutterFlowModel<MainFavoritesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for topNav component.
  late TopNavModel topNavModel;
  // Models for product_listView dynamic component.
  late FlutterFlowDynamicModels<ProductListViewModel> productListViewModels;

  @override
  void initState(BuildContext context) {
    topNavModel = createModel(context, () => TopNavModel());
    productListViewModels =
        FlutterFlowDynamicModels(() => ProductListViewModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    topNavModel.dispose();
    productListViewModels.dispose();
  }
}
