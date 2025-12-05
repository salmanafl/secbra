import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'speech_component_widget.dart' show SpeechComponentWidget;
import 'package:flutter/material.dart';

class SpeechComponentModel extends FlutterFlowModel<SpeechComponentWidget> {
  ///  Local state fields for this component.

  DataBaseNotesStruct? library;
  void updateLibraryStruct(Function(DataBaseNotesStruct) updateFn) => updateFn(library ??= DataBaseNotesStruct());

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {}

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
