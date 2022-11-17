import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:gypsy_chat/src/app/ui_components/widgets/rooms/item/room_item_controller.dart';
import 'package:gypsy_chat/src/app/ui_components/widgets/rooms/item/room_item_view.dart';
import 'package:gypsy_chat/src/app/ui_components/widgets/rooms/list/rooms_list_controller.dart';

class RoomsListView extends StatelessWidget {
  RoomsListView({
    required this.controller,
    Key? key,
  }) : super(key: key) {
    Get.create<RoomItemController>(() {
      return RoomItemController();
    });
  }

  final RoomsListController controller;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        return ListView.builder(
          scrollDirection: Axis.horizontal,
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
