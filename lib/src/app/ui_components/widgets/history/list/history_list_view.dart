import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:gypsy_chat/src/app/ui_components/widgets/history/item/history_item_view.dart';
import 'package:gypsy_chat/src/app/ui_components/widgets/history/list/history_list_controller.dart';

class HistoryListView extends GetView<HistoryListController> {
  HistoryListView({
    required HistoryListController controller,
    Key? key,
  }) : super(key: key) {
    Get.put(controller);
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        return ListView.builder(
          reverse: true,
          itemCount: controller.controllers.length,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.only(bottom: 5),
            child: HistoryItemView(
              controller: controller.controllers[index],
            ),
          ),
        );
      },
    );
  }
}
