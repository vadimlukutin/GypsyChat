import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:gypsy_chat/src/app/ui_components/widgets/rooms/item/room_item_view.dart';
import 'package:gypsy_chat/src/app/ui_components/widgets/rooms/list/rooms_list_controller.dart';

class RoomsListView extends GetView<RoomsListController> {
  RoomsListView({
    required RoomsListController controller,
    Key? key,
  }) : super(key: key) {
    Get.put(controller);
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        return ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: controller.controllers.value.length,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.only(bottom: 5),
            child: RoomItemView(
              controller: controller.controllers.value[index],
            ),
          ),
        );
      },
    );
  }
}
