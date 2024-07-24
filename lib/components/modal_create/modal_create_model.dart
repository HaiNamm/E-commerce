import '/flutter_flow/flutter_flow_util.dart';
import 'modal_create_widget.dart' show ModalCreateWidget;
import 'package:flutter/material.dart';

class ModalCreateModel extends FlutterFlowModel<ModalCreateWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for projectName widget.
  FocusNode? projectNameFocusNode;
  TextEditingController? projectNameTextController;
  String? Function(BuildContext, String?)? projectNameTextControllerValidator;
  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;
  // State field(s) for projectURL widget.
  FocusNode? projectURLFocusNode;
  TextEditingController? projectURLTextController;
  String? Function(BuildContext, String?)? projectURLTextControllerValidator;
  // State field(s) for clonableURL widget.
  FocusNode? clonableURLFocusNode;
  TextEditingController? clonableURLTextController;
  String? Function(BuildContext, String?)? clonableURLTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    projectNameFocusNode?.dispose();
    projectNameTextController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();

    projectURLFocusNode?.dispose();
    projectURLTextController?.dispose();

    clonableURLFocusNode?.dispose();
    clonableURLTextController?.dispose();
  }
}
