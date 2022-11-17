import 'package:get/get.dart';
import 'package:gypsy_chat/src/app/ui_components/widgets/rooms/item/room_item_model.dart';
import 'package:gypsy_chat/src/app/ui_components/widgets/rooms/list/rooms_list_controller.dart';
import 'package:gypsy_chat/src/data/extra/services/services.dart';
import 'package:gypsy_chat/src/data/extra/utils/date_converter.dart';
import 'package:gypsy_chat/src/data/repositories/repository/repository.dart';

class RoomsPageController extends GetxController {
  final RoomsListController roomsListController = RoomsListController();

  RoomsPageController();

  @override
  Future<void> onInit() async {
    super.onInit();

    Get.find<RepositoryService>().repository.roomsGet().then((value) {
      if (value == null) {
        return;
      }

      roomsListController.setData(
        models: List<RoomItemModel>.generate(
          value.result.length,
          (index) {
            final item = value.result[index];

            final datetime = DateConverterUtil.convertDateTime(item.lastMessage?.created);

            return RoomItemModel(
                name: item.name,
                text: item.lastMessage?.text ?? '',
                username: item.lastMessage?.sender?.username ?? '',
                datetime: datetime);
          },
        ),
      );
    });
  }
}
