import '/auth/base_auth_user_provider.dart';
import '/auth/firebase_auth/auth_util.dart';
import '/components/background_primary_view_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'setting_page_widget.dart' show SettingPageWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SettingPageModel extends FlutterFlowModel<SettingPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for BackgroundPrimaryView component.
  late BackgroundPrimaryViewModel backgroundPrimaryViewModel;

  @override
  void initState(BuildContext context) {
    backgroundPrimaryViewModel =
        createModel(context, () => BackgroundPrimaryViewModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    backgroundPrimaryViewModel.dispose();
  }
}
