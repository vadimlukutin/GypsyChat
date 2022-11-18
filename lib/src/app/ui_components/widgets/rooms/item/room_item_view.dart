import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:gypsy_chat/src/app/ui_components/widgets/rooms/item/room_item_controller.dart';
import 'package:ui_kit/ui_kit.dart';

class RoomItemView extends GetView<RoomItemController> {
  RoomItemView({
    required RoomItemController controller,
    Key? key,
  })  : tag = controller.data.hashCode.toString(),
        super(key: key) {
    Get.put(
      controller,
      tag: tag,
    );
  }

  @override
  final String tag;

  @override
  Widget build(BuildContext context) {
    final name = controller.data.value.name ?? '';

    return SizedBox(
      height: 120,
      child: Obx(
        () {
          return RoomItemWidget(
            name: name,
            text: controller.data.value.text ?? '',
            username: controller.data.value.username ?? '',
            datetime: controller.data.value.datetime ?? '',
            avatarLetter: name.isEmpty ? '' : name[0].toUpperCase(),
            onTap: controller.onTap,
          );
        },
      ),
    );
  }
}
