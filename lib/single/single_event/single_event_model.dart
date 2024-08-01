import '/flutter_flow/flutter_flow_util.dart';
import 'single_event_widget.dart' show SingleEventWidget;
import 'package:flutter/material.dart';

class SingleEventModel extends FlutterFlowModel<SingleEventWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
