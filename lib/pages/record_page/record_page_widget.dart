import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'record_page_model.dart';
export 'record_page_model.dart';

class RecordPageWidget extends StatefulWidget {
  const RecordPageWidget({Key? key}) : super(key: key);

  @override
  _RecordPageWidgetState createState() => _RecordPageWidgetState();
}

class _RecordPageWidgetState extends State<RecordPageWidget> with TickerProviderStateMixin {
  late RecordPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'imageOnPageLoadAnimation': AnimationInfo(
      loop: true,
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ShakeEffect(
          curve: Curves.easeInOut,
          delay: 600.ms,
          duration: 1000.ms,
          hz: 3,
          offset: Offset(0.0, 0.0),
          rotation: 0.175,
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RecordPageModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFF0F0E0E),
        appBar: AppBar(
          backgroundColor: Color(0xFF0F0E0E),
          automaticallyImplyLeading: false,
          title: Align(
            alignment: AlignmentDirectional(0.00, 0.00),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(50.0, 0.0, 0.0, 0.0),
              child: Text(
                'Secondary Brain',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Manrope',
                      color: Color(0xFFFFFEFE),
                      fontSize: 17.0,
                      letterSpacing: 2.0,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
          ),
          actions: [
            FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 20.0,
              borderWidth: 0.0,
              buttonSize: 52.0,
              icon: Icon(
                Icons.account_circle,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 34.0,
              ),
              onPressed: () async {
                context.pushNamed('Profile');
              },
            ),
          ],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: ListView(
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.00, 0.00),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10.0, 50.0, 10.0, 0.0),
                      child: Container(
                        width: double.infinity,
                        height: 202.59,
                        decoration: BoxDecoration(
                          color: Color(0xFF272727),
                          borderRadius: BorderRadius.circular(20.0),
                          border: Border.all(
                            color: Color(0xFF272727),
                          ),
                        ),
                        child: Stack(
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0.45, 0.58),
                              child: Text(
                                'L 60%',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                      fontFamily: 'Manrope',
                                      color: Color(0xFFFFFEFE),
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.00, 0.20),
                              child: Text(
                                'Active',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                      fontFamily: 'Manrope',
                                      color: Color(0xFF33DE2F),
                                      fontSize: 10.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.00, -0.20),
                              child: Text(
                                'Salman’s Earbuds',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                      fontFamily: 'Manrope',
                                      color: Color(0xFFFFFEFE),
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(-0.01, 0.84),
                              child: Text(
                                '4hr 25m Remaining',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                      fontFamily: 'Manrope',
                                      color: Color(0xFFFFD80A),
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(-0.45, 0.58),
                              child: Text(
                                'L 60%',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                      fontFamily: 'Manrope',
                                      color: Color(0xFFFFFEFE),
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.00, -300.00),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.asset(
                                  'assets/images/image_2023-08-30_201618694.png',
                                  width: 225.0,
                                  height: 200.0,
                                  fit: BoxFit.cover,
                                ),
                              ).animateOnPageLoad(animationsMap['imageOnPageLoadAnimation']!),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Align(
                                    alignment: AlignmentDirectional(1.00, 0.40),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(70.0, 0.0, 0.0, 0.0),
                                      child: LinearPercentIndicator(
                                        percent: 0.6,
                                        width: 77.0,
                                        lineHeight: 8.0,
                                        animation: true,
                                        animateFromLastPercent: true,
                                        progressColor: Color(0xFFFFD80A),
                                        backgroundColor: Color(0xFFD9D9D9),
                                        barRadius: Radius.circular(20.0),
                                        padding: EdgeInsets.zero,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Align(
                                    alignment: AlignmentDirectional(0.00, 0.40),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(35.0, 0.0, 0.0, 0.0),
                                      child: LinearPercentIndicator(
                                        percent: 0.6,
                                        width: 77.0,
                                        lineHeight: 8.0,
                                        animation: true,
                                        animateFromLastPercent: true,
                                        progressColor: Color(0xFFFFD80A),
                                        backgroundColor: Color(0xFFD9D9D9),
                                        barRadius: Radius.circular(20.0),
                                        padding: EdgeInsets.zero,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 0.0),
                    child: Container(
                      width: double.infinity,
                      height: 179.5,
                      decoration: BoxDecoration(
                        color: Color(0xFF272727),
                        borderRadius: BorderRadius.circular(20.0),
                        border: Border.all(
                          color: Color(0xFF272727),
                        ),
                      ),
                      child: Stack(
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0.00, -0.90),
                            child: Text(
                              'Select Mode',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Manrope',
                                    color: Color(0xFFFFFEFE),
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.00, -0.40),
                            child: FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 20.0,
                              borderWidth: 0.0,
                              buttonSize: 52.0,
                              icon: Icon(
                                Icons.music_note_outlined,
                                color: Color(0xFFFFFEFE),
                                size: 34.0,
                              ),
                              onPressed: () async {
                                context.pushNamed('MusicPage');
                              },
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.60, -0.40),
                            child: FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 20.0,
                              borderWidth: 0.0,
                              buttonSize: 52.0,
                              icon: Icon(
                                Icons.record_voice_over,
                                color: Color(0xFFFFFEFE),
                                size: 34.0,
                              ),
                              onPressed: () async {
                                context.pushReplacementNamed('SpeechPage');
                              },
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(-0.60, -0.40),
                            child: FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 20.0,
                              borderWidth: 0.0,
                              buttonSize: 52.0,
                              icon: Icon(
                                Icons.fiber_smart_record_rounded,
                                color: Color(0xFF33DE2F),
                                size: 34.0,
                              ),
                              onPressed: () {
                                print('IconButton pressed ...');
                              },
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(-0.60, 0.00),
                            child: Text(
                              'Record',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Manrope',
                                    color: Color(0xFF33DE2F),
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.61, 0.00),
                            child: Text(
                              'Speech',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Manrope',
                                    color: Color(0xFFFFFEFE),
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.00, 0.00),
                            child: Text(
                              'Music',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Manrope',
                                    color: Color(0xFFFFFEFE),
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.00, 0.80),
                            child: FFButtonWidget(
                              onPressed: () {
                                print('Button pressed ...');
                              },
                              text: 'Test Speaker & Microphone',
                              options: FFButtonOptions(
                                width: 240.0,
                                height: 29.39,
                                padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                color: Color(0xFF79FC77),
                                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                      fontFamily: 'Readex Pro',
                                      color: Color(0xFF272727),
                                      fontSize: 15.0,
                                    ),
                                elevation: 3.0,
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(20.0),
                                hoverTextColor: FlutterFlowTheme.of(context).secondaryBackground,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 0.0),
                    child: Container(
                      width: double.infinity,
                      height: 102.87,
                      decoration: BoxDecoration(
                        color: Color(0xFF272727),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Stack(
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0.00, -1.00),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                              child: Text(
                                'Record',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                      fontFamily: 'Manrope',
                                      color: Color(0xFFFFFEFE),
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.00, 0.00),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  context.pushNamed('RecordLibrary');
                                },
                                text: 'Record',
                                icon: Icon(
                                  Icons.list_rounded,
                                  color: Color(0xFF0F0E0E),
                                  size: 15.0,
                                ),
                                options: FFButtonOptions(
                                  width: 128.0,
                                  height: 32.54,
                                  padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                  color: Color(0xFFFFFEFE),
                                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                        fontFamily: 'Readex Pro',
                                        color: Color(0xFF0F0E0E),
                                        fontSize: 15.0,
                                      ),
                                  elevation: 3.0,
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(20.0),
                                  hoverColor: Color(0xFF33DE2F),
                                  hoverTextColor: FlutterFlowTheme.of(context).info,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.00, -1.00),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                              child: Text(
                                'Say “Hello SEBAD” for turn on the Assistant',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                      fontFamily: 'Manrope',
                                      color: Color(0xFF33DE2F),
                                      fontSize: 10.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
