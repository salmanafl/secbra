import 'dart:developer';

import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  // static void reset() {
  //   _instance = FFAppState._internal();
  // }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  int _index = 0;
  int get index => _index;
  set index(int _value) {
    _index = _value;
  }

  List<DataBaseNotesStruct> _notes = [DataBaseNotesStruct.fromSerializableMap(jsonDecode('{\"kataKunci\":\"Haiyuks\",\"kontent\":\"Yuks haiyukss\"}'))];
  List<DataBaseNotesStruct> get notes => _notes;
  set Notes(List<DataBaseNotesStruct> _value) {
    _notes = _value;
  }

  void addToNotes(DataBaseNotesStruct _value) {
    _notes.add(_value);
  }

  void removeFromNotes(DataBaseNotesStruct _value) {
    _notes.remove(_value);
  }

  void removeAtIndexFromNotes(int _index) {
    _notes.removeAt(_index);
  }

  void updateNotesAtIndex(
    int _index,
    DataBaseNotesStruct Function(DataBaseNotesStruct) updateFn,
  ) {
    _notes[_index] = updateFn(_notes[_index]);
  }

  void insertAtIndexInNotes(int _index, DataBaseNotesStruct _value) {
    _notes.insert(_index, _value);
  }

  String _kataKunci = '';
  String get kataKunci => _kataKunci;
  set kataKunci(String _value) {
    _kataKunci = _value;
  }

  String _kontent = '';
  String get kontent => _kontent;
  set kontent(String _value) {
    _kontent = _value;
  }

  List<dynamic> _trigger = [];
  List<dynamic> get trigger => _trigger;
  set Trigger(List<dynamic> _value) {
    _trigger = _value;
  }

  void addToPref(bool reset) async {
    final pref = await SharedPreferences.getInstance();
    if (reset) pref.remove('listData');
    final data = jsonEncode(_trigger);
    pref.setString("listData", data);

    log(pref.getString("listData").toString());
  }

  void addRecordToPref(bool reset) async {
    final pref = await SharedPreferences.getInstance();
    if (reset) pref.remove('listDataMusic');
    final data = jsonEncode(_Record);
    pref.setString("listDataMusic", data);

    // log(pref.getString("listData").toString());
  }

  void getDataPref() async {
    _trigger.clear();
    _Record.clear();
    final pref = await SharedPreferences.getInstance();

    final data = jsonDecode(pref.getString('listData').toString());
    final music = jsonDecode(pref.getString('listDataMusic').toString());

    if (data != null) {
      _trigger = data;
    }
    if (music != null) {
      _Record = music;
    }

    log(data.toString());
    log(music.toString());

    // log(data[0]['name'].toString());
  }

  void addToTrigger(Map<String, dynamic> _value) {
    _trigger.add(_value);
  }

  void removeFromTrigger(Map<String, dynamic> _value) {
    _trigger.remove(_value);
  }

  void removeAtIndexFromTrigger(int _index) {
    _trigger.removeAt(_index);
  }

  void updateTriggerAtIndex(
    int _index,
    Map<String, dynamic> Function(Map<String, dynamic>) updateFn,
  ) {
    _trigger[_index] = updateFn(_trigger[_index]);
  }

  void insertAtIndexInTrigger(int _index, Map<String, dynamic> _value) {
    _trigger.insert(_index, _value);
  }

  List<dynamic> _Record = [];
  List<dynamic> get Record => _Record;
  set Record(List<dynamic> _value) {
    _Record = _value;
  }

  void addToRecord(Map<String, dynamic> _value) {
    _Record.add(_value);
  }

  void removeFromRecord(Map<String, dynamic> _value) {
    _Record.remove(_value);
  }

  void removeAtIndexFromRecord(int _index) {
    _Record.removeAt(_index);
  }

  void updateRecordAtIndex(
    int _index,
    Map<String, dynamic> Function(Map<String, dynamic>) updateFn,
  ) {
    _Record[_index] = updateFn(_Record[_index]);
  }

  void insertAtIndexInRecord(int _index, Map<String, dynamic> _value) {
    _Record.insert(_index, _value);
  }

  List<String> _triggerRecord = [];
  List<String> get TriggerRecord => _triggerRecord;
  set TriggerRecord(List<String> _value) {
    _triggerRecord = _value;
  }

  void addToTriggerRecord(String _value) {
    _triggerRecord.add(_value);
  }

  void removeFromTriggerRecord(String _value) {
    _triggerRecord.remove(_value);
  }

  void removeAtIndexFromTriggerRecord(int _index) {
    _triggerRecord.removeAt(_index);
  }

  void updateTriggerRecordAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _triggerRecord[_index] = updateFn(_triggerRecord[_index]);
  }

  void insertAtIndexInTriggerRecord(int _index, String _value) {
    _triggerRecord.insert(_index, _value);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
