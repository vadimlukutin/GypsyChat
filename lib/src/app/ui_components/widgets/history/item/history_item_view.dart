import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:gypsy_chat/src/app/ui_components/widgets/history/item/history_item_controller.dart';
import 'package:ui_kit/ui_kit.dart';

class HistoryItemView extends GetView<HistoryItemController> {
  HistoryItemView({
    required HistoryItemController controller,
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
    final controller = this.controller;

    return SizedBox(
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
