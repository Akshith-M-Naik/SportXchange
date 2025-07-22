import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'moroccan_model.dart';
export 'moroccan_model.dart';

class MoroccanWidget extends StatefulWidget {
  const MoroccanWidget({super.key});

  @override
  State<MoroccanWidget> createState() => _MoroccanWidgetState();
}

class _MoroccanWidgetState extends State<MoroccanWidget> {
  late MoroccanModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MoroccanModel());

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
                            'Search goes on for Moroccan footballers lost at sea',
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
                              'assets/images/morocoan.webp',
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
                              '      Moroccan club Ittihad Tanger has told the BBC the search continues for two footballers who went missing off the country\'s northern Mediterranean coast on Saturday.\n\nFive staff members from the top-flight side were taking part in an excursion on a yacht rented from the beach resort of M\'diq - north of the city of Tetouan.\nEmergency services rescued three people after the incident, but senior players Abdellatif Akhrif, 24, and Salman El-Harrak, 18, are missing.\n\nOussama Aflah, Soumaimane Dahdouh and Abdelhamid Maali, a Morocco Under-20 international, were rescued after being out at sea for several hours.\n\nAflah is a club employee, while Dahdouh and Maali are considered promising young players with the reserve team.\n\nIttihad Tanger president Mohamed Cherkaoui confirmed the \"search for the missing players is still ongoing\".\nHe also asked members of the media and fans on social media to continue to be careful with information they share about the pair.\n\nMoroccan club Ittihad Tanger has told the BBC the search continues for two footballers who went missing off the country\'s northern Mediterranean coast on Saturday.\n\nFive staff members from the top-flight side were taking part in an excursion on a yacht rented from the beach resort of M\'diq - north of the city of Tetouan.\nEmergency services rescued three people after the incident, but senior players Abdellatif Akhrif, 24, and Salman El-Harrak, 18, are missing.\n\nOussama Aflah, Soumaimane Dahdouh and Abdelhamid Maali, a Morocco Under-20 international, were rescued after being out at sea for several hours.\n\nAflah is a club employee, while Dahdouh and Maali are considered promising young players with the reserve team.\nIttihad Tanger president Mohamed Cherkaoui confirmed the \"search for the missing players is still ongoing\".\nHe also asked members of the media and fans on social media to continue to be careful with information they share about the pair.\n',
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
