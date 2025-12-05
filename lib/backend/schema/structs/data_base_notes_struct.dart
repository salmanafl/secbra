// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DataBaseNotesStruct extends BaseStruct {
  DataBaseNotesStruct({
    String? kataKunci,
    String? kontent,
  })  : _kataKunci = kataKunci,
        _kontent = kontent;

  // "kataKunci" field.
  String? _kataKunci;
  String get kataKunci => _kataKunci ?? '';
  set kataKunci(String? val) => _kataKunci = val;
  bool hasKataKunci() => _kataKunci != null;

  // "kontent" field.
  String? _kontent;
  String get kontent => _kontent ?? '';
  set kontent(String? val) => _kontent = val;
  bool hasKontent() => _kontent != null;

  static DataBaseNotesStruct fromMap(Map<String, dynamic> data) =>
      DataBaseNotesStruct(
        kataKunci: data['kataKunci'] as String?,
        kontent: data['kontent'] as String?,
      );

  static DataBaseNotesStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? DataBaseNotesStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'kataKunci': _kataKunci,
        'kontent': _kontent,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'kataKunci': serializeParam(
          _kataKunci,
          ParamType.String,
        ),
        'kontent': serializeParam(
          _kontent,
          ParamType.String,
        ),
      }.withoutNulls;

  static DataBaseNotesStruct fromSerializableMap(Map<String, dynamic> data) =>
      DataBaseNotesStruct(
        kataKunci: deserializeParam(
          data['kataKunci'],
          ParamType.String,
          false,
        ),
        kontent: deserializeParam(
          data['kontent'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DataBaseNotesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DataBaseNotesStruct &&
        kataKunci == other.kataKunci &&
        kontent == other.kontent;
  }

  @override
  int get hashCode => const ListEquality().hash([kataKunci, kontent]);
}

DataBaseNotesStruct createDataBaseNotesStruct({
  String? kataKunci,
  String? kontent,
}) =>
    DataBaseNotesStruct(
      kataKunci: kataKunci,
      kontent: kontent,
    );
