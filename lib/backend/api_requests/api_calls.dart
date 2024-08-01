import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start ClergyConnect Authenticated Group Code

class ClergyConnectAuthenticatedGroup {
  static String getBaseUrl({
    String? token = '',
  }) =>
      'https://dbbclergy.com.au/wp-json/dbb/v1';
  static Map<String, String> headers = {
    'Authorization': 'Bearer [token]',
  };
  static HomeDataCall homeDataCall = HomeDataCall();
  static GetAllCommunicationsCall getAllCommunicationsCall =
      GetAllCommunicationsCall();
  static GetAllDocumentsCall getAllDocumentsCall = GetAllDocumentsCall();
  static GetAllDatesCall getAllDatesCall = GetAllDatesCall();
  static GetAllEventsCall getAllEventsCall = GetAllEventsCall();
}

class HomeDataCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = ClergyConnectAuthenticatedGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Home Data',
      apiUrl: '$baseUrl/home',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? popularDocuments(dynamic response) => getJsonField(
        response,
        r'''$[0].items''',
        true,
      ) as List?;
  List? upcomingEventsThisMonth(dynamic response) => getJsonField(
        response,
        r'''$[1].items''',
        true,
      ) as List?;
}

class GetAllCommunicationsCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = ClergyConnectAuthenticatedGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get  All Communications',
      apiUrl: '$baseUrl/communications',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: true,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  dynamic communications(dynamic response) => getJsonField(
        response,
        r'''$''',
      );
}

class GetAllDocumentsCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = ClergyConnectAuthenticatedGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get All Documents',
      apiUrl: '$baseUrl/documents',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: true,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? centralisedAdminDocs(dynamic response) => getJsonField(
        response,
        r'''$[0].items''',
        true,
      ) as List?;
  List? ongoingFormationWellbeing(dynamic response) => getJsonField(
        response,
        r'''$[1].items''',
        true,
      ) as List?;
}

class GetAllDatesCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = ClergyConnectAuthenticatedGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get All Dates',
      apiUrl: '$baseUrl/dates',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: true,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? datesPerMonth(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
}

class GetAllEventsCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = ClergyConnectAuthenticatedGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get All Events',
      apiUrl: '$baseUrl/events',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: true,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? eventsPerMonth(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
}

/// End ClergyConnect Authenticated Group Code

/// Start ClergyConnect Unauthenticated Group Code

class ClergyConnectUnauthenticatedGroup {
  static String getBaseUrl() => 'https://dbbclergy.com.au/wp-json/dbb/v1';
  static Map<String, String> headers = {};
  static ForgotPasswordCall forgotPasswordCall = ForgotPasswordCall();
}

class ForgotPasswordCall {
  Future<ApiCallResponse> call({
    String? email = '',
  }) async {
    final baseUrl = ClergyConnectUnauthenticatedGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "username": "$email"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Forgot Password',
      apiUrl: '$baseUrl/forgotpassword',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End ClergyConnect Unauthenticated Group Code

class LogInCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
  }) async {
    final ffApiRequestBody = '''
{
  "username": "$email",
  "password": "$password"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'LogIn',
      apiUrl: 'https://dbbclergy.com.au/wp-json/jwt-auth/v1/token',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? token(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.token''',
      ));
  static String? userEmail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user_email''',
      ));
  static String? userFirstName(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.user_first_name''',
      ));
  static String? userLastName(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.user_last_name''',
      ));
  static String? userRole(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user_roles''',
      ));
  static String? userId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user_id''',
      ));
}

class ValidateTokenCall {
  static Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Validate Token',
      apiUrl: 'https://dbbclergy.com.au/wp-json/jwt-auth/v1/token/validate',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? tokenStatus(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.status''',
      ));
}

class ResetPasswordCall {
  static Future<ApiCallResponse> call({
    String? email = '',
  }) async {
    final ffApiRequestBody = '''
{
"email":"$email"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Reset Password',
      apiUrl: 'https://dbbclergy.com.au/wp-json/bdpwr/v1/reset-password',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SetPasswordCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
    int? code,
  }) async {
    final ffApiRequestBody = '''
{
  "email": "$email",
  "password": "$password",
  "code": "$code"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Set Password',
      apiUrl: 'https://dbbclergy.com.au/wp-json/bdpwr/v1/set-password',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
