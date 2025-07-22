import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'kohli_retire_model.dart';
export 'kohli_retire_model.dart';

class KohliRetireWidget extends StatefulWidget {
  const KohliRetireWidget({super.key});

  @override
  State<KohliRetireWidget> createState() => _KohliRetireWidgetState();
}

class _KohliRetireWidgetState extends State<KohliRetireWidget> {
  late KohliRetireModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => KohliRetireModel());

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
                            'Kohli, Rohit and Jadeja retire from T20 internationals',
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
                              'assets/images/kolhi.webp',
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
                              '     India legends Virat Kohli, Rohit Sharma and Ravindra Jadeja have retired from T20 internationals following their World Cup triumph in Barbados.\n\nKohli was man of the match for his 76 and Rohit became the first India captain to lift a World Cup since 2011 following the captivating seven-run defeat of South Africa.\n\nRohit, 37, and 35-year-old Kohli are number one and two respectively on the all-time list of T20 international run-scorers.\n\n\"I\'ve loved every moment of this,\" said Rohit. \"I started my India career playing this format. This is what I wanted. I wanted to win the cup and say thank you.\"\nOn former captain Kohli, Rohit said: \"He\'s been a champion player without a doubt. We all know what he has done for us.\n\n\"At some point everyone has to say goodbye to the game and Virat was very clear that this is what he wanted to do.\"\nJadeja, 35, wrote on Instagram on Sunday: \"Like a steadfast horse galloping with pride, I\'ve always given my best for my country and will continue to do so in other formats.\n\n\"Winning the T20 World Cup was a dream come true, a pinnacle of my T20 international career. Thank you for the memories, the cheers, and the unwavering support.\"\n\nAll three men will continue to be available for India in Tests and one-day internationals.\n\nKohli had endured a difficult World Cup, with only 75 runs in seven innings before his important knock in the final lifted India to 176-7.\n\nSouth Africa needed only 30 runs from the final five overs, but they wilted in the face of some superb India death bowling, and Suryakumar Yadav\'s all-time great catch to remove David Miller in the 20th over effectively sealed the match.\n\nClearly emotional on receiving his player-of-the-match award, Kohli said: \"This is my last T20 game playing for India, my last World Cup I was going to play.\n\n\"I wanted to make the most of it. And this was our aim. We wanted to lift the cup.\n\"I\'m really grateful I was able to get the job done for the team when it mattered the most.\"\n\nKohli ends with 4,188 runs from 125 T20 internationals, just behind Rohit\'s tally of 4,231. Rohit\'s 159 caps is also the most for any man and his five centuries is also a record, shared with Australia\'s Glenn Maxwell.\n\nLeft-arm spinning all-rounder Jadeja has made 74 T20 international appearances, taking 54 wickets at an average of 29.85 and scoring 515 runs at a strike rate of 127.16.\n\nRohit and Bangladesh all-rounder Shakib Al Hasan are the only men to feature in every T20 World Cup, the first edition of which was held in 2007, which India won.\nIndia\'s last World Cup success in any format came in the 50-over version in 2011.\n\nThey have lost two finals in the past year: the World Test Championship final to Australia at The Oval last summer, then the 50-over final on home soil in Ahmedabad to the same opponents in November.\n\n\"It was very emotional, I wanted this badly,\" said Rohit. \"I was very desperate for this in my life so I\'m happy we crossed the line this time.\n\n\"This has to be the greatest time, only because how of desperately I wanted to win this.\n\n\"All the runs that I\'ve scored in all these years, it does matter, but I\'m not big on stats and all of that. Winning games for India, winning trophies for India, that is what I look forward to all the time.\"\n',
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
