import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'hawks_nba_model.dart';
export 'hawks_nba_model.dart';

class HawksNbaWidget extends StatefulWidget {
  const HawksNbaWidget({super.key});

  @override
  State<HawksNbaWidget> createState() => _HawksNbaWidgetState();
}

class _HawksNbaWidgetState extends State<HawksNbaWidget> {
  late HawksNbaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HawksNbaModel());

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
                            'Hawks take French teen Risacher with NBA draft first pick',
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
                              'assets/images/french.webp',
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
                              '     The Atlanta Hawks selected teenage French forward Zaccharie Risacher with the first overall pick of the NBA draft.\nIt is the second year running that a French player has been chosen first.\n\nLast year there was little doubt Victor Wembanyama would be the number one pick, whereas this year Risacher and fellow Frenchman Alexandre Sarr have frequently traded places atop mock drafts over the past month.\n\nRisacher, 19, is 6ft 9in and weighed in at 195 pounds at the draft combine in May, having most recently played in the French top flight for JL Bourg-en-Bresse.\n\n\"[It\'s] so exciting,\" he told ESPN. \"There\'s a lot of feelings and emotions right now. I don\'t know what to say, I\'m so blessed.\"\nThe Washington Wizards took Sarr, also 19, with the second overall pick after the centre spent the 2023-24 campaign with the Perth Wildcats of Australia\'s National Basketball League.\n\nIt marked the third time in NBA draft history that the top two picks had no college experience, although Sarr\'s brother Olivier, 25, is a centre with Oklahoma City Thunder.\n\n\"He\'s shared a lot with me,\" Alexandre Sarr told ESPN. \"Everything I\'ve learned is through him and he gave me all his knowledge, and to this day it\'s really special to have someone like him in my corner.\"\n\nKentucky\'s Reed Sheppard went to the Houston Rockets with the third pick and UConn\'s Stephon Castle landed with the San Antonio Spurs at number four.\n\nRon Holland of G League Ignite, who will be joining the Detroit Pistons, rounded out the top five, while Tidjane Salaun made it three French players to come off the board among the first six picks as the 18-year-old was taken by the Charlotte Hornets.\nLos Angeles Lakers star LeBron James has said he wants to play with or against his son before the 39-year-old ends his NBA career.\n',
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
