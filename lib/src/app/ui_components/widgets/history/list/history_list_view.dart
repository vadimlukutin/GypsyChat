import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:gypsy_chat/src/app/ui_components/widgets/history/item/history_item_view.dart';
import 'package:gypsy_chat/src/app/ui_components/widgets/history/list/history_list_controller.dart';
import 'package:gypsy_chat/src/app/ui_components/widgets/rooms/item/room_item_controller.dart';

class HistoryListView extends StatelessWidget {
  HistoryListView({
    required this.controller,
    Key? key,
  }) : super(key: key) {
    Get.create<RoomItemController>(() {
      return RoomItemController();
    });
  }

  final HistoryListController controller;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        return ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: controller.controllers.value.length,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.only(bottom: 5),
            child: HistoryItemView(
              controller: controller.controllers.value[index],
            ),
          ),
        );
      },
    );
  }
}
