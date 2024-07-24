import '/components/top_nav/top_nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'main_order_history_widget.dart' show MainOrderHistoryWidget;
import 'package:flutter/material.dart';

class MainOrderHistoryModel extends FlutterFlowModel<MainOrderHistoryWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for topNav component.
  late TopNavModel topNavModel;

  @override
  void initState(BuildContext context) {
    topNavModel = createModel(context, () => TopNavModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    topNavModel.dispose();
  }
}
