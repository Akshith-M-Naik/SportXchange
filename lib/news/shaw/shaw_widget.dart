import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'shaw_model.dart';
export 'shaw_model.dart';

class ShawWidget extends StatefulWidget {
  const ShawWidget({super.key});

  @override
  State<ShawWidget> createState() => _ShawWidgetState();
}

class _ShawWidgetState extends State<ShawWidget> {
  late ShawModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ShawModel());

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
              children: [
                SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0.0, -1.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 15.0, 10.0, 0.0),
                          child: Text(
                            'Shaw \'fit and ready\' to play 90 minutes for England',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                              fontFamily: 'Readex Pro',
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
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
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 15.0, 10.0, 15.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.asset(
                              'assets/images/shaw.webp',
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
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 0.0, 10.0, 0.0),
                            child: Text(
                              '      Shaw has had to sit and watch from the sidelines as England reached the semi-finals of a second successive European Championship.\n\nThe 28-year-old has been focusing on his recovery, to the extent that he pulled out of a scheduled media conference before the Switzerland game as he did not want to speak to the press before he had got back on the field of play.\n\n\"It\'s been strange,” he said of his Euro 2024 experience. “It\'s also been difficult as well, going to games, feeling the atmosphere. Not putting the shirt on or being involved in games was hard, but that motivated me more to work back.\n\n\"The atmosphere in those games spurred me on.\n\n\"I was of course excited to come back, but the priority was to help us get back into the game and get us through.\"\nWithout Shaw, England have not always impressed at Euro 2024 – drawing their final two group matches before going behind in both knockout games so far.\nBut brilliant equalisers by Jude Bellingham against Slovakia and Bukayo Saka versus Switzerland have helped them through.\nShaw knows what it is like to score a big goal in a European Championship – he opened the scoring for England in the Euro 2020 final against Italy inside three minutes with a powerful volley.\nBut watching from the bench, he says he has been put through the wringer just as much as the England fans.\n\n\"I felt more nervous watching than playing - it is quite tough,” he said.\n\"I never once thought that we were going to go out. We have to believe right to the end.\n\n\"Good moments like Jude\'s [equaliser] can happen, but it\'s down to us to deliver that on the pitch.\n\"Game by game we are getting better - there\'s things we can still improve on but we\'re looking good.\"\nShaw has become a key player under Southgate, starting every match at the 2022 World Cup, and defended his manager over the criticism he has received for his selections and style of play.\n\n\"I don\'t understand the criticism,” Shaw said of Southgate, who has become the first man to lead England to three major tournament semi-finals.\n\n“What he\'s done for the country and us players, he\'s taken us to the next level. No manager has been as successful as he has recently.\n\n\"Us players love him - he\'s exactly what we need. He allows us to go out on the pitch and be our best. He\'s shown a lot of faith and trust in picking me.\"\n',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
