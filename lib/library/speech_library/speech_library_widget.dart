import 'dart:developer';

import 'package:open_file/open_file.dart';

import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import '/setting_component/setting_library/setting_library_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'speech_library_model.dart';
export 'speech_library_model.dart';

class SpeechLibraryWidget extends StatefulWidget {
  const SpeechLibraryWidget({Key? key}) : super(key: key);

  @override
  _SpeechLibraryWidgetState createState() => _SpeechLibraryWidgetState();
}

class _SpeechLibraryWidgetState extends State<SpeechLibraryWidget> {
  late SpeechLibraryModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SpeechLibraryModel());

    _model.textController ??= TextEditingController();
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
          child: ListView(
            shrinkWrap: true,
            children: [
              Stack(
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 80.0, 0.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 5.0),
                          child: Container(
                            width: double.infinity,
                            height: 120.0,
                            decoration: BoxDecoration(
                              color: Color(0xFF272727),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Stack(
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional(0.00, -1.00),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 75.0, 0.0, 0.0),
                                        child: Text(
                                          'Library',
                                          style: FlutterFlowTheme.of(context).titleMedium,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0.00, -1.00),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 75.0, 0.0, 0.0),
                                        child: Icon(
                                          Icons.storage,
                                          color: Color(0xFF33DE2F),
                                          size: 24.0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 5.0),
                          child: Container(
                            width: double.infinity,
                            height: 120.0,
                            decoration: BoxDecoration(
                              color: Color(0xFF272727),
                              borderRadius: BorderRadius.circular(20.0),
                              border: Border.all(
                                color: Color(0xFF343B3E),
                              ),
                            ),
                            child: Stack(
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 12.0, 0.0, 0.0),
                                  child: Text(
                                    'Add Command',
                                    style: FlutterFlowTheme.of(context).titleMedium.override(
                                          fontFamily: 'Readex Pro',
                                          fontSize: 16.0,
                                        ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.00, 1.00),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 6.0),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        setState(() {
                                          Map<String, dynamic> data = {};
                                          data['name'] = _model.textController.text;
                                          data['path'] = _model.path;
                                          FFAppState().addToTrigger(data);
                                          FFAppState().addToPref(true);
                                          _model.textController?.clear();
                                        });
                                      },
                                      text: 'Upload',
                                      options: FFButtonOptions(
                                        height: 30.0,
                                        padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                        iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                        color: Color(0xFF33DE2F),
                                        textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                              fontFamily: 'Readex Pro',
                                              color: Color(0xFF272727),
                                            ),
                                        elevation: 3.0,
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                          width: 1.0,
                                        ),
                                        borderRadius: BorderRadius.circular(30.0),
                                      ),
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional(0.00, 0.00),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                        child: Container(
                                          width: 303.0,
                                          child: TextFormField(
                                            controller: _model.textController,
                                            autofocus: true,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              isDense: true,
                                              labelStyle: FlutterFlowTheme.of(context).titleMedium.override(
                                                    fontFamily: 'Readex Pro',
                                                    color: Color(0xFF272727),
                                                  ),
                                              hintText: 'Your Command',
                                              hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                    fontFamily: 'Readex Pro',
                                                    fontSize: 14.0,
                                                  ),
                                              enabledBorder: UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 0.0,
                                                ),
                                                borderRadius: BorderRadius.circular(20.0),
                                              ),
                                              focusedBorder: UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(context).warning,
                                                  width: 0.0,
                                                ),
                                                borderRadius: BorderRadius.circular(20.0),
                                              ),
                                              errorBorder: UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(context).error,
                                                  width: 0.0,
                                                ),
                                                borderRadius: BorderRadius.circular(20.0),
                                              ),
                                              focusedErrorBorder: UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(context).error,
                                                  width: 0.0,
                                                ),
                                                borderRadius: BorderRadius.circular(20.0),
                                              ),
                                              filled: true,
                                              fillColor: Color(0xFFFFFEFE),
                                            ),
                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                  fontFamily: 'Manrope',
                                                  color: Color(0xFF272727),
                                                  fontSize: 18.0,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                            textAlign: TextAlign.start,
                                            validator: _model.textControllerValidator.asValidator(context),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                      child: FlutterFlowIconButton(
                                        borderColor: Color(0x004B39EF),
                                        borderRadius: 20.0,
                                        borderWidth: 1.0,
                                        buttonSize: 40.0,
                                        fillColor: Color(0x004B39EF),
                                        icon: Icon(
                                          Icons.upload_file,
                                          color: Color(0xFFFFFBFB),
                                          size: 24.0,
                                        ),
                                        onPressed: () async {
                                          final selectedFiles = await selectFiles(
                                            multiFile: false,
                                          );
                                          if (selectedFiles != null) {
                                            setState(() => _model.isDataUploading = true);
                                            var selectedUploadedFiles = <FFUploadedFile>[];

                                            var filePath = <FFUploadedFile>[];

                                            filePath = selectedFiles
                                                .map((e) => FFUploadedFile(
                                                      name: e.filePath,
                                                    ))
                                                .toList();

                                            try {
                                              selectedUploadedFiles = selectedFiles
                                                  .map((m) => FFUploadedFile(
                                                        name: m.storagePath.split('/').last,
                                                        bytes: m.bytes,
                                                      ))
                                                  .toList();
                                            } finally {
                                              _model.isDataUploading = false;
                                            }
                                            if (selectedUploadedFiles.length == selectedFiles.length) {
                                              setState(() {
                                                _model.uploadedLocalFile = selectedUploadedFiles.first;
                                              });
                                              _model.textController.text = selectedUploadedFiles.first.name.toString();

                                              _model.path = filePath.first.name.toString();
                                            } else {
                                              setState(() {});
                                              return;
                                            }
                                          }
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 10.0),
                            child: Container(
                              width: double.infinity,
                              height: 374.0,
                              decoration: BoxDecoration(
                                color: Color(0xFF272727),
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(-1.00, -1.00),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(10.0, 12.0, 0.0, 0.0),
                                      child: Text(
                                        'Saved Library',
                                        style: FlutterFlowTheme.of(context).titleMedium.override(
                                              fontFamily: 'Readex Pro',
                                              fontSize: 16.0,
                                            ),
                                      ),
                                    ),
                                  ),
                                  Builder(
                                    builder: (context) {
                                      final trigger = FFAppState().trigger.map((e) => e).toList();
                                      return ListView.builder(
                                        padding: EdgeInsets.zero,
                                        shrinkWrap: true,
                                        scrollDirection: Axis.vertical,
                                        itemCount: trigger.length,
                                        itemBuilder: (context, triggerIndex) {
                                          final triggerItem = trigger[triggerIndex];
                                          return InkWell(
                                            onTap: () {
                                              OpenFile.open(trigger[triggerIndex]['path']);
                                              log(trigger[triggerIndex].toString());
                                            },
                                            child: Container(
                                              width: double.infinity,
                                              height: 67.0,
                                              decoration: BoxDecoration(
                                                color: Color(0x00FFFBFB),
                                              ),
                                              child: Stack(
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsetsDirectional.fromSTEB(20.0, 15.0, 70.0, 0.0),
                                                    child: Container(
                                                      width: double.infinity,
                                                      height: 50.0,
                                                      decoration: BoxDecoration(
                                                        color: Color(0xFFFFFBFB),
                                                        borderRadius: BorderRadius.circular(20.0),
                                                      ),
                                                      child: Stack(
                                                        children: [
                                                          Align(
                                                            alignment: AlignmentDirectional(-1.00, 0.00),
                                                            child: Padding(
                                                              padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                              child: Text(
                                                                triggerItem['name'],
                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                      fontFamily: 'Readex Pro',
                                                                      color: Color(0xFF0B0404),
                                                                    ),
                                                              ),
                                                            ),
                                                          ),
                                                          Align(
                                                            alignment: AlignmentDirectional(1.00, 0.00),
                                                            child: Padding(
                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 15.0, 0.0),
                                                              child: FlutterFlowIconButton(
                                                                borderColor: Color(0x004B39EF),
                                                                borderRadius: 20.0,
                                                                borderWidth: 1.0,
                                                                buttonSize: 40.0,
                                                                fillColor: Color(0x004B39EF),
                                                                icon: Icon(
                                                                  Icons.edit_outlined,
                                                                  color: Color(0xFF0B0404),
                                                                  size: 24.0,
                                                                ),
                                                                onPressed: () async {
                                                                  FFAppState().index = triggerIndex;

                                                                  await FFAppState().index;
                                                                  await showModalBottomSheet(
                                                                    isScrollControlled: true,
                                                                    backgroundColor: Colors.transparent,
                                                                    enableDrag: false,
                                                                    context: context,
                                                                    builder: (context) {
                                                                      return GestureDetector(
                                                                        onTap: () => _model.unfocusNode.canRequestFocus
                                                                            ? FocusScope.of(context).requestFocus(_model.unfocusNode)
                                                                            : FocusScope.of(context).unfocus(),
                                                                        child: Padding(
                                                                          padding: MediaQuery.viewInsetsOf(context),
                                                                          child: SettingLibraryWidget(),
                                                                        ),
                                                                      );
                                                                    },
                                                                  ).then((value) => safeSetState(() {}));
                                                                },
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment: AlignmentDirectional(1.00, -1.00),
                                                    child: Padding(
                                                      padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 10.0, 0.0),
                                                      child: FlutterFlowIconButton(
                                                        borderColor: Color(0x004B39EF),
                                                        borderRadius: 20.0,
                                                        borderWidth: 1.0,
                                                        buttonSize: 40.0,
                                                        fillColor: Color(0x004B39EF),
                                                        icon: Icon(
                                                          Icons.restore_from_trash,
                                                          color: Color(0xFFFFFBFB),
                                                          size: 24.0,
                                                        ),
                                                        onPressed: () async {
                                                          FFAppState().removeFromTrigger(triggerItem);
                                                          FFAppState().addToPref(true);
                                                          setState(() {});
                                                        },
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          );
                                        },
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ].divide(SizedBox(height: 0.0)),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.00, -1.00),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0.0, 35.0, 0.0, 0.0),
                      child: Container(
                        width: 117.0,
                        height: 117.0,
                        decoration: BoxDecoration(
                          color: Color(0xFF343B3E),
                          borderRadius: BorderRadius.circular(20.0),
                          border: Border.all(
                            color: Color(0xFF33DE2F),
                            width: 2.0,
                          ),
                        ),
                        child: Stack(
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0.00, 0.00),
                              child: Icon(
                                Icons.storage,
                                color: Color(0xFF33DE2F),
                                size: 60.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
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
                          context.pop();
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
            ],
          ),
        ),
      ),
    );
  }
}
