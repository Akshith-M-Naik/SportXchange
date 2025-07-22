import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/flutter_flow_youtube_player.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'cricket_tutorials_model.dart';
export 'cricket_tutorials_model.dart';

class CricketTutorialsWidget extends StatefulWidget {
  const CricketTutorialsWidget({super.key});

  @override
  State<CricketTutorialsWidget> createState() => _CricketTutorialsWidgetState();
}

class _CricketTutorialsWidgetState extends State<CricketTutorialsWidget> {
  late CricketTutorialsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CricketTutorialsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return YoutubeFullScreenWrapper(
      child: GestureDetector(
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
              'TUTORIALS',
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
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10.0, 30.0, 10.0, 30.0),
              child: Container(
                width: double.infinity,
                height: double.infinity,
                child: CarouselSlider(
                  items: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              3.0, 10.0, 3.0, 0.0),
                          child: Text(
                            'Basic ',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  fontSize: 22.0,
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.0, -1.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                3.0, 15.0, 3.0, 0.0),
                            child: FlutterFlowYoutubePlayer(
                              url:
                                  'https://youtu.be/VwII4y5vpyU?si=yp-65CBXgmWwbIiY',
                              height: 260.0,
                              autoPlay: false,
                              looping: true,
                              mute: false,
                              showControls: true,
                              showFullScreen: true,
                              strictRelatedVideos: false,
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-1.0, -1.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                3.0, 20.0, 3.0, 0.0),
                            child: Text(
                              'Cricket is a bat-and-ball sport played between two teams of eleven players each on a circular or oval-shaped field. The objective is for one team to score more runs than the other. The game consists of innings where one team bats and the other bowls and fields. The batting team aims to score runs by hitting the ball and running between two sets of wickets, while the bowling and fielding team seeks to dismiss batsmen and restrict runs. Key roles include batsmen, bowlers, and fielders strategically positioned.',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    lineHeight: 1.4,
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              3.0, 10.0, 3.0, 0.0),
                          child: Text(
                            'Batting',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  fontSize: 22.0,
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.0, -1.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                3.0, 15.0, 3.0, 0.0),
                            child: FlutterFlowYoutubePlayer(
                              url:
                                  'https://youtu.be/BTUEz0xkbdI?si=nR3N05Ln2JlX2YjJ',
                              height: 260.0,
                              autoPlay: false,
                              looping: true,
                              mute: false,
                              showControls: true,
                              showFullScreen: true,
                              strictRelatedVideos: false,
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-1.0, -1.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                3.0, 20.0, 3.0, 0.0),
                            child: Text(
                              'Batting in cricket involves two batsmen from the batting team facing the bowlers from the opposing team. The primary objective is to score runs by hitting the ball delivered by the bowler and running between the wickets. The batsman uses a bat to defend against or hit the ball strategically. They aim to accumulate runs individually and collectively with their partner. Different shot techniques include defensive shots to protect the wicket, attacking shots to score boundaries (four runs) or sixes (maximum runs), and placement shots to manipulate the field. Batting requires focus, technique, and adaptability to face various bowling styles and field placements.',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    lineHeight: 1.4,
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              3.0, 10.0, 3.0, 0.0),
                          child: Text(
                            'Bowling',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  fontSize: 22.0,
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.0, -1.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                3.0, 15.0, 3.0, 0.0),
                            child: FlutterFlowYoutubePlayer(
                              url:
                                  'https://youtu.be/8ZAx-gsyZck?si=d3jxKWQsnXBQ5x18',
                              height: 260.0,
                              autoPlay: false,
                              looping: true,
                              mute: false,
                              showControls: true,
                              showFullScreen: true,
                              strictRelatedVideos: false,
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-1.0, -1.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                3.0, 20.0, 3.0, 0.0),
                            child: Text(
                              'Bowling in cricket involves delivering the ball to the batsman from one end of the pitch with the aim of dismissing them and restricting the scoring of runs. Bowlers use various techniques such as pace, spin, swing, and seam to deceive batsmen and take wickets. They aim to bowl accurately to hit the stumps or induce the batsman to make a mistake, leading to a dismissal. Different types of bowling styles include fast bowling, spin bowling (including leg spin and off spin), and medium pace. ',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    lineHeight: 1.5,
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                  carouselController: _model.carouselController ??=
                      CarouselController(),
                  options: CarouselOptions(
                    initialPage: 1,
                    viewportFraction: 1.0,
                    disableCenter: true,
                    enlargeCenterPage: true,
                    enlargeFactor: 1.0,
                    enableInfiniteScroll: true,
                    scrollDirection: Axis.horizontal,
                    autoPlay: false,
                    onPageChanged: (index, _) =>
                        _model.carouselCurrentIndex = index,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
