import '/flutter_flow/flutter_flow_util.dart';
import 'create_item_widget.dart' show CreateItemWidget;
import 'package:flutter/material.dart';

class CreateItemModel extends FlutterFlowModel<CreateItemWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
