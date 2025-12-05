import 'dart:developer';

import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'setting_record_model.dart';
export 'setting_record_model.dart';

class SettingRecordWidget extends StatefulWidget {
  const SettingRecordWidget({Key? key}) : super(key: key);

  @override
  _SettingRecordWidgetState createState() => _SettingRecordWidgetState();
}

class _SettingRecordWidgetState extends State<SettingRecordWidget> {
  late SettingRecordModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SettingRecordModel());
    _model.recordIndex = FFAppState().index;
    _model.textController ??= TextEditingController(text: FFAppState().Record[_model.recordIndex!]['name'].toString());
    _model.path = FFAppState().Record[_model.recordIndex!]['path'].toString();
    log(_model.recordIndex.toString());
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Stack(
      children: [
        Align(
          alignment: AlignmentDirectional(0.00, 0.00),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
            child: Container(
              width: double.infinity,
              height: 250.0,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: double.infinity,
                    height: 41.0,
                    decoration: BoxDecoration(
                      color: Color(0xFF343B3E),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                    child: TextFormField(
                      controller: _model.textController,
                      autofocus: true,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'Kata Kunci',
                        labelStyle: FlutterFlowTheme.of(context).labelMedium,
                        hintStyle: FlutterFlowTheme.of(context).labelMedium,
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).alternate,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).primary,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        errorBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedErrorBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            color: Color(0xFFFFFBFB),
                          ),
                      validator: _model.textControllerValidator.asValidator(context),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(1.00, 0.00),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(1.00, 0.00),
                          child: FlutterFlowIconButton(
                            borderRadius: 20.0,
                            borderWidth: 1.0,
                            buttonSize: 40.0,
                            hoverIconColor: FlutterFlowTheme.of(context).primaryText,
                            icon: Icon(
                              Icons.close_rounded,
                              color: Color(0xFF33DE2F),
                              size: 24.0,
                            ),
                            showLoadingIndicator: true,
                            onPressed: () async {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(1.00, 0.00),
                          child: FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 20.0,
                            borderWidth: 1.0,
                            buttonSize: 40.0,
                            hoverIconColor: FlutterFlowTheme.of(context).primaryText,
                            icon: Icon(
                              Icons.save,
                              color: Color(0xFF33DE2F),
                              size: 24.0,
                            ),
                            showLoadingIndicator: true,
                            onPressed: () async {
                              // FFAppState().updateRecordAtIndex(_index, (p0) => null)
                              Map<String, dynamic> data = {};
                              data['name'] = _model.textController.text;
                              data['path'] = _model.path;
                              data['isPlaying'] = false;

                              FFAppState().addRecordToPref(true);
                              FFAppState().updateRecordAtIndex(_model.recordIndex!, (p0) => data);
                              setState(() {});
                              setState(() {
                                FFAppState().addToTriggerRecord(_model.textController.text);
                              });
                              Navigator.pop(context);
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
