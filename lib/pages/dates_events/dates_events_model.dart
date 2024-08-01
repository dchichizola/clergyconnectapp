import '/flutter_flow/flutter_flow_util.dart';
import 'dates_events_widget.dart' show DatesEventsWidget;
import 'package:flutter/material.dart';

class DatesEventsModel extends FlutterFlowModel<DatesEventsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
