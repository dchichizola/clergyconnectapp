import '/backend/api_requests/api_calls.dart';
import '/components/event_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/request_manager.dart';

import 'upcoming_events_widget.dart' show UpcomingEventsWidget;
import 'package:flutter/material.dart';

class UpcomingEventsModel extends FlutterFlowModel<UpcomingEventsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Models for EventCard dynamic component.
  late FlutterFlowDynamicModels<EventCardModel> eventCardModels;

  /// Query cache managers for this widget.

  final _eventsDataManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> eventsData({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _eventsDataManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearEventsDataCache() => _eventsDataManager.clear();
  void clearEventsDataCacheKey(String? uniqueKey) =>
      _eventsDataManager.clearRequest(uniqueKey);

  @override
  void initState(BuildContext context) {
    eventCardModels = FlutterFlowDynamicModels(() => EventCardModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    eventCardModels.dispose();

    /// Dispose query cache managers for this widget.

    clearEventsDataCache();
  }
}
