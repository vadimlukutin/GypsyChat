import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:gypsy_chat/src/app/pages/history/history_page_controller.dart';
import 'package:gypsy_chat/src/app/ui_components/widgets/history/list/history_list_view.dart';
import 'package:ui_kit/ui_kit.dart';

class HistoryPageView extends GetView<HistoryPageController> {
  HistoryPageView({required String name, Key? key}) : super(key: key) {
    Get.put(HistoryPageController(name: name));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0),
      child: CupertinoPageScaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: AppColors.color1,
        navigationBar: CupertinoNavigationBar(
          middle: Text(
            controller.name,
            style: const TextStyle(
              color: AppColors.color2,
            ),
          ),
        ),
        child: SafeArea(
          child: DecoratedBox(
            decoration: const BoxDecoration(color: AppColors.color4),
            child: HistoryListView(controller: controller.listController),
          ),
        ),
      ),
    );
  }
}
