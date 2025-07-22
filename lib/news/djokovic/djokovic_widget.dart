import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'djokovic_model.dart';
export 'djokovic_model.dart';

class DjokovicWidget extends StatefulWidget {
  const DjokovicWidget({super.key});

  @override
  State<DjokovicWidget> createState() => _DjokovicWidgetState();
}

class _DjokovicWidgetState extends State<DjokovicWidget> {
  late DjokovicModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DjokovicModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).primaryBackground,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            'TOP NEWS',
            style: FlutterFlowTheme.of(context).headlineSmall.override(
                  fontFamily: 'Outfit',
                  fontSize: 35.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            primary: false,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: AlignmentDirectional(0.0, -1.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(10.0, 15.0, 10.0, 0.0),
                    child: Text(
                      'Djokovic \'expects fireworks\' against Rune',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        fontSize: 20.0,
                        letterSpacing: 0.0,
                        decoration: TextDecoration.underline,
                        shadows: [
                          Shadow(
                            color: FlutterFlowTheme.of(context).secondary,
                            offset: Offset(2.0, 2.0),
                            blurRadius: 2.0,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(10.0, 15.0, 10.0, 15.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset(
                        'assets/images/djokivik.webp',
                        width: 360.0,
                        height: 200.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Wrap(
                  spacing: 0.0,
                  runSpacing: 0.0,
                  alignment: WrapAlignment.start,
                  crossAxisAlignment: WrapCrossAlignment.start,
                  direction: Axis.horizontal,
                  runAlignment: WrapAlignment.start,
                  verticalDirection: VerticalDirection.down,
                  clipBehavior: Clip.none,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                      child: Text(
                        '     Novak Djokovic says he expects \"fireworks on court\" when he takes on Holger Rune for a place in the Wimbledon quarter-finals on Monday.\n\nThe 24-time Grand Slam champion is 16 years Rune\'s senior but doesn\'t underestimate the challenge the Dane will pose when they close proceedings on Centre Court.\n\n\"Rune\'s a spectacular player, no doubt. He loves the big stage, loves playing on grass. I think he\'s a very, very tricky opponent,\" said second seed Djokovic.\n\nThe 37-year-old is going for an eighth Wimbledon title and record 25th Grand Slam overall.\n\n\"It\'s going to take my best tennis to win,\" he added.\n\n\"I actually get along very well with [Rune]. He\'s a very nice guy, always has been to me and to my team, and vice versa.\"\nThe pair have met five times previously, with Serb Djokovic winning on three occasions, including the two most recent, on hard courts in 2023.\n\n\"I always try to be available to him for any practice or advice or guidance or anything like that,\" said Djokovic.\n\n\"I think we have quite similar styles of tennis. But when it comes to playing on the court and competing, obviously we both have that fire. I\'m sure that on Monday, we\'ll see a lot of fireworks on the court.\"\n\nFollowing knee surgery just weeks before arriving at SW19, Djokovic is yet to win a match in straight sets at the All England Club but Rune said he still expects a \"tough battle\".\n\n\"I\'m expecting nothing but a great level from him. I know he did his surgery, but honestly I practised with him in the first week, and I saw him playing a little bit,\" said the 15th seed.\n\n\"He seems like he\'s playing very well, feeling confident.\"\n\nElsewhere on day eight of the Championships, American 13th seed Taylor Fritz will take on German fifth seed Alexander Zverev on Centre Court while Australian ninth seed Alex de Minaur opens play on Court One against France\'s Arthur Fils.\n',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              fontSize: 16.0,
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
