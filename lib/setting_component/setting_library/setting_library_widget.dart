import 'dart:developer';

import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'setting_library_model.dart';
export 'setting_library_model.dart';

class SettingLibraryWidget extends StatefulWidget {
  const SettingLibraryWidget({Key? key}) : super(key: key);

  @override
  _SettingLibraryWidgetState createState() => _SettingLibraryWidgetState();
}

class _SettingLibraryWidgetState extends State<SettingLibraryWidget> {
  late SettingLibraryModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SettingLibraryModel());
    _model.triggerIndex = FFAppState().index;
    _model.textController1 ??= TextEditingController(text: FFAppState().trigger[_model.triggerIndex]['name']);
    _model.textController2 ??= TextEditingController(text: FFAppState().kontent);
    _model.path = FFAppState().trigger[_model.triggerIndex]['path'];
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
          child: Container(
            width: double.infinity,
            height: 593.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
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
                    controller: _model.textController1,
                    onFieldSubmitted: (_) async {
                      setState(() {
                        FFAppState().kataKunci = _model.textController1.text;
                      });
                    },
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
                    style: FlutterFlowTheme.of(context).bodyMedium,
                    validator: _model.textController1Validator.asValidator(context),
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
                            log(_model.triggerIndex.toString());

                            Map<String, dynamic> data = {};
                            data['name'] = _model.textController1.text;
                            data['path'] = _model.path;

                            FFAppState().updateTriggerAtIndex(_model.triggerIndex, (p0) => data);
                            FFAppState().addToPref(true);

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
      ],
    );
  }
}
