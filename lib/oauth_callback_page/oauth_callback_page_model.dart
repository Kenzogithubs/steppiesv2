import '/flutter_flow/flutter_flow_util.dart';
import 'oauth_callback_page_widget.dart' show OauthCallbackPageWidget;
import 'package:flutter/material.dart';

class OauthCallbackPageModel extends FlutterFlowModel<OauthCallbackPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
