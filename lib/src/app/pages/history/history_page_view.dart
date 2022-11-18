import 'package:flutter/cupertino.dart';
import 'package:flutter_keyboard_size/flutter_keyboard_size.dart';
import 'package:get/get.dart';
import 'package:gypsy_chat/src/app/pages/history/history_page_controller.dart';
import 'package:gypsy_chat/src/app/ui_components/widgets/history/list/history_list_view.dart';
import 'package:gypsy_chat/src/app/ui_components/widgets/sender/sender_bar_view.dart';
import 'package:ui_kit/ui_kit.dart';

class HistoryPageView extends GetView<HistoryPageController> {
  HistoryPageView({required String name, Key? key}) : super(key: key) {
    Get.put(HistoryPageController(name: name));
  }

  @override
  Widget build(BuildContext context) {
    return KeyboardSizeProvider(
      child: Padding(
        padding: const EdgeInsets.only(top: 30.0),
        child: CupertinoPageScaffold(
          //resizeToAvoidBottomInset: false,
          backgroundColor: AppColors.color1,
          navigationBar: CupertinoNavigationBar(
            middle: Text(
              controller.name,
              style: const TextStyle(
                color: AppColors.color2,
              ),
            ),
          ),
          child: Consumer<ScreenHeight>(
            builder: (context, _, child) {
              return SafeArea(
                child: DecoratedBox(
                  decoration: const BoxDecoration(color: AppColors.color4),
                  child: Column(
                    children: [
                      Flexible(
                        child: HistoryListView(
                          controller: controller.listController,
                        ),
                      ),
                      SenderBarView(controller: controller.senderController),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

/// ```dart
///  @override
///  Widget build(BuildContext context) {
///    return Consumer<Foo>(
///      builder: (_, foo, child) => FooWidget(foo: foo, child: child),
///      child: BarWidget(),
///    );
///  }
/// ```
