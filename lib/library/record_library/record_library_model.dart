import 'package:audioplayers/audioplayers.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'record_library_widget.dart' show RecordLibraryWidget;
import 'package:flutter/material.dart';

class RecordLibraryModel extends FlutterFlowModel<RecordLibraryWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  TextEditingController? textController;
  String? path;
  bool? isPlaying;
  String? Function(BuildContext, String?)? textControllerValidator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile = FFUploadedFile(bytes: Uint8List.fromList([]));
  final audioPlayer = AudioPlayer();

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    textController?.dispose();
    audioPlayer.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
