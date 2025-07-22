import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'anderson_model.dart';
export 'anderson_model.dart';

class AndersonWidget extends StatefulWidget {
  const AndersonWidget({super.key});

  @override
  State<AndersonWidget> createState() => _AndersonWidgetState();
}

class _AndersonWidgetState extends State<AndersonWidget> {
  late AndersonModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AndersonModel());

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
                            'I\'m still bowling as well as ever, says Anderson',
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
                                  color: FlutterFlowTheme.of(context).alternate,
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
                              'assets/images/anderson.jpg',
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
                              '      James Anderson feels he is still bowling as well as ever as he prepares to play the final Test of his legendary England career against West Indies at Lord\'s this week.\nThe 41-year-old will bow out on 188 caps after the England management told him they want to move on to younger pace bowlers with a view to the 2025-26 Ashes tour.\n\nAnderson, England’s all-time leading wicket-taker with 700 Test scalps, took 7-35 for Lancashire against Nottinghamshire last week.\n\n\"I knew it had to end at some point, whether it\'s now or a year or two years,\" he said. \"The fact that it\'s now is just something that I\'ve got to deal with and accept.\"\n\nAnderson added that he had \"not really got a choice\" over the conclusion of his 21-year Test career, following talks with England Test captain Ben Stokes, coach Brendon McCullum and managing director Rob Key in April.\n\nBefore then, Anderson said he had not thought how he would end his time as an England player, but thought taking a full part in this year\'s home summer was \"achievable\".\n\n\"I wouldn\'t say it was a surprise, because when the three big dogs invited me to a hotel in Manchester for a chat I didn\'t think it was just a normal appraisal,\" he said.\n\"I had a suspicion that that was going to be the case. I think they were surprised at how calm I was and I was probably surprised at my reaction. I wasn\'t overly emotional or angry about it.\n\n\"I saw their point of view and appreciated them taking the time to lay it out for me. Since then I\'ve come to terms with it and made peace with that decision. I’m just looking forward to one more game and then see what\'s ahead.\"\n\nAnderson became the first pace bowler to reach 700 Test wickets in his last England appearance, against India in Dharamsala in March.\n\nBy his standards, it had been a relatively slow crawl to the landmark, with 18 wickets in his previous eight Tests.\nBut in his only appearance for Lancashire this season, Anderson showed his class at Southport last week, taking the best figures by any bowler in the County Championship so far this year.\n\nFollowing his Test retirement, Anderson will immediately join the England coaching team as a mentor. He said he is unlikely to play for Lancashire again this year, but did not rule out playing on next season.\n\n\"Coming off the back of seven-for last week, obviously I feel like I\'m still bowling as well as I ever have,\" he said.\n\n\"If I feel like I can still contribute to Lancashire or they need me, then I\'m sure that\'s a conversation we\'ll have in the next few months.\"\n\nWith Anderson\'s long-time new-ball partner Stuart Broad retiring after last year\'s final Ashes Test, it means England\'s two leading Test wicket-takers will exit in back-to-back home Tests, albeit almost 12 months apart.\n\nBroad enjoyed a fairytale departure, hitting the final ball he faced as a batter for six, then taking a wicket to win the Test with his final delivery as a bowler.\nAnderson said that was a \"lot to live up to\" and he feels \"normal\" going into the concluding chapter of his storied England career.\n\n\"I\'m trying not to think too much about the game itself yet, or how I\'d feel about it,\" he said. \"The big thing for me this week is wanting to play well, bowl well and get a win.\n\n\"I\'m sure the emotions during the week will change, but right now that\'s what I\'m trying to focus on to stop myself crying.\"\n',
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
