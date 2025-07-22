import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'batminton_rules_model.dart';
export 'batminton_rules_model.dart';

class BatmintonRulesWidget extends StatefulWidget {
  const BatmintonRulesWidget({super.key});

  @override
  State<BatmintonRulesWidget> createState() => _BatmintonRulesWidgetState();
}

class _BatmintonRulesWidgetState extends State<BatmintonRulesWidget> {
  late BatmintonRulesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BatmintonRulesModel());

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
            'Batminton Rules',
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
                      '     Badminton is a sport that has been around since the 16th century. The sport is played indoors and the pinnacle comes from its Olympic events. The sport is very popular in Asian countries such as China and India with these countries leading the way by producing some of the world’s best players.',
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
                        'assets/images/2r.jpg',
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
                    'The object of badminton is to hit the shuttlecock over the net and have it land in the designated court areas. If your opponent manages to return the shuttlecock then a rally occurs. If you win this rally i.e. force your opponent to hit the shuttlecock out or into the net then you win a point. You are required to win 21 points to win a set with most matches being best of 3 sets. Points can be won on either serve.\n\n',
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
                    'There are two forms of badminton, singles and doubles (it’s also possible to play mixed doubles). Each player is allowed to use a stringed racket (similar to a tennis racket but with the head being smaller) and a shuttlecock. The shuttlecock is made up of half round ball at the bottom and a feather like material surrounding the top. You can only really hit the bottom of the shuttlecock and as gravity comes into play will always revert the ball side facing down. You may only hit the shuttlecock once before it either hits the ground or goes over the net.\n\nThe court measures 6.1m wide and 13.4m long. Across the middle of the rectangular court is a net which runs at 1.55m. Running along each side of the court are two tram lines. The inside lines are used as the parameter for singles match whilst the outside line is used for a doubles match.',
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
                    'A point is scored when you successfully hit the shuttlecock over the net and land it in your opponent’s court before they hit it. A point can also be gained when your opponent hits the shuttlecock into either the net or outside the parameters.\n',
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
                    'To win a game you must reach 21 points before your opponent. If you do so then you will have won that set. If the scores are tied at 20-20 then it comes down to whichever player manages to get two clear points ahead. If the points are still tied at 29-29 then the next point will decide the winner of the set. Winning the overall game will require you to win 2 out of the 3 sets played.',
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
                    '-> A game can take place with either two (singles) or four (doubles) players.\nAn official match has to be played indoors on the proper court dimensions. The dimensions are 6.1m by 13.4m, The net is situated through the middle of the court and is set at 1.55m.\n\n-> To score a point the shuttlecock must hit within the parameters of the opponents court.\n\n-> If the shuttlecock hits the net or lands out then a point is awarded to your opponent.\n\n-> Players must serve diagonally across the net to their opponent. As points are won then serving stations move from one side to the other. There are no second serves so if your first serve goes out then your opponent wins the point.\n\n-> A serve must be hit underarm and below the servers waist. No overarm serves are allowed.\n\n-> Each game will start with a toss to determine which player will serve first and which side of the court the opponent would like to start from.\n\n-> Once the shuttlecock is ‘live’ then a player may move around the court as they wish. They are permitted to hit the shuttlecock from out of the playing area.\n\n-> If a player touches the net with any part of their body or racket then it is deemed a fault and their opponent receives the point.\n\n-> A fault is also called if a player deliberately distracts their opponent, the shuttlecock is caught in the racket then flung, the shuttlecock is hit twice or if the player continues to infract with the laws of badminton.\n\n-> Each game is umpired by a referee on a high chair who overlooks the game. There are also line judges who monitor if the shuttlecock lands in or not. The referee has overriding calls on infringements and faults.\n\n-> Let may be called by the referee if an unforeseen or accidental circumstance arose. These may include the shuttlecock getting stuck in the bet, server serving out of turn, one player was not ready or a decision which is too close to call.\n\n-> The game has only two rest periods coming the form of a 90 second rest after the first game and a 5 minute rest period after the second game.\n\n-> If the laws are continuously broken by a player then the referee holds the power to dock that player of points with persisting fouls receiving a forfeit of the set or even the match.',
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
