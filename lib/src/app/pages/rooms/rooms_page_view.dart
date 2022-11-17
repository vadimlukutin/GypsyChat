import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:gypsy_chat/src/app/pages/rooms/rooms_page_controller.dart';
import 'package:gypsy_chat/src/app/ui_components/widgets/rooms/list/rooms_list_view.dart';
import 'package:ui_kit/ui_kit.dart';

class RoomsPageView extends GetView<RoomsPageController> {
  RoomsPageView({Key? key}) : super(key: key) {
    Get.put(RoomsPageController());
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0),
      child: CupertinoPageScaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: AppColors.color1,
        navigationBar: const CupertinoNavigationBar(
          middle: Text(
            'Gypsy Chat',
            style: TextStyle(
              color: AppColors.color2,
            ),
          ),
        ),
        child: SafeArea(
          child: DecoratedBox(
            decoration: const BoxDecoration(color: AppColors.color4),
            child: RoomsListView(controller: controller.roomsListController),
          ),
        ),
      ),
    );
  }
}
