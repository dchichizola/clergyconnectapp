import '/backend/api_requests/api_calls.dart';
import '/components/date_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/request_manager.dart';

import 'clergy_dates_widget.dart' show ClergyDatesWidget;
import 'package:flutter/material.dart';

class ClergyDatesModel extends FlutterFlowModel<ClergyDatesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Models for DateCard dynamic component.
  late FlutterFlowDynamicModels<DateCardModel> dateCardModels;

  /// Query cache managers for this widget.

  final _datesDataManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> datesData({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _datesDataManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearDatesDataCache() => _datesDataManager.clear();
  void clearDatesDataCacheKey(String? uniqueKey) =>
      _datesDataManager.clearRequest(uniqueKey);

  @override
  void initState(BuildContext context) {
    dateCardModels = FlutterFlowDynamicModels(() => DateCardModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    dateCardModels.dispose();

    /// Dispose query cache managers for this widget.

    clearDatesDataCache();
  }
}
