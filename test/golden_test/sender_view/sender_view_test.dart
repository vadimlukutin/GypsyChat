import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:gypsy_chat/src/app/ui_components/widgets/sender/sender_bar_controller.dart';
import 'package:gypsy_chat/src/app/ui_components/widgets/sender/sender_bar_view.dart';

void main() {
  group('Sender view golden test', () {
    testGoldens('Sender widget golden test', (tester) async {
      const surfaceWidth = 500.0;
      const surfaceHeight = 60.0;

      await loadAppFonts();

      await tester.pumpWidgetBuilder(
        wrapper: materialAppWrapper(platform: TargetPlatform.iOS),
        surfaceSize: const Size(surfaceWidth, surfaceHeight),
        SenderBarView(
          controller: SenderBarController(),
        ),
      );
      await screenMatchesGolden(tester, 'sender_view_widget', autoHeight: true);
    });
  });
}
