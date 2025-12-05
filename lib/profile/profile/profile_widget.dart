import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'profile_model.dart';
export 'profile_model.dart';

class ProfileWidget extends StatefulWidget {
  const ProfileWidget({Key? key}) : super(key: key);

  @override
  _ProfileWidgetState createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  late ProfileModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProfileModel());

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
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 390.0,
                    child: Stack(
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(30.0, 36.0, 0.0, 0.0),
                          child: Icon(
                            Icons.account_circle_rounded,
                            color: Color(0xFFFFFBFB),
                            size: 47.0,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-0.38, 0.23),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(5.0, 44.0, 0.0, 0.0),
                            child: Text(
                              'Salman\'s Earbuds',
                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Manrope',
                                    color: Color(0xFFFFFBFB),
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-0.33, 0.82),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0.0, 60.0, 0.0, 0.0),
                            child: Text(
                              'Salmanemail@gmail.com',
                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Manrope',
                                    color: Color(0xFF33DE2F),
                                    fontSize: 11.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.10, 0.16),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0.0, 49.0, 0.0, 0.0),
                            child: Icon(
                              Icons.mode_edit,
                              color: Color(0xFFFFFEFE),
                              size: 10.0,
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(1.00, 0.00),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 32.0, 0.0),
                            child: FFButtonWidget(
                              onPressed: () {
                                print('Button pressed ...');
                              },
                              text: 'Log Out',
                              options: FFButtonOptions(
                                width: 65.0,
                                height: 22.0,
                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                color: Color(0xFF33DE2F),
                                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                      fontFamily: 'Manrope',
                                      color: Colors.white,
                                      fontSize: 11.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                elevation: 3.0,
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 31.0, 0.0, 0.0),
                    child: Container(
                      width: 365.0,
                      height: 238.0,
                      decoration: BoxDecoration(
                        color: Color(0xFF272727),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Stack(
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0.00, -5.00),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/image_2023-08-30_201618694.png',
                                width: 225.0,
                                height: 200.0,
                                fit: BoxFit.cover,
                                alignment: Alignment(0.00, 0.00),
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(-0.01, -0.03),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/image_2.png',
                                width: 55.0,
                                height: 40.0,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.00, 0.30),
                            child: Text(
                              'Secondary Brain SB1',
                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Manrope',
                                    color: Color(0xFFFFFBFB),
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(-1.00, 0.70),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(80.0, 0.0, 0.0, 0.0),
                              child: Text(
                                'Software Version V 12.2.1',
                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                      fontFamily: 'Manrope',
                                      color: Color(0xFFFFFBFB),
                                      fontSize: 10.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(1.00, 0.73),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 80.0, 0.0),
                              child: FFButtonWidget(
                                onPressed: () {
                                  print('Button pressed ...');
                                },
                                text: 'Update',
                                options: FFButtonOptions(
                                  width: 65.0,
                                  height: 22.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                  color: Color(0xFF33DE2F),
                                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                        fontFamily: 'Manrope',
                                        color: Colors.white,
                                        fontSize: 11.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                  elevation: 3.0,
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(20.0),
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
              Align(
                alignment: AlignmentDirectional(1.00, 1.00),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 20.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.pushNamed('SpeechPage');
                    },
                    child: Icon(
                      Icons.arrow_circle_left_sharp,
                      color: Color(0xFF33DE2F),
                      size: 60.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
