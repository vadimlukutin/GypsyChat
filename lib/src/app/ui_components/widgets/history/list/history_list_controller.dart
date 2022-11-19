import 'package:get/get.dart';
import 'package:gypsy_chat/src/app/ui_components/widgets/history/item/history_item_controller.dart';
import 'package:gypsy_chat/src/app/ui_components/widgets/history/item/history_item_model.dart';

class HistoryListController extends GetxController {
  RxList<HistoryItemController> controllers = RxList<HistoryItemController>.of([]);

  HistoryListController({List<HistoryItemModel>? data}) {
    setData(models: data);
    controllers.listen((c) {});
  }

  void setData({
    required List<HistoryItemModel>? models,
  }) {
    if (models == null) {
      return;
    }

    controllers.assignAll(
      List.generate(
        models.length,
        (index) => HistoryItemController(model: models[index]),
      ).reversed,
    );

    refresh();
  }

  void addItem(HistoryItemModel model) {
    final list = controllers.toList()..insertAll(0, [HistoryItemController(model: model)]);

    controllers.assignAll(
      list,
    );

    refresh();
  }
}
