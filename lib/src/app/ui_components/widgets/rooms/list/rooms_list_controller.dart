import 'package:get/get.dart';
import 'package:gypsy_chat/src/app/ui_components/widgets/rooms/item/room_item_controller.dart';
import 'package:gypsy_chat/src/app/ui_components/widgets/rooms/item/room_item_model.dart';

mixin RoomsListControllerDelegate {
  void onItemTap(RoomItemModel value);
}

class RoomsListController extends GetxController implements RoomItemControllerDelegate {
  RxList<RoomItemController> controllers = RxList<RoomItemController>.of([]);
  final RoomsListControllerDelegate delegate;

  RoomsListController({
    required this.delegate,
    List<RoomItemModel>? data,
  }) {
    setData(models: data);
  }

  void setData({
    required List<RoomItemModel>? models,
  }) {
    if (models == null) {
      return;
    }

    controllers.assignAll(
      List.generate(
        models.length,
        (index) => RoomItemController(
          model: models[index],
          delegate: this,
        ),
      ).reversed,
    );
  }

  @override
  void onItemTap(RoomItemModel value) {
    delegate.onItemTap(value);
  }
}
