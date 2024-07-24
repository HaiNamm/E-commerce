import '/components/gradient_button/gradient_button_widget.dart';
import '/components/loading_list/loading_list_widget.dart';
import '/components/top_nav/top_nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'full_cart_view_widget.dart' show FullCartViewWidget;
import 'package:flutter/material.dart';

class FullCartViewModel extends FlutterFlowModel<FullCartViewWidget> {
  ///  Local state fields for this page.

  double? tax;

  double? fee;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for topNav component.
  late TopNavModel topNavModel;
  // Model for gradientButton component.
  late GradientButtonModel gradientButtonModel;
  // Model for loadingList component.
  late LoadingListModel loadingListModel;

  @override
  void initState(BuildContext context) {
    topNavModel = createModel(context, () => TopNavModel());
    gradientButtonModel = createModel(context, () => GradientButtonModel());
    loadingListModel = createModel(context, () => LoadingListModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    topNavModel.dispose();
    gradientButtonModel.dispose();
    loadingListModel.dispose();
  }
}
