import '/flutter_flow/flutter_flow_util.dart';
import 'add_address_base_widget.dart' show AddAddressBaseWidget;
import 'package:flutter/material.dart';

class AddAddressBaseModel extends FlutterFlowModel<AddAddressBaseWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for address widget.
  FocusNode? addressFocusNode;
  TextEditingController? addressTextController;
  String? Function(BuildContext, String?)? addressTextControllerValidator;
  // State field(s) for clonableURL widget.
  FocusNode? clonableURLFocusNode;
  TextEditingController? clonableURLTextController;
  String? Function(BuildContext, String?)? clonableURLTextControllerValidator;
  // State field(s) for city widget.
  FocusNode? cityFocusNode;
  TextEditingController? cityTextController;
  String? Function(BuildContext, String?)? cityTextControllerValidator;
  // State field(s) for state widget.
  FocusNode? stateFocusNode;
  TextEditingController? stateTextController;
  String? Function(BuildContext, String?)? stateTextControllerValidator;
  // State field(s) for zip widget.
  FocusNode? zipFocusNode;
  TextEditingController? zipTextController;
  String? Function(BuildContext, String?)? zipTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    addressFocusNode?.dispose();
    addressTextController?.dispose();

    clonableURLFocusNode?.dispose();
    clonableURLTextController?.dispose();

    cityFocusNode?.dispose();
    cityTextController?.dispose();

    stateFocusNode?.dispose();
    stateTextController?.dispose();

    zipFocusNode?.dispose();
    zipTextController?.dispose();
  }
}
