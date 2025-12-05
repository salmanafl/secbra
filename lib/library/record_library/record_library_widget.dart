import 'dart:developer';
import 'dart:io';

import 'package:audioplayers/audioplayers.dart';

import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import '/setting_component/setting_record/setting_record_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'record_library_model.dart';
export 'record_library_model.dart';

class RecordLibraryWidget extends StatefulWidget {
  const RecordLibraryWidget({Key? key}) : super(key: key);

  @override
  _RecordLibraryWidgetState createState() => _RecordLibraryWidgetState();
}

class _RecordLibraryWidgetState extends State<RecordLibraryWidget> {
  late RecordLibraryModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RecordLibraryModel());

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
          child: Stack(
            children: [
              ListView(
                shrinkWrap: true,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0.00, 0.00),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0.0, 47.95, 0.0, 0.0),
                          child: Text(
                            'Record Mode',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                  fontFamily: 'Manrope',
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.00, 0.00),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0.0, 70.0, 0.0, 0.0),
                          child: Container(
                            width: 378.0,
                            height: 110.0,
                            decoration: BoxDecoration(
                              color: Color(0xFF272727),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Stack(
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(-0.10, -0.03),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                                    child: Text(
                                      'Commands',
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
                                  alignment: AlignmentDirectional(0.26, 0.20),
                                  child: Icon(
                                    Icons.keyboard_voice_rounded,
                                    color: Color(0xFF33DE2F),
                                    size: 20.0,
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.00, -16.00),
                                  child: Container(
                                    width: 109.0,
                                    height: 103.0,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF272727),
                                      borderRadius: BorderRadius.circular(20.0),
                                      border: Border.all(
                                        color: Color(0xFF33DE2F),
                                      ),
                                    ),
                                    child: Align(
                                      alignment: AlignmentDirectional(0.00, 0.00),
                                      child: Icon(
                                        Icons.record_voice_over,
                                        color: Color(0xFF33DE2F),
                                        size: 48.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.00, 0.00),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0.0, 6.0, 0.0, 0.0),
                          child: Container(
                            width: 378.0,
                            height: 132.0,
                            decoration: BoxDecoration(
                              color: Color(0xFF272727),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Stack(
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(-1.00, -1.00),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 0.0, 0.0),
                                    child: Text(
                                      'Add Command',
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
                                  alignment: AlignmentDirectional(-1.00, 0.00),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 8.0, 0.0),
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
                                                color: Color(0xFFFFFEFE),
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
                                              color: Colors.black,
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                        textAlign: TextAlign.start,
                                        validator: _model.textControllerValidator.asValidator(context),
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(1.00, 0.00),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        final selectedFiles = await selectFiles(
                                          allowedExtensions: ['mp3'],
                                          multiFile: false,
                                        );
                                        if (selectedFiles != null) {
                                          setState(() => _model.isDataUploading = true);
                                          var selectedUploadedFiles = <FFUploadedFile>[];

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
                                            _model.path = selectedFiles.first.filePath;
                                            _model.isPlaying = false;
                                            _model.textController.text = selectedUploadedFiles.first.name.toString();

                                            setState(() {
                                              _model.uploadedLocalFile = selectedUploadedFiles.first;
                                            });
                                          } else {
                                            setState(() {});
                                            return;
                                          }
                                        }
                                      },
                                      child: Icon(
                                        Icons.upload_file,
                                        color: Color(0xFFD9D9D9),
                                        size: 24.0,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.00, 1.00),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 14.0),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        Map<String, dynamic> dataUpload = {};
                                        dataUpload['name'] = _model.textController.text;
                                        dataUpload['path'] = _model.path.toString();
                                        dataUpload['isPlaying'] = _model.isPlaying;
                                        FFAppState().addToRecord(dataUpload);
                                        FFAppState().addRecordToPref(true);
                                        _model.textController?.clear();
                                        setState(() {});
                                        // setState(() {
                                        //   FFAppState().addToTriggerRecord(valueOrDefault<String>(
                                        //     _model.textController.text,
                                        //     '0',
                                        //   ));
                                        //   dataUpload.clear();
                                        // });
                                      },
                                      text: 'Add Command',
                                      options: FFButtonOptions(
                                        width: 133.0,
                                        height: 25.0,
                                        padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
                                        iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                        color: Color(0xFF33DE2F),
                                        textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                              fontFamily: 'Manrope',
                                              color: Colors.white,
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                        elevation: 3.0,
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                          width: 0.0,
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
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.00, 0.00),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 0.0),
                          child: Container(
                            width: double.infinity,
                            height: 314.0,
                            decoration: BoxDecoration(
                              color: Color(0xFF272727),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(5.0, 10.0, 5.0, 0.0),
                              child: SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional(-1.00, 0.00),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                                        child: Text(
                                          'Record library',
                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                fontFamily: 'Readex Pro',
                                                color: Color(0xFFE5EDF5),
                                              ),
                                        ),
                                      ),
                                    ),
                                    Builder(
                                      builder: (context) {
                                        final record = FFAppState().Record.map((e) => e).toList();
                                        return ListView.builder(
                                          padding: EdgeInsets.zero,
                                          shrinkWrap: true,
                                          scrollDirection: Axis.vertical,
                                          itemCount: record.length,
                                          itemBuilder: (context, recordIndex) {
                                            final recordItem = record[recordIndex];
                                            return Stack(
                                              children: [
                                                InkWell(
                                                  onTap: () {
                                                    log(_model.uploadedLocalFile.name.toString());
                                                  },
                                                  child: Container(
                                                    width: double.infinity,
                                                    height: 65.0,
                                                    decoration: BoxDecoration(
                                                      color: Color(0x00FFFBFB),
                                                    ),
                                                    child: Stack(
                                                      children: [
                                                        Align(
                                                          alignment: AlignmentDirectional(0.00, -1.00),
                                                          child: Container(
                                                            width: double.infinity,
                                                            height: 55.0,
                                                            decoration: BoxDecoration(
                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                              borderRadius: BorderRadius.circular(20.0),
                                                            ),
                                                            child: Row(
                                                              mainAxisSize: MainAxisSize.max,
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                                                                  child: FlutterFlowIconButton(
                                                                    borderColor: Color(0x004B39EF),
                                                                    borderRadius: 20.0,
                                                                    borderWidth: 1.0,
                                                                    buttonSize: 51.0,
                                                                    fillColor: Color(0x004B39EF),
                                                                    icon: Icon(
                                                                      FFAppState().Record[recordIndex]['isPlaying'] ? Icons.pause_circle : Icons.play_circle,
                                                                      color: Color(0xFF33DE2F),
                                                                      size: 40.0,
                                                                    ),
                                                                    onPressed: () async {
                                                                      print('IconButton pressed ...');
                                                                      log(recordIndex.toString());
                                                                      final data = recordItem;

                                                                      log(data.toString());
                                                                      if (FFAppState().Record[recordIndex]['isPlaying']) {
                                                                        await _model.audioPlayer.pause();
                                                                        Map<String, dynamic> updateData = {};
                                                                        updateData['name'] = data['name'];
                                                                        updateData['path'] = data['path'];
                                                                        updateData['isPlaying'] = false;
                                                                        FFAppState().updateRecordAtIndex(recordIndex, (p0) => updateData);
                                                                        setState(() {});
                                                                      } else {
                                                                        final fileMusic = File(FFAppState().Record[recordIndex]['path']);
                                                                        await _model.audioPlayer.play(DeviceFileSource(fileMusic.path));
                                                                        Map<String, dynamic> updateData = {};
                                                                        updateData['name'] = data['name'];
                                                                        updateData['path'] = data['path'];
                                                                        updateData['isPlaying'] = true;
                                                                        FFAppState().updateRecordAtIndex(recordIndex, (p0) => updateData);
                                                                        setState(() {});
                                                                      }
                                                                      log(FFAppState().Record[recordIndex].toString());
                                                                    },
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                  child: Text(
                                                                    recordItem['name'],
                                                                    style: FlutterFlowTheme.of(context).bodyMedium,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                        Align(
                                                          alignment: AlignmentDirectional(1.00, 0.00),
                                                          child: Padding(
                                                            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 10.0),
                                                            child: FlutterFlowIconButton(
                                                              borderColor: Color(0x004B39EF),
                                                              borderRadius: 20.0,
                                                              borderWidth: 1.0,
                                                              buttonSize: 40.0,
                                                              fillColor: Color(0x004B39EF),
                                                              icon: Icon(
                                                                Icons.restore_from_trash,
                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                size: 24.0,
                                                              ),
                                                              onPressed: () async {
                                                                setState(() {
                                                                  FFAppState().removeAtIndexFromRecord(recordIndex);
                                                                });
                                                              },
                                                            ),
                                                          ),
                                                        ),
                                                        Align(
                                                          alignment: AlignmentDirectional(1.00, 0.00),
                                                          child: Padding(
                                                            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 55.0, 10.0),
                                                            child: FlutterFlowIconButton(
                                                              borderColor: Color(0x004B39EF),
                                                              borderRadius: 20.0,
                                                              borderWidth: 1.0,
                                                              buttonSize: 40.0,
                                                              fillColor: Color(0x004B39EF),
                                                              icon: Icon(
                                                                Icons.edit_outlined,
                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                size: 24.0,
                                                              ),
                                                              onPressed: () async {
                                                                FFAppState().index = recordIndex;
                                                                await showModalBottomSheet(
                                                                  isScrollControlled: true,
                                                                  backgroundColor: Colors.transparent,
                                                                  enableDrag: false,
                                                                  context: context,
                                                                  builder: (context) {
                                                                    return Padding(
                                                                      padding: MediaQuery.viewInsetsOf(context),
                                                                      child: SettingRecordWidget(),
                                                                    );
                                                                    // return GestureDetector(
                                                                    //   onTap: () => _model.unfocusNode.canRequestFocus
                                                                    //       ? FocusScope.of(context).requestFocus(_model.unfocusNode)
                                                                    //       : FocusScope.of(context).unfocus(),
                                                                    //   child: Padding(
                                                                    //     padding: MediaQuery.viewInsetsOf(context),
                                                                    //     child: SettingRecordWidget(),
                                                                    //   ),
                                                                    // );
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
                                              ],
                                            );
                                          },
                                        );
                                      },
                                    ),
                                  ].divide(SizedBox(height: 5.0)),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
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
        ),
      ),
    );
  }
}
