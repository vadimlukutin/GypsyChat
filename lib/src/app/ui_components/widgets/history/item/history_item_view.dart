import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:gypsy_chat/src/app/ui_components/widgets/history/item/history_item_controller.dart';
import 'package:gypsy_chat/src/app/ui_components/widgets/rooms/item/room_item_controller.dart';
import 'package:ui_kit/ui_kit.dart';

class HistoryItemView extends StatelessWidget {
  HistoryItemView({
    required this.controller,
    Key? key,
  }) : super(key: key) {
    Get.create<HistoryItemController>(() {
      return HistoryItemController();
    });
  }

  final RoomItemController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Obx(
        () {
          return HistoryItemWidget(
            text: controller.data.value.text ?? '',
            username: controller.data.value.username ?? '',
            datetime: controller.data.value.datetime ?? '',
          );
        },
      ),
    );
  }
}
