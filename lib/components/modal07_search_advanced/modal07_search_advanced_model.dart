import '/flutter_flow/flutter_flow_util.dart';
import 'modal07_search_advanced_widget.dart' show Modal07SearchAdvancedWidget;
import 'package:flutter/material.dart';

class Modal07SearchAdvancedModel
    extends FlutterFlowModel<Modal07SearchAdvancedWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    tabBarController?.dispose();
  }
}
