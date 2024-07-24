import '/components/edit_profile_form/edit_profile_form_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'create_profile_widget.dart' show CreateProfileWidget;
import 'package:flutter/material.dart';

class CreateProfileModel extends FlutterFlowModel<CreateProfileWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for editProfileForm component.
  late EditProfileFormModel editProfileFormModel;

  @override
  void initState(BuildContext context) {
    editProfileFormModel = createModel(context, () => EditProfileFormModel());
  }

  @override
  void dispose() {
    editProfileFormModel.dispose();
  }
}
