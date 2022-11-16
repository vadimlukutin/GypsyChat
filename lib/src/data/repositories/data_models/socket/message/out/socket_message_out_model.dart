import 'package:json_annotation/json_annotation.dart';

part 'socket_message_out_model.g.dart';

@JsonSerializable()
class SocketMessageOutModel {
  SocketMessageOutModel({
    required this.id,
    required this.room,
    required this.text,
  });

  @JsonKey(defaultValue: '')
  final String id;
  @JsonKey(defaultValue: '')
  final String room;
  @JsonKey(defaultValue: '')
  final String text;

  factory SocketMessageOutModel.fromJson(Map<String, dynamic> json) =>
      _$SocketMessageOutModelFromJson(json);

  Map<String, dynamic> toJson() => _$SocketMessageOutModelToJson(this);
}
