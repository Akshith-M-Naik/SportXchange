import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class CreatePaymnetOrdersCall {
  static Future<ApiCallResponse> call({
    String? orderId = '',
    double? orderAmount,
    String? orderCurrency = '',
    String? customerId = '',
    String? customerEmail = '',
    String? customerPhone = '',
    String? customerName = '',
  }) async {
    final ffApiRequestBody = '''
{
  "customer_details": {
    "customer_id": "${customerId}",
    "customer_email": "${customerEmail}",
    "customer_phone": "${customerPhone}",
    "customer_name": "${customerName} "
  },
  "order_id": "${orderId}",
  "order_amount": ${orderAmount},
  "order_currency": "${orderCurrency}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'CreatePaymnet Orders',
      apiUrl: 'https://sandbox.cashfree.com/pg/orders',
      callType: ApiCallType.POST,
      headers: {
        'accept': 'application/json',
        'x-api-version': '2023-08-01',
        'x-client-id': 'TEST10250718ff962043ac0a4e300e5481705201',
        'x-client-secret':
            'cfsk_ma_test_18c17dca8fb9abc3b5b8cbb1477a014a_50aa3b9f',
      },
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

  static String? cforderid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.cf_order_id''',
      ));
  static String? createdat(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.created_at''',
      ));
  static String? customerdetailscustomerid(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.customer_details.customer_id''',
      ));
  static String? customerdetailscustomername(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.customer_details.customer_name''',
      ));
  static String? customerdetailscustomeremail(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.customer_details.customer_email''',
      ));
  static String? customerdetailscustomerphone(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.customer_details.customer_phone''',
      ));
  static String? entity(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.entity''',
      ));
  static int? orderamount(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.order_amount''',
      ));
  static String? ordercurrency(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.order_currency''',
      ));
  static String? orderexpirytime(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.order_expiry_time''',
      ));
  static String? orderid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.order_id''',
      ));
  static String? orderstatus(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.order_status''',
      ));
  static String? paymentsessionid(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.payment_session_id''',
      ));
  static String? errormessage(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  static String? errorcode(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.code''',
      ));
  static String? errortype(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
}

class OrderPaymentUPICall {
  static Future<ApiCallResponse> call({
    String? paymentSessionId = '',
    String? channel = '',
    String? upiId = '',
    int? upiExpiryMinutes,
    bool? upiRedirect,
  }) async {
    final ffApiRequestBody = '''
{
  "payment_method": {
    "upi": {
      "channel": "${channel}",
      "upi_id": "${upiId}",
      "upi_expiry_minutes": ${upiExpiryMinutes},
      "upi_redirect": ${upiRedirect}
    }
  },
  "payment_session_id": "${paymentSessionId}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Order Payment UPI',
      apiUrl: 'https://sandbox.cashfree.com/pg/orders/sessions',
      callType: ApiCallType.POST,
      headers: {
        'accept': 'application/json',
        'x-api-version': '2023-08-01',
        'x-client-id': 'TEST10250718ff962043ac0a4e300e5481705201',
        'x-client-secret':
            'cfsk_ma_test_18c17dca8fb9abc3b5b8cbb1477a014a_50aa3b9f',
      },
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

  static String? cfpaymentid(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.cf_payment_id''',
      ));
  static String? channel(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.channel''',
      ));
  static String? bhim(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.payload.bhim''',
      ));
  static String? paymentdefault(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.payload.default''',
      ));
  static String? gpay(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.payload.gpay''',
      ));
  static String? paytm(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.payload.paytm''',
      ));
  static String? phonepe(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.payload.phonepe''',
      ));
  static String? web(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.payload.web''',
      ));
  static int? paymentamount(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.payment_amount''',
      ));
  static String? paymentmethod(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.payment_method''',
      ));
  static String? errormessage(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  static String? errorcode(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.code''',
      ));
  static String? errortype(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
}

class OrderPaymentCardCall {
  static Future<ApiCallResponse> call({
    String? paymentSessionId = '',
    String? channel = 'post',
    String? cardNumber = '',
    String? cardHolderName = '',
    String? cardExpiryMm = '',
    String? cardExpiryYy = '',
    String? cardCvv = '',
  }) async {
    final ffApiRequestBody = '''
{
  "payment_method": {
    "card": {
      "channel": "${channel}",
      "card_number": "${cardNumber}",
      "card_holder_name": "${cardHolderName}",
      "card_expiry_mm": "${cardExpiryMm}",
      "card_expiry_yy": "${cardExpiryYy}",
      "card_cvv": "${cardCvv}"
    }
  },
  "payment_session_id": "${paymentSessionId}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Order Payment Card',
      apiUrl: 'https://sandbox.cashfree.com/pg/orders/sessions',
      callType: ApiCallType.POST,
      headers: {
        'accept': 'application/json',
        'x-api-version': '2023-08-01',
        'x-client-id': 'TEST10250718ff962043ac0a4e300e5481705201',
        'x-client-secret':
            'cfsk_ma_test_18c17dca8fb9abc3b5b8cbb1477a014a_50aa3b9f',
      },
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

  static String? cfpaymentid(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.cf_payment_id''',
      ));
  static String? channel(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.channel''',
      ));
  static String? datapayloadbhim(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.payload.bhim''',
      ));
  static String? datapayloaddefault(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.payload.default''',
      ));
  static String? datapayloadgpay(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.payload.gpay''',
      ));
  static String? datapayloadpaytm(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.payload.paytm''',
      ));
  static String? datapayloadphonepe(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.payload.phonepe''',
      ));
  static String? datapayloadweb(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.payload.web''',
      ));
  static int? paymentamount(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.payment_amount''',
      ));
  static String? paymentmethod(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.payment_method''',
      ));
  static String? errormessage(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  static String? errorcode(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.code''',
      ));
  static String? errortype(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  static String? action(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.action''',
      ));
}

class OrderPaymentNetCall {
  static Future<ApiCallResponse> call({
    String? paymentSessionId = '',
    String? channel = '',
    int? netbankingBankCode,
    String? netbankingBankName = '',
  }) async {
    final ffApiRequestBody = '''
{
  "payment_method": {
    "netbanking": {
      "channel": "${channel}",
      "netbanking_bank_code": ${netbankingBankCode},
      "netbanking_bank_name": "${netbankingBankName}"
    }
  },
  "payment_session_id": "${paymentSessionId}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Order Payment Net',
      apiUrl: 'https://sandbox.cashfree.com/pg/orders/sessions',
      callType: ApiCallType.POST,
      headers: {
        'accept': 'application/json',
        'x-api-version': '2023-08-01',
        'x-client-id': 'TEST10250718ff962043ac0a4e300e5481705201',
        'x-client-secret':
            'cfsk_ma_test_18c17dca8fb9abc3b5b8cbb1477a014a_50aa3b9f',
      },
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

  static String? cfpaymentid(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.cf_payment_id''',
      ));
  static String? channel(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.channel''',
      ));
  static String? datapayloadbhim(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.payload.bhim''',
      ));
  static String? datapayloaddefault(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.payload.default''',
      ));
  static String? datapayloadgpay(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.payload.gpay''',
      ));
  static String? datapayloadpaytm(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.payload.paytm''',
      ));
  static String? datapayloadphonepe(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.payload.phonepe''',
      ));
  static String? datapayloadweb(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.payload.web''',
      ));
  static int? paymentamount(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.payment_amount''',
      ));
  static String? paymentmethod(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.payment_method''',
      ));
  static String? errormessage(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  static String? errorcode(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.code''',
      ));
  static String? errortype(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
}

class OrderPaymentAppCall {
  static Future<ApiCallResponse> call({
    String? paymentSessionId = '',
    String? channel = '',
    String? provider = '',
    String? phone = '',
  }) async {
    final ffApiRequestBody = '''
{
  "payment_method": {
    "app": {
      "provider": "${provider}",
      "channel": "${channel}",
      "phone": "${phone}"
    }
  },
  "payment_session_id": "${paymentSessionId}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Order Payment App',
      apiUrl: 'https://sandbox.cashfree.com/pg/orders/sessions',
      callType: ApiCallType.POST,
      headers: {
        'accept': 'application/json',
        'x-api-version': '2023-08-01',
        'x-client-id': 'TEST10250718ff962043ac0a4e300e5481705201',
        'x-client-secret':
            'cfsk_ma_test_18c17dca8fb9abc3b5b8cbb1477a014a_50aa3b9f',
      },
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

  static String? cfpaymentid(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.cf_payment_id''',
      ));
  static String? channel(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.channel''',
      ));
  static String? datapayloadbhim(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.payload.bhim''',
      ));
  static String? datapayloaddefault(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.payload.default''',
      ));
  static String? datapayloadgpay(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.payload.gpay''',
      ));
  static String? datapayloadpaytm(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.payload.paytm''',
      ));
  static String? datapayloadphonepe(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.payload.phonepe''',
      ));
  static String? datapayloadweb(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.payload.web''',
      ));
  static int? paymentamount(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.payment_amount''',
      ));
  static String? paymentmethod(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.payment_method''',
      ));
  static String? errormessage(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  static String? errorcode(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.code''',
      ));
  static String? errortype(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
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
  if (item is DocumentReference) {
    return item.path;
  }
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
