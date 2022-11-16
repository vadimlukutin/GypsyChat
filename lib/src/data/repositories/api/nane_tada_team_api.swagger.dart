// ignore_for_file: type=lint

import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';
import 'dart:convert';

import 'package:chopper/chopper.dart';

import 'client_mapping.dart';
import 'dart:async';
import 'package:chopper/chopper.dart' as chopper;

part 'nane_tada_team_api.swagger.chopper.dart';
part 'nane_tada_team_api.swagger.g.dart';

// **************************************************************************
// SwaggerChopperGenerator
// **************************************************************************

@ChopperApi()
abstract class NaneTadaTeamApi extends ChopperService {
  static NaneTadaTeamApi create({
    ChopperClient? client,
    Authenticator? authenticator,
    String? baseUrl,
    Iterable<dynamic>? interceptors,
  }) {
    if (client != null) {
      return _$NaneTadaTeamApi(client);
    }

    final newClient = ChopperClient(
        services: [_$NaneTadaTeamApi()],
        converter: $JsonSerializableConverter(),
        interceptors: interceptors ?? [],
        authenticator: authenticator,
        baseUrl: baseUrl ?? 'http://');
    return _$NaneTadaTeamApi(newClient);
  }

  ///Nane tada team settings
  Future<chopper.Response<SettingsModel>> settingsGet() {
    generatedMapping.putIfAbsent(
        SettingsModel, () => SettingsModel.fromJsonFactory);

    return _settingsGet();
  }

  ///Nane tada team settings
  @Get(path: '/settings')
  Future<chopper.Response<SettingsModel>> _settingsGet();

  ///Nane tada team rooms
  Future<chopper.Response<RoomsModel>> roomsGet() {
    generatedMapping.putIfAbsent(RoomsModel, () => RoomsModel.fromJsonFactory);

    return _roomsGet();
  }

  ///Nane tada team rooms
  @Get(path: '/rooms')
  Future<chopper.Response<RoomsModel>> _roomsGet();

  ///Nane tada team room history
  ///@param name
  Future<chopper.Response<HistoryModel>> roomsNameHistoryGet(
      {required String? name}) {
    generatedMapping.putIfAbsent(
        HistoryModel, () => HistoryModel.fromJsonFactory);

    return _roomsNameHistoryGet(name: name);
  }

  ///Nane tada team room history
  ///@param name
  @Get(path: '/rooms/{name}/history')
  Future<chopper.Response<HistoryModel>> _roomsNameHistoryGet(
      {@Path('name') required String? name});
}

@JsonSerializable(explicitToJson: true)
class SettingsModel {
  SettingsModel({
    required this.result,
  });

  factory SettingsModel.fromJson(Map<String, dynamic> json) =>
      _$SettingsModelFromJson(json);

  @JsonKey(name: 'result')
  final SettingsModelResult result;
  static const fromJsonFactory = _$SettingsModelFromJson;
  static const toJsonFactory = _$SettingsModelToJson;
  Map<String, dynamic> toJson() => _$SettingsModelToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SettingsModel &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(result) ^ runtimeType.hashCode;
}

extension $SettingsModelExtension on SettingsModel {
  SettingsModel copyWith({SettingsModelResult? result}) {
    return SettingsModel(result: result ?? this.result);
  }

  SettingsModel copyWithWrapped({Wrapped<SettingsModelResult>? result}) {
    return SettingsModel(result: (result != null ? result.value : this.result));
  }
}

@JsonSerializable(explicitToJson: true)
class RoomsModel {
  RoomsModel({
    required this.result,
  });

  factory RoomsModel.fromJson(Map<String, dynamic> json) =>
      _$RoomsModelFromJson(json);

  @JsonKey(name: 'result')
  final List<RoomsModelResultItem> result;
  static const fromJsonFactory = _$RoomsModelFromJson;
  static const toJsonFactory = _$RoomsModelToJson;
  Map<String, dynamic> toJson() => _$RoomsModelToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RoomsModel &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(result) ^ runtimeType.hashCode;
}

extension $RoomsModelExtension on RoomsModel {
  RoomsModel copyWith({List<RoomsModelResultItem>? result}) {
    return RoomsModel(result: result ?? this.result);
  }

  RoomsModel copyWithWrapped({Wrapped<List<RoomsModelResultItem>>? result}) {
    return RoomsModel(result: (result != null ? result.value : this.result));
  }
}

@JsonSerializable(explicitToJson: true)
class HistoryModel {
  HistoryModel({
    required this.result,
  });

  factory HistoryModel.fromJson(Map<String, dynamic> json) =>
      _$HistoryModelFromJson(json);

  @JsonKey(name: 'result')
  final List<MessageModel> result;
  static const fromJsonFactory = _$HistoryModelFromJson;
  static const toJsonFactory = _$HistoryModelToJson;
  Map<String, dynamic> toJson() => _$HistoryModelToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is HistoryModel &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(result) ^ runtimeType.hashCode;
}

extension $HistoryModelExtension on HistoryModel {
  HistoryModel copyWith({List<MessageModel>? result}) {
    return HistoryModel(result: result ?? this.result);
  }

  HistoryModel copyWithWrapped({Wrapped<List<MessageModel>>? result}) {
    return HistoryModel(result: (result != null ? result.value : this.result));
  }
}

@JsonSerializable(explicitToJson: true)
class SettingsModelResult {
  SettingsModelResult({
    required this.maxMessageLength,
    required this.maxRoomTitleLength,
    required this.maxUsernameLength,
    required this.uptime,
  });

  factory SettingsModelResult.fromJson(Map<String, dynamic> json) =>
      _$SettingsModelResultFromJson(json);

  @JsonKey(name: 'max_message_length')
  final int maxMessageLength;
  @JsonKey(name: 'max_room_title_length')
  final int maxRoomTitleLength;
  @JsonKey(name: 'max_username_length')
  final int maxUsernameLength;
  @JsonKey(name: 'uptime')
  final num uptime;
  static const fromJsonFactory = _$SettingsModelResultFromJson;
  static const toJsonFactory = _$SettingsModelResultToJson;
  Map<String, dynamic> toJson() => _$SettingsModelResultToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SettingsModelResult &&
            (identical(other.maxMessageLength, maxMessageLength) ||
                const DeepCollectionEquality()
                    .equals(other.maxMessageLength, maxMessageLength)) &&
            (identical(other.maxRoomTitleLength, maxRoomTitleLength) ||
                const DeepCollectionEquality()
                    .equals(other.maxRoomTitleLength, maxRoomTitleLength)) &&
            (identical(other.maxUsernameLength, maxUsernameLength) ||
                const DeepCollectionEquality()
                    .equals(other.maxUsernameLength, maxUsernameLength)) &&
            (identical(other.uptime, uptime) ||
                const DeepCollectionEquality().equals(other.uptime, uptime)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(maxMessageLength) ^
      const DeepCollectionEquality().hash(maxRoomTitleLength) ^
      const DeepCollectionEquality().hash(maxUsernameLength) ^
      const DeepCollectionEquality().hash(uptime) ^
      runtimeType.hashCode;
}

extension $SettingsModelResultExtension on SettingsModelResult {
  SettingsModelResult copyWith(
      {int? maxMessageLength,
      int? maxRoomTitleLength,
      int? maxUsernameLength,
      num? uptime}) {
    return SettingsModelResult(
        maxMessageLength: maxMessageLength ?? this.maxMessageLength,
        maxRoomTitleLength: maxRoomTitleLength ?? this.maxRoomTitleLength,
        maxUsernameLength: maxUsernameLength ?? this.maxUsernameLength,
        uptime: uptime ?? this.uptime);
  }

  SettingsModelResult copyWithWrapped(
      {Wrapped<int>? maxMessageLength,
      Wrapped<int>? maxRoomTitleLength,
      Wrapped<int>? maxUsernameLength,
      Wrapped<num>? uptime}) {
    return SettingsModelResult(
        maxMessageLength: (maxMessageLength != null
            ? maxMessageLength.value
            : this.maxMessageLength),
        maxRoomTitleLength: (maxRoomTitleLength != null
            ? maxRoomTitleLength.value
            : this.maxRoomTitleLength),
        maxUsernameLength: (maxUsernameLength != null
            ? maxUsernameLength.value
            : this.maxUsernameLength),
        uptime: (uptime != null ? uptime.value : this.uptime));
  }
}

typedef RoomsModelResult = List<RoomsModelResultItem>;
typedef HistoryModelResult = List<MessageModel>;

@JsonSerializable(explicitToJson: true)
class RoomsModelResultItem {
  RoomsModelResultItem({
    this.name,
    this.lastMessage,
  });

  factory RoomsModelResultItem.fromJson(Map<String, dynamic> json) =>
      _$RoomsModelResultItemFromJson(json);

  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'last_message')
  final MessageModel? lastMessage;
  static const fromJsonFactory = _$RoomsModelResultItemFromJson;
  static const toJsonFactory = _$RoomsModelResultItemToJson;
  Map<String, dynamic> toJson() => _$RoomsModelResultItemToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RoomsModelResultItem &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.lastMessage, lastMessage) ||
                const DeepCollectionEquality()
                    .equals(other.lastMessage, lastMessage)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(lastMessage) ^
      runtimeType.hashCode;
}

extension $RoomsModelResultItemExtension on RoomsModelResultItem {
  RoomsModelResultItem copyWith({String? name, MessageModel? lastMessage}) {
    return RoomsModelResultItem(
        name: name ?? this.name, lastMessage: lastMessage ?? this.lastMessage);
  }

  RoomsModelResultItem copyWithWrapped(
      {Wrapped<String?>? name, Wrapped<MessageModel?>? lastMessage}) {
    return RoomsModelResultItem(
        name: (name != null ? name.value : this.name),
        lastMessage:
            (lastMessage != null ? lastMessage.value : this.lastMessage));
  }
}

@JsonSerializable(explicitToJson: true)
class MessageModel {
  MessageModel({
    this.room,
    this.created,
    this.sender,
    this.text,
  });

  factory MessageModel.fromJson(Map<String, dynamic> json) =>
      _$MessageModelFromJson(json);

  @JsonKey(name: 'room')
  final String? room;
  @JsonKey(name: 'created')
  final DateTime? created;
  @JsonKey(name: 'sender')
  final MessageModel$Sender? sender;
  @JsonKey(name: 'text')
  final String? text;
  static const fromJsonFactory = _$MessageModelFromJson;
  static const toJsonFactory = _$MessageModelToJson;
  Map<String, dynamic> toJson() => _$MessageModelToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MessageModel &&
            (identical(other.room, room) ||
                const DeepCollectionEquality().equals(other.room, room)) &&
            (identical(other.created, created) ||
                const DeepCollectionEquality()
                    .equals(other.created, created)) &&
            (identical(other.sender, sender) ||
                const DeepCollectionEquality().equals(other.sender, sender)) &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(room) ^
      const DeepCollectionEquality().hash(created) ^
      const DeepCollectionEquality().hash(sender) ^
      const DeepCollectionEquality().hash(text) ^
      runtimeType.hashCode;
}

extension $MessageModelExtension on MessageModel {
  MessageModel copyWith(
      {String? room,
      DateTime? created,
      MessageModel$Sender? sender,
      String? text}) {
    return MessageModel(
        room: room ?? this.room,
        created: created ?? this.created,
        sender: sender ?? this.sender,
        text: text ?? this.text);
  }

  MessageModel copyWithWrapped(
      {Wrapped<String?>? room,
      Wrapped<DateTime?>? created,
      Wrapped<MessageModel$Sender?>? sender,
      Wrapped<String?>? text}) {
    return MessageModel(
        room: (room != null ? room.value : this.room),
        created: (created != null ? created.value : this.created),
        sender: (sender != null ? sender.value : this.sender),
        text: (text != null ? text.value : this.text));
  }
}

@JsonSerializable(explicitToJson: true)
class MessageModel$Sender {
  MessageModel$Sender({
    this.username,
  });

  factory MessageModel$Sender.fromJson(Map<String, dynamic> json) =>
      _$MessageModel$SenderFromJson(json);

  @JsonKey(name: 'username')
  final String? username;
  static const fromJsonFactory = _$MessageModel$SenderFromJson;
  static const toJsonFactory = _$MessageModel$SenderToJson;
  Map<String, dynamic> toJson() => _$MessageModel$SenderToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MessageModel$Sender &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(username) ^ runtimeType.hashCode;
}

extension $MessageModel$SenderExtension on MessageModel$Sender {
  MessageModel$Sender copyWith({String? username}) {
    return MessageModel$Sender(username: username ?? this.username);
  }

  MessageModel$Sender copyWithWrapped({Wrapped<String?>? username}) {
    return MessageModel$Sender(
        username: (username != null ? username.value : this.username));
  }
}

typedef $JsonFactory<T> = T Function(Map<String, dynamic> json);

class $CustomJsonDecoder {
  $CustomJsonDecoder(this.factories);

  final Map<Type, $JsonFactory> factories;

  dynamic decode<T>(dynamic entity) {
    if (entity is Iterable) {
      return _decodeList<T>(entity);
    }

    if (entity is T) {
      return entity;
    }

    if (isTypeOf<T, Map>()) {
      return entity;
    }

    if (isTypeOf<T, Iterable>()) {
      return entity;
    }

    if (entity is Map<String, dynamic>) {
      return _decodeMap<T>(entity);
    }

    return entity;
  }

  T _decodeMap<T>(Map<String, dynamic> values) {
    final jsonFactory = factories[T];
    if (jsonFactory == null || jsonFactory is! $JsonFactory<T>) {
      return throw "Could not find factory for type $T. Is '$T: $T.fromJsonFactory' included in the CustomJsonDecoder instance creation in bootstrapper.dart?";
    }

    return jsonFactory(values);
  }

  List<T> _decodeList<T>(Iterable values) =>
      values.where((v) => v != null).map<T>((v) => decode<T>(v) as T).toList();
}

class $JsonSerializableConverter extends chopper.JsonConverter {
  @override
  FutureOr<chopper.Response<ResultType>> convertResponse<ResultType, Item>(
      chopper.Response response) async {
    if (response.bodyString.isEmpty) {
      // In rare cases, when let's say 204 (no content) is returned -
      // we cannot decode the missing json with the result type specified
      return chopper.Response(response.base, null, error: response.error);
    }

    final jsonRes = await super.convertResponse(response);
    return jsonRes.copyWith<ResultType>(
        body: $jsonDecoder.decode<Item>(jsonRes.body) as ResultType);
  }
}

final $jsonDecoder = $CustomJsonDecoder(generatedMapping);

// ignore: unused_element
String? _dateToJson(DateTime? date) {
  if (date == null) {
    return null;
  }

  final year = date.year.toString();
  final month = date.month < 10 ? '0${date.month}' : date.month.toString();
  final day = date.day < 10 ? '0${date.day}' : date.day.toString();

  return '$year-$month-$day';
}

class Wrapped<T> {
  final T value;
  const Wrapped.value(this.value);
}
