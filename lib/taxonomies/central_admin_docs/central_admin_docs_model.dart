import '/components/standard_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'central_admin_docs_widget.dart' show CentralAdminDocsWidget;
import 'package:flutter/material.dart';

class CentralAdminDocsModel extends FlutterFlowModel<CentralAdminDocsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Models for StandardCard dynamic component.
  late FlutterFlowDynamicModels<StandardCardModel> standardCardModels;

  @override
  void initState(BuildContext context) {
    standardCardModels = FlutterFlowDynamicModels(() => StandardCardModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    standardCardModels.dispose();
  }
}
