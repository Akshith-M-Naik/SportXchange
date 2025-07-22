import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'boxing_rules_model.dart';
export 'boxing_rules_model.dart';

class BoxingRulesWidget extends StatefulWidget {
  const BoxingRulesWidget({super.key});

  @override
  State<BoxingRulesWidget> createState() => _BoxingRulesWidgetState();
}

class _BoxingRulesWidgetState extends State<BoxingRulesWidget> {
  late BoxingRulesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BoxingRulesModel());

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
            'Boxing Rules',
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
                      '      In essence boxing may well be the world’s oldest sport. At its most basic it is fighting and since there has been man, there has been conflict. It is certainly at least as old as 688 BC when it was included in the ancient Olympic Games, although more regulated, codified versions of boxing date to about the 1500s. Having said that, carvings dating to the 3rd millennium BC show people fist-fighting in front of audiences so it is safe to say the art of pugilism is an ancient one indeed.\n\nMore modern rules have included Broughton’s rules from 1743, the London Prize Ring rules (1838) and the more well-known Marquess of Queensbury Rules which date to 1867. At its best boxing is graceful, elegant and explosive and a magnificent example of the human body’s abilities and few spectacles can match the sight of two top heavyweights going toe to toe.',
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
                        'assets/images/3r.jpg',
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
                    'Brutally enough the object of boxing could be stated as to concuss your fellow human being; a less barbaric sounding aphorism, to hit and not be hit, may be a preferred way to look at it, depending on your standpoint.',
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
                    'The exact specification of certain equipment varies according to the sanctioning body but the ring (ironically, of course, usually square) is generally around 16-25 feet (4.9-7.6m) along each side. The posts at the corner are 5ft above the level of the ring and the ring itself is usually about three or four feet off the ground on a raised platform.\n\nBoxers wear gloves and although there has been a long history of bear-knuckle boxing, hand protection dates to Ancient Greece. Modern gloves are usually 12oz, 14oz or 16oz and are designed to protect the hand and the opponent, although there are arguments that they actually increase brain injuries by facilitating a boxer receiving more damaging blows.\n\nBoxers are divided according to their weight with the different governing bodies having different weights and names for the groupings. Fighters only fight opponents of similar weights as physical size is so crucial to the contest.',
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
                    'At professional level the bouts are scored by three ringside judges using a subjective method based on which boxer they felt won each individual round. If the match is undecided by knockout, retirement or disqualification then the judges’ scorecards are used. If all three judges agree the decision is unanimous, whilst if two think one fighter won it is a split decision. If two judges mark the fight level, or one does and the other two are divided, the fight is classed as a draw.\n\nIt is, however, more common for a fight, especially at the heavier weights, to be stopped before the 12 rounds are up. A boxer is knocked out if they are floored and cannot get up within 10 seconds, whilst the referee may disqualify a fighter for certain foul play. The other method of winning is by a technical knockout or TKO. If a boxer is unwilling to continue, or is deemed unable to do so by either the referee or his corner team or medical staff then it is a TKO. This can also be awarded if a fighter is knocked down a defined number of times in a round (usually three).',
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
                    'The winner is either as scored by the judges if the fight goes the distance or is decided by knockout, technical knockout or disqualification, as detailed above.\n\nIn amateur bouts different methods are used, for example the referee may simply decide or ringside judges use electronic scoring to count the number of blows landed.',
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
                    '-> In professional boxing, bouts take place over 12 three minute rounds with one minute rest between rounds.\n\n-> The only method of attack is punching with a clenched fist and you may not strike below the belt, in the kidneys or the back of your opponents head or neck.\n\n-> You cannot use the ropes for leverage.\n\n-> You cannot hit an opponent when they are down.\n\n-> A boxer hit with a low blow can take five minutes to recover.\n\n-> If an unintentional foul (such as a clash of heads) ends the fight before four rounds are completed this is a “no contest”, from the fifth onwards the decision goes to the judge’s cards and is either a technical decision for either fighter or a technical draw.',
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
