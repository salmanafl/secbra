import '/flutter_flow/flutter_flow_util.dart';
import 'setting_record_widget.dart' show SettingRecordWidget;
import 'package:flutter/material.dart';

class SettingRecordModel extends FlutterFlowModel<SettingRecordWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  TextEditingController? textController;
  String? path;
  String? Function(BuildContext, String?)? textControllerValidator;
  int? recordIndex;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    textController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
