import '/backend/api_requests/api_calls.dart';
import '/components/standard_card_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'home_model.dart';
export 'home_model.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  late HomeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeModel());

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
      future: _model.homeData(
        requestFn: () => ClergyConnectAuthenticatedGroup.homeDataCall.call(
          token: FFAppState().token,
        ),
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).secondary,
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
        final homeHomeDataResponse = snapshot.data!;

        return GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).secondary,
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).primary,
              automaticallyImplyLeading: false,
              title: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                    alignment: const AlignmentDirectional(-1.0, 0.0),
                    child: Text(
                      'Welcome ${valueOrDefault<String>(
                        FFAppState().userFirstName,
                        'there',
                      )}',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Libre Franklin',
                            color: Colors.white,
                            fontSize: 24.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(1.0, 0.0),
                    child: FlutterFlowIconButton(
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
                  ),
                ],
              ),
              actions: const [],
              centerTitle: true,
              elevation: 0.0,
            ),
            body: SafeArea(
              top: true,
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Align(
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                1.0,
                                        height: 180.0,
                                        constraints: const BoxConstraints(
                                          maxWidth: double.infinity,
                                        ),
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                        ),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 20.0, 0.0, 20.0),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            child: SvgPicture.asset(
                                              'assets/images/logo_cdbb.svg',
                                              width: 150.0,
                                              height: 140.0,
                                              fit: BoxFit.contain,
                                              alignment: const Alignment(0.0, 0.0),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        context.pushNamed('News');
                                      },
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                1.0,
                                        height: 180.0,
                                        constraints: const BoxConstraints(
                                          maxWidth: double.infinity,
                                        ),
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                        ),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 20.0, 20.0, 20.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    -1.0, 0.0),
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 15.0),
                                                  child: Text(
                                                    'Latest news',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Libre Franklin',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          fontSize: 20.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    -1.0, 0.0),
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 50.0, 0.0),
                                                  child: Text(
                                                    'View the latest communication to you from your Catholic Diocese of Broken Bay',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Libre Franklin',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          fontSize: 12.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    1.0, 1.0),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: SvgPicture.asset(
                                                    'assets/images/Group.svg',
                                                    width: 30.0,
                                                    height: 20.0,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ].divide(const SizedBox(width: 0.0)),
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Align(
                                  alignment: const AlignmentDirectional(-1.0, 0.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 20.0, 0.0, 20.0),
                                    child: Text(
                                      'Upcoming events this month',
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
                                Builder(
                                  builder: (context) {
                                    final upcomingEventsThisMonth =
                                        ClergyConnectAuthenticatedGroup
                                                .homeDataCall
                                                .upcomingEventsThisMonth(
                                                  homeHomeDataResponse.jsonBody,
                                                )
                                                ?.toList() ??
                                            [];

                                    return Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: List.generate(
                                          upcomingEventsThisMonth.length,
                                          (upcomingEventsThisMonthIndex) {
                                        final upcomingEventsThisMonthItem =
                                            upcomingEventsThisMonth[
                                                upcomingEventsThisMonthIndex];
                                        return InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            context.pushNamed(
                                              'SingleEvent',
                                              queryParameters: {
                                                'id': serializeParam(
                                                  getJsonField(
                                                    upcomingEventsThisMonthItem,
                                                    r'''$.id''',
                                                  ),
                                                  ParamType.int,
                                                ),
                                                'title': serializeParam(
                                                  getJsonField(
                                                    upcomingEventsThisMonthItem,
                                                    r'''$.title''',
                                                  ).toString(),
                                                  ParamType.String,
                                                ),
                                                'description': serializeParam(
                                                  getJsonField(
                                                    upcomingEventsThisMonthItem,
                                                    r'''$.description''',
                                                  ).toString(),
                                                  ParamType.String,
                                                ),
                                                'startDate': serializeParam(
                                                  getJsonField(
                                                    upcomingEventsThisMonthItem,
                                                    r'''$.start_date''',
                                                  ).toString(),
                                                  ParamType.String,
                                                ),
                                                'startTime': serializeParam(
                                                  getJsonField(
                                                    upcomingEventsThisMonthItem,
                                                    r'''$.start_time''',
                                                  ).toString(),
                                                  ParamType.String,
                                                ),
                                                'endDate': serializeParam(
                                                  getJsonField(
                                                    upcomingEventsThisMonthItem,
                                                    r'''$.end_date''',
                                                  ).toString(),
                                                  ParamType.String,
                                                ),
                                                'endTime': serializeParam(
                                                  getJsonField(
                                                    upcomingEventsThisMonthItem,
                                                    r'''$.end_time''',
                                                  ).toString(),
                                                  ParamType.String,
                                                ),
                                                'location': serializeParam(
                                                  getJsonField(
                                                    upcomingEventsThisMonthItem,
                                                    r'''$.location''',
                                                  ).toString(),
                                                  ParamType.String,
                                                ),
                                              }.withoutNulls,
                                            );
                                          },
                                          child: wrapWithModel(
                                            model: _model.standardCardModels1
                                                .getModel(
                                              getJsonField(
                                                upcomingEventsThisMonthItem,
                                                r'''$.id''',
                                              ).toString(),
                                              upcomingEventsThisMonthIndex,
                                            ),
                                            updateCallback: () =>
                                                setState(() {}),
                                            updateOnChange: true,
                                            child: StandardCardWidget(
                                              key: Key(
                                                'Keyh1n_${getJsonField(
                                                  upcomingEventsThisMonthItem,
                                                  r'''$.id''',
                                                ).toString()}',
                                              ),
                                              title: getJsonField(
                                                upcomingEventsThisMonthItem,
                                                r'''$.event_title''',
                                              ).toString(),
                                              description: getJsonField(
                                                upcomingEventsThisMonthItem,
                                                r'''$.location''',
                                              ).toString(),
                                              action: () async {
                                                context.pushNamed(
                                                  'SingleEvent',
                                                  queryParameters: {
                                                    'id': serializeParam(
                                                      getJsonField(
                                                        upcomingEventsThisMonthItem,
                                                        r'''$.id''',
                                                      ),
                                                      ParamType.int,
                                                    ),
                                                    'title': serializeParam(
                                                      getJsonField(
                                                        upcomingEventsThisMonthItem,
                                                        r'''$.event_title''',
                                                      ).toString(),
                                                      ParamType.String,
                                                    ),
                                                    'description':
                                                        serializeParam(
                                                      getJsonField(
                                                        upcomingEventsThisMonthItem,
                                                        r'''$.event_description''',
                                                      ).toString(),
                                                      ParamType.String,
                                                    ),
                                                    'startDate': serializeParam(
                                                      getJsonField(
                                                        upcomingEventsThisMonthItem,
                                                        r'''$.start_date''',
                                                      ).toString(),
                                                      ParamType.String,
                                                    ),
                                                    'startTime': serializeParam(
                                                      getJsonField(
                                                        upcomingEventsThisMonthItem,
                                                        r'''$.start_time''',
                                                      ).toString(),
                                                      ParamType.String,
                                                    ),
                                                    'endDate': serializeParam(
                                                      getJsonField(
                                                        upcomingEventsThisMonthItem,
                                                        r'''$.end_date''',
                                                      ).toString(),
                                                      ParamType.String,
                                                    ),
                                                    'endTime': serializeParam(
                                                      getJsonField(
                                                        upcomingEventsThisMonthItem,
                                                        r'''$.end_time''',
                                                      ).toString(),
                                                      ParamType.String,
                                                    ),
                                                    'location': serializeParam(
                                                      getJsonField(
                                                        upcomingEventsThisMonthItem,
                                                        r'''$.location''',
                                                      ).toString(),
                                                      ParamType.String,
                                                    ),
                                                  }.withoutNulls,
                                                );
                                              },
                                            ),
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
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Align(
                                  alignment: const AlignmentDirectional(-1.0, 0.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 20.0, 0.0, 20.0),
                                    child: Text(
                                      'Administrative documents',
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
                                Builder(
                                  builder: (context) {
                                    final popularDocuments =
                                        ClergyConnectAuthenticatedGroup
                                                .homeDataCall
                                                .popularDocuments(
                                                  homeHomeDataResponse.jsonBody,
                                                )
                                                ?.toList() ??
                                            [];

                                    return Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children:
                                          List.generate(popularDocuments.length,
                                              (popularDocumentsIndex) {
                                        final popularDocumentsItem =
                                            popularDocuments[
                                                popularDocumentsIndex];
                                        return wrapWithModel(
                                          model: _model.standardCardModels2
                                              .getModel(
                                            getJsonField(
                                              popularDocumentsItem,
                                              r'''$.id''',
                                            ).toString(),
                                            popularDocumentsIndex,
                                          ),
                                          updateCallback: () => setState(() {}),
                                          updateOnChange: true,
                                          child: StandardCardWidget(
                                            key: Key(
                                              'Keyzth_${getJsonField(
                                                popularDocumentsItem,
                                                r'''$.id''',
                                              ).toString()}',
                                            ),
                                            title: getJsonField(
                                              popularDocumentsItem,
                                              r'''$.title''',
                                            ).toString(),
                                            description: getJsonField(
                                              popularDocumentsItem,
                                              r'''$.date''',
                                            ).toString(),
                                            action: () async {
                                              await launchURL(getJsonField(
                                                popularDocumentsItem,
                                                r'''$.link''',
                                              ).toString());
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
          ),
        );
      },
    );
  }
}
