import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:gypsy_chat/src/app/ui_components/widgets/rooms/item/room_item_controller.dart';
import 'package:ui_kit/ui_kit.dart';

class RoomItemView extends StatelessWidget {
  RoomItemView({
    required this.controller,
    Key? key,
  }) : super(key: key) {
    Get.create<RoomItemController>(() {
      return RoomItemController();
    });
  }

  final RoomItemController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Obx(
        () {
          return RoomItemWidget(
            name: controller.data.value.name ?? '',
            text: controller.data.value.text ?? '',
            username: controller.data.value.username ?? '',
            datetime: controller.data.value.datetime ?? '',
          );
        },
      ),
    );
  }
}
