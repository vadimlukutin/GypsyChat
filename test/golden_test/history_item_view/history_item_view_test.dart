import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:gypsy_chat/src/app/ui_components/widgets/history/item/history_item_controller.dart';
import 'package:gypsy_chat/src/app/ui_components/widgets/history/item/history_item_model.dart';
import 'package:gypsy_chat/src/app/ui_components/widgets/history/item/history_item_view.dart';

void main() {
  group('History item view golden test', () {
    testGoldens('History list item widget golden test', (tester) async {
      const surfaceWidth = 500.0;
      const surfaceHeight = 210.0;

      await loadAppFonts();

      await tester.pumpWidgetBuilder(
        wrapper: materialAppWrapper(platform: TargetPlatform.iOS),
        surfaceSize: const Size(surfaceWidth, surfaceHeight),
        HistoryItemView(
          controller: HistoryItemController(
            model: const HistoryItemModel(
              text:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
              username: 'Kozma Prutkov',
              datetime: '2013/11/19 11:23',
            ),
          ),
        ),
      );
      await screenMatchesGolden(tester, 'history_item_view_widget', autoHeight: true);
    });
  });
}
