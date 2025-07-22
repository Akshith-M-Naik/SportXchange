import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'garcia_model.dart';
export 'garcia_model.dart';

class GarciaWidget extends StatefulWidget {
  const GarciaWidget({super.key});

  @override
  State<GarciaWidget> createState() => _GarciaWidgetState();
}

class _GarciaWidgetState extends State<GarciaWidget> {
  late GarciaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GarciaModel());

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
                            'Garcia \'expelled\' by WBC after racist comments',
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
                                  color: FlutterFlowTheme.of(context).tertiary,
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
                              'assets/images/garvic.webp',
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
                              '     Ryan Garcia has been \"expelled\" by the WBC after using racial slurs and Islamophobic language on social media.\n\nThe American, who last month was banned for a year from boxing following an anti-doping violation, made the comments on X\'s spaces platform, which allows people to have live audio conversations.\n\nWBC president Mauricio Sulaiman said in a statement: \"Exercising my authority as president of the WBC, I am hereby expelling Ryan Garcia from any activity with our organisation.\n\n\"We reject any form of discrimination.\"\nIn a since deleted post on X, Garcia, 25, wrote: \"I was trolling, I want all the killing to stop. I love everyone, sorry if I offended you.\"\n\nThe American has not responded to the WBC\'s expulsion.\n\nAfter Garcia was handed a one-year doping ban by the New York State Athletic Commission, Sulaiman said the WBC would not issue its own suspension or \"punish\" him because of concerns about his mental health.\n\nIt was not immediately clear what the expulsion from the WBC would entail. BBC Sport has asked the WBC for comment.\nGarcia failed multiple drug tests around his fight with Devin Haney in April.\nAs well as a one-year ban, Garcia\'s upset victory over former undisputed lightweight champion Haney was overturned to a no-contest.\nGarcia\'s family released its own statement saying his comments \"do not align with his, or our family\'s, true character or beliefs\".\n\n\"Our family unequivocally does not support any statements [Garcia] has made regarding race or religion -- these do not reflect who Ryan truly is and how he was raised,\" the statement added.\n',
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
