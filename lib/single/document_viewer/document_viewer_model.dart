import '/flutter_flow/flutter_flow_util.dart';
import 'document_viewer_widget.dart' show DocumentViewerWidget;
import 'package:flutter/material.dart';

class DocumentViewerModel extends FlutterFlowModel<DocumentViewerWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
