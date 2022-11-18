import 'package:get/get.dart';
import 'package:gypsy_chat/src/app/ui_components/widgets/rooms/item/room_item_model.dart';

mixin RoomItemControllerDelegate {
  void onItemTap(RoomItemModel value);
}

class RoomItemController extends GetxController {
  final Rx<RoomItemModel> data = Rx(const RoomItemModel());
  final RoomItemControllerDelegate? delegate;

  RoomItemController({
    this.delegate,
    RoomItemModel? model,
  }) {
    if (model != null) {
      setData(model: model);
    }
  }

  void setData({required RoomItemModel model}) {
    data.value = model;

    refresh();
  }

  void onTap() {
    delegate?.onItemTap(data.value);
  }
}
