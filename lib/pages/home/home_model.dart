import '/backend/api_requests/api_calls.dart';
import '/components/standard_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/request_manager.dart';

import 'home_widget.dart' show HomeWidget;
import 'package:flutter/material.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Models for StandardCard dynamic component.
  late FlutterFlowDynamicModels<StandardCardModel> standardCardModels1;
  // Models for StandardCard dynamic component.
  late FlutterFlowDynamicModels<StandardCardModel> standardCardModels2;

  /// Query cache managers for this widget.

  final _homeDataManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> homeData({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _homeDataManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearHomeDataCache() => _homeDataManager.clear();
  void clearHomeDataCacheKey(String? uniqueKey) =>
      _homeDataManager.clearRequest(uniqueKey);

  @override
  void initState(BuildContext context) {
    standardCardModels1 = FlutterFlowDynamicModels(() => StandardCardModel());
    standardCardModels2 = FlutterFlowDynamicModels(() => StandardCardModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    standardCardModels1.dispose();
    standardCardModels2.dispose();

    /// Dispose query cache managers for this widget.

    clearHomeDataCache();
  }
}
