import 'package:json_annotation/json_annotation.dart';

part 'models.g.dart';

@JsonSerializable()
class ModelCBC {
  @JsonKey(defaultValue: 0)
  final double wbc;
  @JsonKey(defaultValue: 0)
  final double hb;
  @JsonKey(defaultValue: 0)
  final double hct;
  @JsonKey(defaultValue: 0)
  final int plt;

  ModelCBC(
      {this.wbc, this.hb, this.hct, this.plt});

  factory ModelCBC.fromJson(Map<String, dynamic> json) =>
      _$ModelCBCFromJson(json);
  Map<String, dynamic> toJson() => _$ModelCBCToJson(this);
}

@JsonSerializable()
class ModelBMP {
  @JsonKey(defaultValue: 0)
  final int na;
  @JsonKey(defaultValue: 0)
  final double k;
  @JsonKey(defaultValue: 0)
  final int cl;
  @JsonKey(defaultValue: 0)
  final int co2;
  @JsonKey(defaultValue: 0)
  final int bun;
  @JsonKey(defaultValue: 0)
  final double creat;
  @JsonKey(defaultValue: 0)
  final int glc;

  ModelBMP(
      {this.na, this.k, this.cl, this.co2, this.bun, this.creat, this.glc});

  factory ModelBMP.fromJson(Map<String, dynamic> json) =>
      _$ModelBMPFromJson(json);
  Map<String, dynamic> toJson() => _$ModelBMPToJson(this);
}

@JsonSerializable()
class User {
  final String name;
  final String email;
  
  User({this.name, this.email});

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}

@JsonSerializable()
class BP {
  final int A;
  final int B;
  final int C;
  final int D;
  final int E;
  final int F;
  final int G;
  final int H;
  
  BP({this.A,this.B,this.C,this.D,this.E,this.F,this.G,this.H});

  factory BP.fromJson(Map<String, dynamic> json) => _$BPFromJson(json);
  Map<String, dynamic> toJson() => _$BPToJson(this);
}

@JsonSerializable()
class HR {
  final int A;
  final int B;
  final int C;
  final int D;
  final int E;
  final int F;
  final int G;
  final int H;
  
  HR({this.A,this.B,this.C,this.D,this.E,this.F,this.G,this.H});

  factory HR.fromJson(Map<String, dynamic> json) => _$HRFromJson(json);
  Map<String, dynamic> toJson() => _$HRToJson(this);
}

@JsonSerializable()
class RR {
  final int A;
  final int B;
  final int C;
  final int D;
  final int E;
  final int F;
  final int G;
  final int H;
  
  RR({this.A,this.B,this.C,this.D,this.E,this.F,this.G,this.H});

  factory RR.fromJson(Map<String, dynamic> json) => _$RRFromJson(json);
  Map<String, dynamic> toJson() => _$RRToJson(this);
}
