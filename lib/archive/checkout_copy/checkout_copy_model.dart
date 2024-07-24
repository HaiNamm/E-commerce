import '/components/top_nav/top_nav_widget.dart';
import '/components/u_i_marker/u_i_marker_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'checkout_copy_widget.dart' show CheckoutCopyWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class CheckoutCopyModel extends FlutterFlowModel<CheckoutCopyWidget> {
  ///  Local state fields for this page.

  int stepNumber = 1;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for topNav component.
  late TopNavModel topNavModel;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController;

  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue;
  // Model for UI_Marker component.
  late UIMarkerModel uIMarkerModel;

  @override
  void initState(BuildContext context) {
    topNavModel = createModel(context, () => TopNavModel());
    uIMarkerModel = createModel(context, () => UIMarkerModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    topNavModel.dispose();
    expandableExpandableController.dispose();
    uIMarkerModel.dispose();
  }
}
