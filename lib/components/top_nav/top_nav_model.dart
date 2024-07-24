import '/components/main_logo/main_logo_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'top_nav_widget.dart' show TopNavWidget;
import 'package:flutter/material.dart';

class TopNavModel extends FlutterFlowModel<TopNavWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for mainLogo component.
  late MainLogoModel mainLogoModel;

  @override
  void initState(BuildContext context) {
    mainLogoModel = createModel(context, () => MainLogoModel());
  }

  @override
  void dispose() {
    mainLogoModel.dispose();
  }
}
