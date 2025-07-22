import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'emptycart_model.dart';
export 'emptycart_model.dart';

class EmptycartWidget extends StatefulWidget {
  const EmptycartWidget({super.key});

  @override
  State<EmptycartWidget> createState() => _EmptycartWidgetState();
}

class _EmptycartWidgetState extends State<EmptycartWidget> {
  late EmptycartModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EmptycartModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        InkWell(
          splashColor: Colors.transparent,
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () async {
            context.pushNamed('Shop');
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.network(
              'https://cdn-icons-png.flaticon.com/512/11329/11329060.png',
              width: 300.0,
              height: 300.0,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Text(
          'Empty Cart',
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: 'Readex Pro',
                color: FlutterFlowTheme.of(context).secondaryBackground,
                fontSize: 35.0,
                letterSpacing: 0.0,
              ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
          child: Text(
            'Add some products in your cart',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Readex Pro',
                  color: Color(0xD2B0B0BB),
                  fontSize: 20.0,
                  letterSpacing: 0.0,
                ),
          ),
        ),
      ],
    );
  }
}
