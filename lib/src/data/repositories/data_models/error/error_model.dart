import 'package:json_annotation/json_annotation.dart';

part 'error_model.g.dart';

@JsonSerializable()
class ErrorModel {

  ErrorModel({
    required this.message,
    required this.status,
    this.errors,
  });

  @JsonKey(defaultValue: 404)
  final int status;
  @JsonKey(defaultValue: 'API Error')
  final String message;
  @JsonKey(required: false, defaultValue: {})
  final Map<String, dynamic>? errors;

  factory ErrorModel.fromJson(Map<String, dynamic> json) => _$ErrorModelFromJson(json);

  Map<String, dynamic> toJson() => _$ErrorModelToJson(this);
}