import 'package:json_annotation/json_annotation.dart';

part 'socket_user_model.g.dart';

@JsonSerializable()
class SocketUserModel {
  SocketUserModel({
    required this.username,
  });

  @JsonKey(defaultValue: '')
  final String username;

  factory SocketUserModel.fromJson(Map<String, dynamic> json) => _$SocketUserModelFromJson(json);

  Map<String, dynamic> toJson() => _$SocketUserModelToJson(this);
}
