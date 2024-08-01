import '/components/standard_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'ongoing_form_wellbeing_widget.dart' show OngoingFormWellbeingWidget;
import 'package:flutter/material.dart';

class OngoingFormWellbeingModel
    extends FlutterFlowModel<OngoingFormWellbeingWidget> {
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
