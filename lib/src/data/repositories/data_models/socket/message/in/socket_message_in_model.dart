import 'package:gypsy_chat/src/data/repositories/data_models/socket/message/socket_user_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'socket_message_in_model.g.dart';

@JsonSerializable()
class SocketMessageInModel {
  SocketMessageInModel({
    required this.id,
    required this.room,
    required this.text,
    required this.created,
    required this.sender,
  });

  @JsonKey(defaultValue: '')
  final String id;
  @JsonKey(defaultValue: '')
  final String room;
  @JsonKey(defaultValue: '')
  final String text;
  @JsonKey(defaultValue: '')
  final String created;
  @JsonKey()
  final SocketUserModel sender;

  factory SocketMessageInModel.fromJson(Map<String, dynamic> json) =>
      _$SocketMessageInModelFromJson(json);

  Map<String, dynamic> toJson() => _$SocketMessageInModelToJson(this);
}
