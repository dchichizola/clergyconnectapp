import '/flutter_flow/flutter_flow_util.dart';
import 'single_news_widget.dart' show SingleNewsWidget;
import 'package:flutter/material.dart';

class SingleNewsModel extends FlutterFlowModel<SingleNewsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
