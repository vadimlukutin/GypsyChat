import 'package:get/get.dart';
import 'package:gypsy_chat/src/app/ui_components/widgets/history/item/history_item_controller.dart';
import 'package:gypsy_chat/src/app/ui_components/widgets/history/item/history_item_model.dart';

class HistoryListController extends GetxController {
  Rx<List<HistoryItemController>> controllers = Rx(List<HistoryItemController>.of([]));

  HistoryListController({List<HistoryItemModel>? data}) {
    setData(models: data);
  }

  void setData({
    required List<HistoryItemModel>? models,
  }) {
    if (models == null) {
      return;
    }

    controllers.value = List.generate(
      models.length,
      (index) => HistoryItemController(model: models[index]),
    );

    refresh();
  }
}
