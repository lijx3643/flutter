// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ModelCBC _$ModelCBCFromJson(Map<String, dynamic> json) {
  return ModelCBC(
    wbc: (json['wbc'] as num)?.toDouble() ?? 0,
    hb: (json['hb'] as num)?.toDouble() ?? 0,
    hct: (json['hct'] as num)?.toDouble() ?? 0,
    plt: json['plt'] as int ?? 0,
  );
}

Map<String, dynamic> _$ModelCBCToJson(ModelCBC instance) => <String, dynamic>{
      'wbc': instance.wbc,
      'hb': instance.hb,
      'hct': instance.hct,
      'plt': instance.plt,
    };

ModelBMP _$ModelBMPFromJson(Map<String, dynamic> json) {
  return ModelBMP(
    na: json['na'] as int ?? 0,
    k: (json['k'] as num)?.toDouble() ?? 0,
    cl: json['cl'] as int ?? 0,
    co2: json['co2'] as int ?? 0,
    bun: json['bun'] as int ?? 0,
    creat: (json['creat'] as num)?.toDouble() ?? 0,
    glc: json['glc'] as int ?? 0,
  );
}

Map<String, dynamic> _$ModelBMPToJson(ModelBMP instance) => <String, dynamic>{
      'na': instance.na,
      'k': instance.k,
      'cl': instance.cl,
      'co2': instance.co2,
      'bun': instance.bun,
      'creat': instance.creat,
      'glc': instance.glc,
    };

User _$UserFromJson(Map<String, dynamic> json) {
  return User(
    name: json['name'] as String,
    email: json['email'] as String,
  );
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
    };

BP _$BPFromJson(Map<String, dynamic> json) {
  return BP(
    A: json['A'] as int,
    B: json['B'] as int,
    C: json['C'] as int,
    D: json['D'] as int,
    E: json['E'] as int,
    F: json['F'] as int,
    G: json['G'] as int,
    H: json['H'] as int,
  );
}

Map<String, dynamic> _$BPToJson(BP instance) => <String, dynamic>{
      'A': instance.A,
      'B': instance.B,
      'C': instance.C,
      'D': instance.D,
      'E': instance.E,
      'F': instance.F,
      'G': instance.G,
      'H': instance.H,
    };

HR _$HRFromJson(Map<String, dynamic> json) {
  return HR(
    A: json['A'] as int,
    B: json['B'] as int,
    C: json['C'] as int,
    D: json['D'] as int,
    E: json['E'] as int,
    F: json['F'] as int,
    G: json['G'] as int,
    H: json['H'] as int,
  );
}

Map<String, dynamic> _$HRToJson(HR instance) => <String, dynamic>{
      'A': instance.A,
      'B': instance.B,
      'C': instance.C,
      'D': instance.D,
      'E': instance.E,
      'F': instance.F,
      'G': instance.G,
      'H': instance.H,
    };

RR _$RRFromJson(Map<String, dynamic> json) {
  return RR(
    A: json['A'] as int,
    B: json['B'] as int,
    C: json['C'] as int,
    D: json['D'] as int,
    E: json['E'] as int,
    F: json['F'] as int,
    G: json['G'] as int,
    H: json['H'] as int,
  );
}

Map<String, dynamic> _$RRToJson(RR instance) => <String, dynamic>{
      'A': instance.A,
      'B': instance.B,
      'C': instance.C,
      'D': instance.D,
      'E': instance.E,
      'F': instance.F,
      'G': instance.G,
      'H': instance.H,
    };
