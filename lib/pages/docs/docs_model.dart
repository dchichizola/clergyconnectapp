import '/flutter_flow/flutter_flow_util.dart';
import 'docs_widget.dart' show DocsWidget;
import 'package:flutter/material.dart';

class DocsModel extends FlutterFlowModel<DocsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
