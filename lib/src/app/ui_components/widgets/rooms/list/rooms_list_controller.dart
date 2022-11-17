import 'package:get/get.dart';
import 'package:gypsy_chat/src/app/ui_components/widgets/rooms/item/room_item_controller.dart';
import 'package:gypsy_chat/src/app/ui_components/widgets/rooms/item/room_item_model.dart';

class RoomsListController extends GetxController {
  Rx<List<RoomItemController>> controllers = Rx(List<RoomItemController>.of([]));

  RoomsListController({List<RoomItemModel>? data}) {
    setData(models: data);
  }

  void setData({
    required List<RoomItemModel>? models,
  }) {
    if (models == null) {
      return;
    }

    controllers.value = List.generate(
      models.length,
      (index) => RoomItemController(model: models[index]),
    );

    refresh();
  }
}
