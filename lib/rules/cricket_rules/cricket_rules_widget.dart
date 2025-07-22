import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'cricket_rules_model.dart';
export 'cricket_rules_model.dart';

class CricketRulesWidget extends StatefulWidget {
  const CricketRulesWidget({super.key});

  @override
  State<CricketRulesWidget> createState() => _CricketRulesWidgetState();
}

class _CricketRulesWidgetState extends State<CricketRulesWidget> {
  late CricketRulesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CricketRulesModel());

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
            'Cricket Rules',
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
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Align(
                  alignment: AlignmentDirectional(-1.0, -1.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(10.0, 20.0, 10.0, 0.0),
                    child: Text(
                      '      Cricket is a sport that has been tracked back to the early 16th century and has been a popular ever since. The pinnacle of the international game comes in the form of the Cricket World Cup. Other major events include the T20 World Cup, Test Series and One Day series. Each country runs a host of domestic competitions all highly competitive.',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            fontSize: 16.0,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 0.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset(
                        'assets/images/4r.jpg',
                        width: 360.0,
                        height: 230.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(-1.0, 0.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(10.0, 15.0, 10.0, 0.0),
                    child: Text(
                      'Object of the Game',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            fontSize: 25.0,
                            letterSpacing: 0.0,
                            decoration: TextDecoration.underline,
                          ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 0.0),
                  child: Text(
                    'The object of cricket is to score more runs than your opponent. There are three variations of the game (Test, One Day and Twenty 20) and each give a certain timescale in which the game must be completed.\n\nTo score a run you need to hit the ball with a cricket bat made from wood (usually English willow or Kashmir). Whilst one team bats the other bowls and fields. The aim is to bowl the opposing team out for as few runs as possible or restrict them to as few runs in the allocated time. After a team has lost all their wickets or the allotted time has expired then the teams will switch roles.',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          fontSize: 16.0,
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(-1.0, 0.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(10.0, 15.0, 10.0, 0.0),
                    child: Text(
                      'Players & Equipment',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            fontSize: 25.0,
                            letterSpacing: 0.0,
                            decoration: TextDecoration.underline,
                          ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 0.0),
                  child: Text(
                    'Each team consists of 11 players. These eleven players will have varying roles in the team from batsmen, bowlers, fielders and wicket keepers. Whilst each player may have a specialist role they can take up any role should they wish.\n\nPitch sizes vary greatly in cricket but are usually played on a circular grass field with a circumference of around 200m. Around the edge of the field is what’s known as the boundary edge and is basically the line between being in play and out of play.\n\nIn the centre of the pitch will be the wicket. The wicket will have two sets of three stumps at either end and they must be 22 yards apart. At each end of the wicket is known as the crease and a line is drawn about 2 yards across the wicket from the stumps. The bowler will bowl the cricket ball from one end whilst the batsmen will try and hit the ball from the other end.\n\nBatsmen can wear a host of padding including leg guards, gloves, thigh guards, inner thigh guards, a box, a helmet and a chest guard. All players will wear spiked shoes and will all be wearing white clothing (the only exception is in shorter games where the players may wear coloured clothing).\n\nThe cricket ball is made of cork and will be either red (test match) or white (one day games).',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          fontSize: 16.0,
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(-1.0, 0.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(10.0, 15.0, 10.0, 0.0),
                    child: Text(
                      'Scoring',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            fontSize: 25.0,
                            letterSpacing: 0.0,
                            decoration: TextDecoration.underline,
                          ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 0.0),
                  child: Text(
                    'A run occurs when a batsmen hits the ball with their bat and the two batsmen at the wicket mange to successfully run to the other end. The batsmen can run as many times as they like before being given out. If the ball crosses the boundary rope after it has bounced at least once from leaving the bat then 4 runs are given. If the ball goes over the boundary rope without bouncing then 6 runs are awarded to the batting team.\n\nRuns can also be scored when the bowler bowls a wide delivery (a ball that is too far away from the stumps), a no ball (where the bowler oversteps the front line on the wicket), a bye (where no one touches the ball but the two batsmen run anyway) and a leg bye (where the ball hits the batsmen’s leg or body and a run is taken).',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          fontSize: 16.0,
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(-1.0, -1.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(10.0, 15.0, 10.0, 0.0),
                    child: Text(
                      'Winning the Game',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            fontSize: 25.0,
                            letterSpacing: 0.0,
                            decoration: TextDecoration.underline,
                          ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 0.0),
                  child: Text(
                    'One team will bat first and one team will field first. The batting team will try and score as many runs as possible in the allotted time whilst the bowling team will try and contain them by fielding the ball. The teams then swap and the second team batting will try and outscore the runs their opponents scored first. If they fail they lose, if they succeed they win.',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          fontSize: 16.0,
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(-1.0, 1.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(10.0, 15.0, 10.0, 0.0),
                    child: Text(
                      'Key Points',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            fontSize: 25.0,
                            letterSpacing: 0.0,
                            decoration: TextDecoration.underline,
                          ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 0.0),
                  child: Text(
                    '-> Each team is made up of 11 players.\nThe bowler must bowl 6 legal deliveries to constitute an over.\n\n-> A game must have two umpires stood at either end of the wicket. The umpires then must count the number of balls in the over, make decisions on whether the batsmen is out after an appeal and also check that the bowler has bowled a legal delivery.\n\n-> A batsmen can be given out by either being bowled ( the ball hitting their stumps), caught (fielder catches the ball without it bouncing), Leg Before Wicket (the ball hits the batsmen’s pads impeding its line into the stumps), stumped (the wicket keeper strikes the stumps with their gloves whilst the batsmen is outside of their crease with ball in hand), hit wicket (the batsmen hits their own wicket), Handled ball ( the batsmen handles the cricket ball on purpose), timed out (the player fails to reach the crease within 30 seconds of the previous batsmen leaving the field), hit ball twice (batsmen hits the cricket ball twice with their bat) and obstruction ( the batsmen purposely prevents the fielder from getting the ball).\n\n-> Test cricket is played over 5 days where each team has two innings (or two chances to bat).\n\n-> The scores are then cumulative and the team with the most runs after each innings is the winner.\n\n-> One Day cricket in played with 50 overs. Each team has 50 overs to bat and bowl before swapping and doing the previous discipline. The team with the most runs at the end of the game wins.\n\n-> International games will have a further two umpires known as the third and fourth umpire. These are in place to review any decisions that the on field umpires are unable to make.\n\n-> The fielding team must have one designated wicket keeper who is the only person allow to wear pads and gloves on the field. The wicket keeper stands behind the opposite end to the bowler to catch the ball.',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          fontSize: 16.0,
                          letterSpacing: 0.0,
                        ),
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
