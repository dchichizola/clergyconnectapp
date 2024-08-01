import '/backend/api_requests/api_calls.dart';
import '/components/standard_card_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'news_model.dart';
export 'news_model.dart';

class NewsWidget extends StatefulWidget {
  const NewsWidget({super.key});

  @override
  State<NewsWidget> createState() => _NewsWidgetState();
}

class _NewsWidgetState extends State<NewsWidget> {
  late NewsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NewsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return FutureBuilder<ApiCallResponse>(
      future: _model.communicationsData(
        requestFn: () =>
            ClergyConnectAuthenticatedGroup.getAllCommunicationsCall.call(
          token: FFAppState().token,
        ),
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        final newsGetAllCommunicationsResponse = snapshot.data!;

        return GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).primary,
              automaticallyImplyLeading: false,
              title: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FlutterFlowIconButton(
                    borderRadius: 20.0,
                    borderWidth: 1.0,
                    buttonSize: 40.0,
                    icon: Icon(
                      Icons.arrow_back,
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      size: 24.0,
                    ),
                    onPressed: () async {
                      context.safePop();
                    },
                  ),
                  FlutterFlowIconButton(
                    borderRadius: 20.0,
                    borderWidth: 1.0,
                    buttonSize: 40.0,
                    icon: Icon(
                      Icons.settings_rounded,
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      size: 24.0,
                    ),
                    onPressed: () async {
                      context.pushNamed('Settings');
                    },
                  ),
                ],
              ),
              actions: const [],
              centerTitle: false,
              elevation: 2.0,
            ),
            body: SafeArea(
              top: true,
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(-1.0, 0.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 20.0, 0.0, 20.0),
                            child: Text(
                              'Latest news',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Libre Franklin',
                                    fontSize: 18.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Builder(
                                builder: (context) {
                                  final latestNews =
                                      ClergyConnectAuthenticatedGroup
                                          .getAllCommunicationsCall
                                          .communications(
                                            newsGetAllCommunicationsResponse
                                                .jsonBody,
                                          )
                                          .toList();

                                  return Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: List.generate(latestNews.length,
                                        (latestNewsIndex) {
                                      final latestNewsItem =
                                          latestNews[latestNewsIndex];
                                      return wrapWithModel(
                                        model:
                                            _model.standardCardModels.getModel(
                                          getJsonField(
                                            latestNewsItem,
                                            r'''$.id''',
                                          ).toString(),
                                          latestNewsIndex,
                                        ),
                                        updateCallback: () => setState(() {}),
                                        updateOnChange: true,
                                        child: StandardCardWidget(
                                          key: Key(
                                            'Key0t2_${getJsonField(
                                              latestNewsItem,
                                              r'''$.id''',
                                            ).toString()}',
                                          ),
                                          title: 'News',
                                          description: getJsonField(
                                            latestNewsItem,
                                            r'''$.title''',
                                          ).toString(),
                                          action: () async {
                                            context.pushNamed(
                                              'SingleNews',
                                              queryParameters: {
                                                'id': serializeParam(
                                                  getJsonField(
                                                    latestNewsItem,
                                                    r'''$.id''',
                                                  ),
                                                  ParamType.int,
                                                ),
                                                'title': serializeParam(
                                                  getJsonField(
                                                    latestNewsItem,
                                                    r'''$.title''',
                                                  ).toString(),
                                                  ParamType.String,
                                                ),
                                                'content': serializeParam(
                                                  getJsonField(
                                                    latestNewsItem,
                                                    r'''$.content''',
                                                  ).toString(),
                                                  ParamType.String,
                                                ),
                                                'date': serializeParam(
                                                  getJsonField(
                                                    latestNewsItem,
                                                    r'''$.date''',
                                                  ).toString(),
                                                  ParamType.String,
                                                ),
                                              }.withoutNulls,
                                            );
                                          },
                                        ),
                                      );
                                    }),
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      ].divide(const SizedBox(width: 10.0)),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
