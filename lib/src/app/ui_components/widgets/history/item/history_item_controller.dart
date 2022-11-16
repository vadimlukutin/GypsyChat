import 'package:get/get.dart';
import 'package:gypsy_chat/src/app/ui_components/widgets/history/item/history_item_model.dart';

class HistoryItemController extends GetxController {
  final Rx<HistoryItemModel> data = Rx(const HistoryItemModel());

  HistoryItemController({HistoryItemModel? model}) {
    if (model != null) {
      setData(model: model);
    }
  }

  void setData({required HistoryItemModel model}) {
    data.value = model;

    refresh();
  }
}
