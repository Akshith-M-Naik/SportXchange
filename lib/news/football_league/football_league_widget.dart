import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'football_league_model.dart';
export 'football_league_model.dart';

class FootballLeagueWidget extends StatefulWidget {
  const FootballLeagueWidget({super.key});

  @override
  State<FootballLeagueWidget> createState() => _FootballLeagueWidgetState();
}

class _FootballLeagueWidgetState extends State<FootballLeagueWidget> {
  late FootballLeagueModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FootballLeagueModel());

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
                            'Born in the Football League - England\'s EFL journey',
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
                              'assets/images/football.webp',
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
                              'EFL clubs: Burton, Carlisle, Bradford, Preston (all loan)\n\nEverton goalkeeper Pickford had four loan spells with EFL clubs while awaiting his breakthrough at Sunderland.\nBefore that he had spells in non-league with Darlington and Alfreton.\n\n\"For me, it was the best thing I could ever do, going out on loan at a young age and develop,\" he told the EFL, external in 2022.\n\"You learn about yourself so much as a person and you’ve got to get stuck in early doors as a player.\n\n\"To go and play for Sunderland, Everton and England is my dream come true. It’s an amazing feeling, but I wouldn’t have been able to do it if I hadn’t gone to the EFL on loan to these clubs.\"\n\nManchester City right-back Walker played his first nine senior games for League One Northampton in 2008-09 during a short-term loan from hometown club Sheffield United, who were in the Championship.\n\"It was a reality check for me but a very good one,\" Walker told the Standard, external in 2012.\n\n\"There were players there whose mortgages were on the line and winning football matches made it easier for them to look after their families.\n\"If you\'re lucky enough to get into a Premier League or Championship team straight away, well done to you, but I feel really grateful for the experience that I had at the lower end.\"\n\nAfter breaking into the United team he moved to Tottenham, but returned to the Blades on loan and also spent time on loan at QPR.\n\nNewcastle United full-back Trippier never broke into the Manchester City team but had two loan spells from City with Barnsley, before moving to Burnley in an initial loan move which became permanent.\n\nHe spent three seasons in the Championship with the Clarets and one season in the Premier League before moving to Tottenham.\n\"When he first came to Burnley, we had to fish him out of Tiger Tiger in Manchester every Tuesday night,\" former Burnley youth boss Michael Duff told the Yorkshire Post, external in 2022.\n\n\"His diet was not very good and he just got by on ability.\n\"Sean Dyche got hold of him and gave him an understanding of what a professional footballer looks like, as if it\'s not just turning up on a Saturday and playing.\n\"He\'s a manager\'s dream as he lives his life right and you never see him in trouble outside of football.\"\n',
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
