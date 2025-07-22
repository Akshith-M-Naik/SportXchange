import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 't20worldwin_model.dart';
export 't20worldwin_model.dart';

class T20worldwinWidget extends StatefulWidget {
  const T20worldwinWidget({super.key});

  @override
  State<T20worldwinWidget> createState() => _T20worldwinWidgetState();
}

class _T20worldwinWidgetState extends State<T20worldwinWidget> {
  late T20worldwinModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => T20worldwinModel());

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
                            'India beat South Africa in thriller to win T20 title',
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
                              'assets/images/t20.webp',
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
                              '     India ended their 13-year wait for a world title by fighting back to beat South Africa in a thrilling T20 World Cup final.\n\nT20 World Cup final, Barbados\nIndia 176-7 (20 overs): Kohli 76 (59), Axar 47 (31); Maharaj 2-23, Nortje 2-26\nSouth Africa 169-8 (20 overs): Klaasen 52 (27); Hardik 3-20\n\nIndia won by seven runs .\n\nIndia’s innings was built around Kohli, who had only made two double-figure scores in the tournament.\n\nHere he notched his third within five balls by driving and flicking Jansen for three fours in the first over.\n\nIndia were flying when Rohit hit the first two balls of the second over for four, but after the captain swept spinner Keshav Maharaj to square leg, the Proteas fought back superbly.\n\nRishabh Pant chipped up a full toss for a duck and the dangerous Suryakumar Yadav was caught at fine leg but, from 34-3, Kohli was able to play the role he knows best.\n\nHe did not hit a boundary between the fourth and 18th overs. Axar Patel, promoted to provide a left-handed option, instead provided the attack with 47, including two fine hits over long-on, in a partnership of 72.\n\nShivam Dube added impetus with his 16-ball 27 as Kohli’s next support act.\nIn the 18th over, Kohli cut loose, striking Rabada superbly over long-on, pulling the next ball for four and in the 19th he whipped Jansen on to the roof of the pavilion.\n\nThe 50-over World Cup, where Kohli was the tournament’s leading scorer, was supposed to be the white-ball great’s crowning glory.\n\nIn the end, it came on the other side of the world eight months later, with Kohli confirming this was his final T20 World Cup appearance.\n\nIn the end Hardik was in tears.\nHe was part of the India side that lost the 50-over World Cup final to Australia on home soil eight months ago. This was their glorious redemption in the Caribbean.\nThe game looked done during Klaasen’s onslaught but Hardik removed him by finding a thin edge through to wicketkeeper Rishabh Pant.\n\nEven as Klaasen slumped off, South Africa remained favourites.\nThey have done so much to banish the cruel reputation of choking that follows their cricket team around.\n\nIn the end, up against some superb bowling from Jasprit Bumrah, who took 2-18 in a high-scoring game, they faltered again at the last.\n\nIn the final moments, Kagiso Rabada edged a four and Hardik bowled a wide, leaving eight needed from the last two balls before Radaba was caught at long-off.\n\nIndia have so much in their favour – a team of superstars chosen from population of 1.4 billion and the largest proportion of the revenue generated in the game.\n\nAs they celebrated, none of that mattered. It was an occasion of pure sporting drama and relief.\n\nThe Proteas, like India, had progressed to this point unbeaten. They had come through a series of tight games and their semi-final win against Afghanistan was their first victory in the last four of a World Cup in eight attempts.\n\nThey slipped to 12-2 early on, Reeza Hendricks sensationally bowled by Bumrah, but fought back to set up a grand stand finale.\n\nQuinton de Kock and Tristan Stubbs struck 39 and 31 respectively, taking down India’s vaunted spinners. That assault was ramped up further by Klaasen, who struck five sixes.\n\nAfter Klaasen fell, number seven Marco Jansen struggled and was bowled by Bumrah in the 18th over.\nIndia captain Rohit Sharma gambled by using Bumrah’s final over when there were still two to follow. He will have been grateful to 25-year-old left-armer Arshdeep, whose mix of pace in the 19th was superb.\n\nIn the closing moments India were just more clinical, no more so than Suryakumar when he juggled the ball on the long-off boundary while keeping his feet in play to dismiss Miller.\nThis will hurt South Africa just as much, if not more, than those previous semi-final defeats.\n',
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
