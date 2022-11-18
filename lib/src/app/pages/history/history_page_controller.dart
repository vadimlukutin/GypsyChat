import 'package:get/get.dart';
import 'package:gypsy_chat/src/app/ui_components/widgets/history/item/history_item_model.dart';
import 'package:gypsy_chat/src/app/ui_components/widgets/history/list/history_list_controller.dart';
import 'package:gypsy_chat/src/app/ui_components/widgets/sender/sender_bar_controller.dart';
import 'package:gypsy_chat/src/data/extra/services/services.dart';
import 'package:gypsy_chat/src/data/extra/utils/date_converter.dart';
import 'package:gypsy_chat/src/data/repositories/data_models/socket/message/out/socket_message_out_model.dart';
import 'package:gypsy_chat/src/data/repositories/repository/repository.dart';

class HistoryPageController extends GetxController implements SenderBarControllerDelegate {
  final HistoryListController listController = HistoryListController();
  late SenderBarController senderController;

  HistoryPageController({required this.name}) {
    Get.find<WebSocketRepositoryService>().repository.addChannel(name: name);

    senderController = SenderBarController(delegate: this);
  }

  final String name;

  @override
  void onClose() {
    Get.find<WebSocketRepositoryService>().repository.removeChannel(name: name);

    super.onClose();
  }

  @override
  Future<void> onInit() async {
    super.onInit();

    Get.find<RepositoryService>().repository.roomsNameHistoryGet(name: name).then(
      (value) {
        if (value == null) {
          return;
        }

        listController.setData(
          models: List<HistoryItemModel>.generate(
            value.result.length,
            (index) {
              final item = value.result[index];

              final datetime = DateConverterUtil.convertDateTime(item.created);

              return HistoryItemModel(
                text: item.text ?? '',
                username: item.sender?.username ?? '',
                datetime: datetime,
              );
            },
          ),
        );
      },
    );
  }

  @override
  void onSenderTap(String value) {
    Get.find<WebSocketRepositoryService>().repository.sendMessage(
          value: SocketMessageOutModel(
            id: DateTime.now().hashCode.toString(),
            text: value,
            room: name,
          ),
          channelName: name,
        );
  }
}
