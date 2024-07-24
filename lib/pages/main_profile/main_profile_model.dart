import '/components/top_nav/top_nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'main_profile_widget.dart' show MainProfileWidget;
import 'package:flutter/material.dart';

class MainProfileModel extends FlutterFlowModel<MainProfileWidget> {
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
