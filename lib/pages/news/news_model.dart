import '/backend/api_requests/api_calls.dart';
import '/components/standard_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/request_manager.dart';

import 'news_widget.dart' show NewsWidget;
import 'package:flutter/material.dart';

class NewsModel extends FlutterFlowModel<NewsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Models for StandardCard dynamic component.
  late FlutterFlowDynamicModels<StandardCardModel> standardCardModels;

  /// Query cache managers for this widget.

  final _communicationsDataManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> communicationsData({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _communicationsDataManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearCommunicationsDataCache() => _communicationsDataManager.clear();
  void clearCommunicationsDataCacheKey(String? uniqueKey) =>
      _communicationsDataManager.clearRequest(uniqueKey);

  @override
  void initState(BuildContext context) {
    standardCardModels = FlutterFlowDynamicModels(() => StandardCardModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    standardCardModels.dispose();

    /// Dispose query cache managers for this widget.

    clearCommunicationsDataCache();
  }
}
