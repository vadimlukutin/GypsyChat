import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

mixin SenderBarControllerDelegate {
  void onSenderTap(String value);
}

class SenderBarController extends GetxController {
  SenderBarController({
    this.delegate,
  });

  final SenderBarControllerDelegate? delegate;
  final TextEditingController textEditingController = TextEditingController();

  void onSenderTap() {
    if (textEditingController.text.isEmpty) {
      return;
    }

    delegate?.onSenderTap(textEditingController.text);

    textEditingController.text = '';
  }
}
