import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:gypsy_chat/src/app/ui_components/widgets/sender/sender_bar_controller.dart';
import 'package:ui_kit/ui_kit.dart';

class SenderBarView extends GetView<SenderBarController> {
  SenderBarView({
    required SenderBarController controller,
    Key? key,
  }) : super(key: key) {
    Get.put(
      controller,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //height: 120,
      child: SenderWidget(
        onSendTap: controller.onSenderTap,
        textEditingController: controller.textEditingController,
      ),
    );
  }
}
