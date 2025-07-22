import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'swimming_rules_model.dart';
export 'swimming_rules_model.dart';

class SwimmingRulesWidget extends StatefulWidget {
  const SwimmingRulesWidget({super.key});

  @override
  State<SwimmingRulesWidget> createState() => _SwimmingRulesWidgetState();
}

class _SwimmingRulesWidgetState extends State<SwimmingRulesWidget> {
  late SwimmingRulesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SwimmingRulesModel());

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
            'Swimming Rules',
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
                      'Swimming is a versatile and widely enjoyed activity that serves as a competitive sport, a recreational pastime, and an essential survival skill. It involves moving through water using coordinated body movements and is practiced by people of all ages worldwide.',
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
                        'assets/images/7r.jpeg',
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
                    'The object of competitive swimming is to combine speed, technique, endurance, and strategy to complete a race in the shortest time while following all rules and regulations. Achieving this involves rigorous training, discipline, and a deep understanding of the nuances of each swimming stroke and race format.',
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
                    'Competitive swimming involves individual competitors and relay teams striving to achieve the fastest times in their respective events. Individual swimmers focus on optimizing their speed, technique, and endurance across various strokes and distances, while relay teams emphasize coordination and precise transitions. Support staff, including coaches, lifeguards, and officials, play crucial roles in training, safety, and ensuring fair competition.\n\nEssential equipment for swimmers includes swimsuits designed to reduce drag, swim caps, and goggles for clear vision and protection. Training aids like kickboards, pull buoys, fins, and paddles help swimmers enhance their technique and strength. Pools are equipped with lane lines, starting blocks, and electronic timing systems to facilitate competitive races, with Olympic-sized pools measuring 50 meters in length and short course pools measuring 25 meters. This combination of skilled athletes, supportive staff, and specialized equipment makes swimming a dynamic and highly competitive sport.',
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
                    'In competitive swimming, scoring is primarily based on the time it takes for a swimmer to complete a race. Swimmers are ranked based on their finish times, with the fastest swimmer being awarded first place, the second fastest second place, and so on. Points are often assigned based on these placements, especially in team competitions. For instance, first place might earn 9 points, second place 7 points, third place 6 points, and so forth. The specific point distribution can vary depending on the competition\'s rules and structure. This scoring system emphasizes both the individual performance of swimmers and their ability to achieve the fastest possible times.\n\nRelay events, which involve teams of four swimmers, also contribute significantly to the overall scoring in competitions. In these events, each swimmer completes a portion of the race, and the team\'s final time is the sum of the individual times. Relay events are scored similarly to individual events, with points awarded based on the team\'s finish position. Relay races often carry more points to highlight the importance of teamwork and coordination. Medley events, including individual medley and medley relay races, require swimmers to demonstrate proficiency in all four strokes (butterfly, backstroke, breaststroke, and freestyle), and are scored based on the combined times of the swimmers. The overall team scores in championship meets are determined by tallying points from all individual and relay events, rewarding teams that excel across a broad range of disciplines.',
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
                    'Winning in competitive swimming is determined by the swimmer or team that completes their race in the shortest time, adhering to all rules and techniques of the specific stroke or event. Success requires a combination of speed, precision, and endurance. Each race starts with a powerful dive from the starting blocks, followed by the execution of efficient strokes, turns, and finishes. The swimmer who touches the wall first at the end of the race is declared the winner.\n\nIn relay events, the winning team is the one whose combined swimmers complete the race in the shortest time. Each swimmer on the relay team swims a portion of the total distance, and precise transitions are crucial to maintaining speed and avoiding time penalties. Winning a relay race requires not only individual skill but also seamless teamwork and coordination. In both individual and team events, the ultimate goal is to achieve the fastest overall time, securing victory and, in many cases, valuable points towards the team\'s overall standing in the competition.',
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
                    '-> Swimming, as a sport, revolves around several key points essential for success in competition and training.\n\n->  Technique stands as a cornerstone, with each stroke demanding precise execution to minimize resistance and maximize efficiency. From the fluid, rhythmic motions of freestyle to the synchronized, undulating movements of butterfly, mastering these techniques is crucial for achieving top speeds and endurance.\n\n->  Equally important are turns and finishes, where split-second decisions and flawless execution can shave crucial milliseconds off race times, potentially determining the difference between victory and defeat.\n\n-> Training in swimming encompasses a rigorous regimen that spans pool sessions, dryland exercises, and flexibility routines. Consistency is key, with athletes dedicating significant hours to build strength, refine technique, and improve cardiovascular endurance. \n\n-> Variety in training drills, such as interval sets, distance swims, and sprint practices, ensures comprehensive skill development across different aspects of the sport. \n\n-> Proper rest and recovery are equally emphasized to prevent injuries and allow muscles to repair and grow stronger.',
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
