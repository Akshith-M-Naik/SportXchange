import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'password_widget.dart' show PasswordWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PasswordModel extends FlutterFlowModel<PasswordWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for Cu_pass widget.
  FocusNode? cuPassFocusNode;
  TextEditingController? cuPassTextController;
  String? Function(BuildContext, String?)? cuPassTextControllerValidator;
  // State field(s) for Pass widget.
  FocusNode? passFocusNode;
  TextEditingController? passTextController;
  late bool passVisibility;
  String? Function(BuildContext, String?)? passTextControllerValidator;
  String? _passTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Enter your new password';
    }

    if (val.length < 8) {
      return 'Your password must contain 8 characters';
    }

    return null;
  }

  // State field(s) for C_pass widget.
  FocusNode? cPassFocusNode;
  TextEditingController? cPassTextController;
  late bool cPassVisibility;
  String? Function(BuildContext, String?)? cPassTextControllerValidator;
  String? _cPassTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Confirm your password';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    passVisibility = false;
    passTextControllerValidator = _passTextControllerValidator;
    cPassVisibility = false;
    cPassTextControllerValidator = _cPassTextControllerValidator;
  }

  @override
  void dispose() {
    cuPassFocusNode?.dispose();
    cuPassTextController?.dispose();

    passFocusNode?.dispose();
    passTextController?.dispose();

    cPassFocusNode?.dispose();
    cPassTextController?.dispose();
  }
}
