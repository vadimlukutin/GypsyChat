import 'package:freezed_annotation/freezed_annotation.dart';

part 'history_item_model.freezed.dart';

@freezed
class HistoryItemModel with _$HistoryItemModel {
  const factory HistoryItemModel({
    String? text,
    String? username,
    String? datetime,
  }) = _HistoryItemModel;
}
