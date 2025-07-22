import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'order_summary_widget.dart' show OrderSummaryWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class OrderSummaryModel extends FlutterFlowModel<OrderSummaryWidget> {
  ///  Local state fields for this page.

  double lastprice = 0.0;

  int quanitty = 0;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - orderGenerator] action in Button widget.
  String? gen;
  // Stores action output result for [Backend Call - API (CreatePaymnet Orders)] action in Button widget.
  ApiCallResponse? apiResultzi5;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
