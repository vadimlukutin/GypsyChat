import 'package:freezed_annotation/freezed_annotation.dart';

part 'room_item_model.freezed.dart';

@freezed
class RoomItemModel with _$RoomItemModel {
  const factory RoomItemModel({
    String? name,
    String? text,
    String? username,
    String? datetime,
    String? avatarLetter,
  }) = _RoomItemModel;
}
