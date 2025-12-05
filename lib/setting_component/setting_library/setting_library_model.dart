import '/flutter_flow/flutter_flow_util.dart';
import 'setting_library_widget.dart' show SettingLibraryWidget;
import 'package:flutter/material.dart';

class SettingLibraryModel extends FlutterFlowModel<SettingLibraryWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController2;
  String path = '';
  late int triggerIndex = 0;
  String? Function(BuildContext, String?)? textController2Validator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    textController1?.dispose();
    textController2?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
