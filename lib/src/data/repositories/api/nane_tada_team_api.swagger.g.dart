// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nane_tada_team_api.swagger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SettingsModel _$SettingsModelFromJson(Map<String, dynamic> json) =>
    SettingsModel(
      result:
          SettingsModelResult.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SettingsModelToJson(SettingsModel instance) =>
    <String, dynamic>{
      'result': instance.result.toJson(),
    };

RoomsModel _$RoomsModelFromJson(Map<String, dynamic> json) => RoomsModel(
      result: (json['result'] as List<dynamic>)
          .map((e) => RoomsModelResultItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RoomsModelToJson(RoomsModel instance) =>
    <String, dynamic>{
      'result': instance.result.map((e) => e.toJson()).toList(),
    };

HistoryModel _$HistoryModelFromJson(Map<String, dynamic> json) => HistoryModel(
      result: (json['result'] as List<dynamic>)
          .map((e) => MessageModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$HistoryModelToJson(HistoryModel instance) =>
    <String, dynamic>{
      'result': instance.result.map((e) => e.toJson()).toList(),
    };

SettingsModelResult _$SettingsModelResultFromJson(Map<String, dynamic> json) =>
    SettingsModelResult(
      maxMessageLength: json['max_message_length'] as int,
      maxRoomTitleLength: json['max_room_title_length'] as int,
      maxUsernameLength: json['max_username_length'] as int,
      uptime: json['uptime'] as num,
    );

Map<String, dynamic> _$SettingsModelResultToJson(
        SettingsModelResult instance) =>
    <String, dynamic>{
      'max_message_length': instance.maxMessageLength,
      'max_room_title_length': instance.maxRoomTitleLength,
      'max_username_length': instance.maxUsernameLength,
      'uptime': instance.uptime,
    };

RoomsModelResultItem _$RoomsModelResultItemFromJson(
        Map<String, dynamic> json) =>
    RoomsModelResultItem(
      name: json['name'] as String?,
      lastMessage: json['last_message'] == null
          ? null
          : MessageModel.fromJson(json['last_message'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RoomsModelResultItemToJson(
        RoomsModelResultItem instance) =>
    <String, dynamic>{
      'name': instance.name,
      'last_message': instance.lastMessage?.toJson(),
    };

MessageModel _$MessageModelFromJson(Map<String, dynamic> json) => MessageModel(
      room: json['room'] as String?,
      created: json['created'] == null
          ? null
          : DateTime.parse(json['created'] as String),
      sender: json['sender'] == null
          ? null
          : MessageModel$Sender.fromJson(
              json['sender'] as Map<String, dynamic>),
      text: json['text'] as String?,
    );

Map<String, dynamic> _$MessageModelToJson(MessageModel instance) =>
    <String, dynamic>{
      'room': instance.room,
      'created': instance.created?.toIso8601String(),
      'sender': instance.sender?.toJson(),
      'text': instance.text,
    };

MessageModel$Sender _$MessageModel$SenderFromJson(Map<String, dynamic> json) =>
    MessageModel$Sender(
      username: json['username'] as String?,
    );

Map<String, dynamic> _$MessageModel$SenderToJson(
        MessageModel$Sender instance) =>
    <String, dynamic>{
      'username': instance.username,
    };
